//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef TOP_REFERENCE_MODEL_SV
`define TOP_REFERENCE_MODEL_SV
typedef class top_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    top_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="gmem0") refm.mem_blk_pages_gmem0.read_elems_pipepage(data, addr, len);
        if(memid=="gmem1") refm.mem_blk_pages_gmem1.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class top_reference_model extends uvm_component;
`define TV_IN_gmem0 "../tv/cdatafile/c.top.autotvin_gmem0.dat"
`define TV_OUT_gmem0 "../tv/rtldatafile/rtl.top.autotvout_gmem0.dat"
`define TV_IN_OFFSET_input_r "../tv/cdatafile/c.top.autotvin_input_r.dat"
`define TV_IN_OFFSET_outputConv "../tv/cdatafile/c.top.autotvin_outputConv.dat"
`define TV_IN_OFFSET_outputPool "../tv/cdatafile/c.top.autotvin_outputPool.dat"
`define TV_IN_OFFSET_outputConv2 "../tv/cdatafile/c.top.autotvin_outputConv2.dat"
`define TV_IN_OFFSET_outputPool2 "../tv/cdatafile/c.top.autotvin_outputPool2.dat"
`define TV_IN_OFFSET_outputDense "../tv/cdatafile/c.top.autotvin_outputDense.dat"
`define TV_IN_gmem1 "../tv/cdatafile/c.top.autotvin_gmem1.dat"
`define TV_OUT_gmem1 "../tv/rtldatafile/rtl.top.autotvout_gmem1.dat"
`define TV_IN_OFFSET_weight "../tv/cdatafile/c.top.autotvin_weight.dat"
`define TV_IN_OFFSET_bias "../tv/cdatafile/c.top.autotvin_bias.dat"
`define TV_IN_OFFSET_weight2 "../tv/cdatafile/c.top.autotvin_weight2.dat"
`define TV_IN_OFFSET_bias2 "../tv/cdatafile/c.top.autotvin_bias2.dat"
`define TV_IN_OFFSET_fcWeight "../tv/cdatafile/c.top.autotvin_fcWeight.dat"
`define TV_IN_OFFSET_fcBias "../tv/cdatafile/c.top.autotvin_fcBias.dat"
`define TV_IN_input_r "../tv/cdatafile/c.top.autotvin_input_r.dat"
`define TV_OUT_input_r ""
`define TV_IN_outputConv "../tv/cdatafile/c.top.autotvin_outputConv.dat"
`define TV_OUT_outputConv ""
`define TV_IN_weight "../tv/cdatafile/c.top.autotvin_weight.dat"
`define TV_OUT_weight ""
`define TV_IN_bias "../tv/cdatafile/c.top.autotvin_bias.dat"
`define TV_OUT_bias ""
`define TV_IN_outputPool "../tv/cdatafile/c.top.autotvin_outputPool.dat"
`define TV_OUT_outputPool ""
`define TV_IN_weight2 "../tv/cdatafile/c.top.autotvin_weight2.dat"
`define TV_OUT_weight2 ""
`define TV_IN_bias2 "../tv/cdatafile/c.top.autotvin_bias2.dat"
`define TV_OUT_bias2 ""
`define TV_IN_outputConv2 "../tv/cdatafile/c.top.autotvin_outputConv2.dat"
`define TV_OUT_outputConv2 ""
`define TV_IN_outputPool2 "../tv/cdatafile/c.top.autotvin_outputPool2.dat"
`define TV_OUT_outputPool2 ""
`define TV_IN_outputDense "../tv/cdatafile/c.top.autotvin_outputDense.dat"
`define TV_OUT_outputDense ""
`define TV_IN_fcWeight "../tv/cdatafile/c.top.autotvin_fcWeight.dat"
`define TV_OUT_fcWeight ""
`define TV_IN_fcBias "../tv/cdatafile/c.top.autotvin_fcBias.dat"
`define TV_OUT_fcBias ""
    bit  write_data_finish_control;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 50;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    top_config top_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(8,8) mem_blk_pages_gmem0;
    int blk_id_gmem0 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem0;

    mem_model_pages_with_diffofst#(8,8) mem_blk_pages_gmem1;
    int blk_id_gmem1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem1;

    
    `uvm_component_utils_begin(top_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_gmem0 = new;
        axi_memaccess_cb_gmem0.refm = this;
        axi_memaccess_cb_gmem0.memid = "gmem0";
        axi_memaccess_cb_gmem1 = new;
        axi_memaccess_cb_gmem1.refm = this;
        axi_memaccess_cb_gmem1.memid = "gmem1";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;
        fpath.push_back(`TV_IN_gmem0);
        mem_blk_pages_gmem0 = mem_model_pages_with_diffofst#(8,8)::type_id::create("mem_blk_pages_gmem0");
        mem_blk_pages_gmem0.whole_page_size=12944;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["input_r"]=`TV_IN_OFFSET_input_r;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["outputConv"]=`TV_IN_OFFSET_outputConv;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["outputPool"]=`TV_IN_OFFSET_outputPool;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["outputConv2"]=`TV_IN_OFFSET_outputConv2;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["outputPool2"]=`TV_IN_OFFSET_outputPool2;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["outputDense"]=`TV_IN_OFFSET_outputDense;
        mem_blk_pages_gmem0.set_binary(1);
        mem_blk_pages_gmem0.tvinload_pagechk_atinit(fpath, 12928*((8+7)/8), 0, 0);
        mem_blk_pages_gmem0.tvoutdump_atinit(`TV_OUT_gmem0);
        fpath.delete();

        fpath.push_back(`TV_IN_gmem1);
        mem_blk_pages_gmem1 = mem_model_pages_with_diffofst#(8,8)::type_id::create("mem_blk_pages_gmem1");
        mem_blk_pages_gmem1.whole_page_size=9464;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["weight"]=`TV_IN_OFFSET_weight;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["bias"]=`TV_IN_OFFSET_bias;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["weight2"]=`TV_IN_OFFSET_weight2;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["bias2"]=`TV_IN_OFFSET_bias2;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["fcWeight"]=`TV_IN_OFFSET_fcWeight;
        mem_blk_pages_gmem1.maxi_bundlevar_fpath["fcBias"]=`TV_IN_OFFSET_fcBias;
        mem_blk_pages_gmem1.set_binary(1);
        mem_blk_pages_gmem1.tvinload_pagechk_atinit(fpath, 9448*((8+7)/8), 0, 0);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<50; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_gmem0.incr_rd_page_idx() ;
                mem_blk_pages_gmem1.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_gmem0(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem0.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem0(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_gmem1(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
        end
    endfunction
endclass
`endif

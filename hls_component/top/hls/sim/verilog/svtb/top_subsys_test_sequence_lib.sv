//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef TOP_SUBSYS_TEST_SEQUENCE_LIB__SV                                              
    `define TOP_SUBSYS_TEST_SEQUENCE_LIB__SV                                          
                                                                                                    
                                                                                                    
    `include "uvm_macros.svh"                                                                     
                                                                                                    
    class top_subsys_test_sequence_lib extends uvm_sequence;                                
                                                                                                    
        function new (string name = "top_subsys_test_sequence_lib");                      
            super.new(name);                                                                        
            `uvm_info(this.get_full_name(), "new is called", UVM_LOW)                             
        endfunction                                                                                 
                                                                                                    
        `uvm_object_utils(top_subsys_test_sequence_lib)                                     
        `uvm_declare_p_sequencer(top_virtual_sequencer)                                     
                                                                                                    
        virtual task body();                                                                        
            uvm_phase starting_phase;                                                               
            virtual interface misc_interface misc_if;                                               
            top_reference_model refm;                                                       
                                                                                                    
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_gmem0_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_gmem1_seq;
            axi_pkg::axi_busdatas_master_sequence#(8, 32) axi_master_wr_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(8, 32) axi_master_poll_control_seq;

            if (!uvm_config_db#(top_reference_model)::get(p_sequencer,"", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No reference model")
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_LOW)

            `uvm_info(this.get_full_name(), "body is called", UVM_LOW)
            starting_phase = this.get_starting_phase();
            if (starting_phase != null) begin
                `uvm_info(this.get_full_name(), "starting_phase not null", UVM_LOW)
                starting_phase.raise_objection(this);
            end
            else
                `uvm_info(this.get_full_name(), "starting_phase null" , UVM_LOW)

            misc_if = refm.misc_if;


            //phase_done.set_drain_time(this, 0ns);
            wait(refm.misc_if.reset === 1);
            ->refm.misc_if.initialed_evt;

            fork
                begin
                    fork
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem0_seq, p_sequencer.gmem0_sqr);
                            axi_slave_gmem0_seq.misc_if = refm.misc_if;
                            axi_slave_gmem0_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem0_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem0_seq.finish     = refm.finish ;
                            axi_slave_gmem0_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem0_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem1_seq, p_sequencer.gmem1_sqr);
                            axi_slave_gmem1_seq.misc_if = refm.misc_if;
                            axi_slave_gmem1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem1_seq.finish     = refm.finish ;
                            axi_slave_gmem1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem1_seq);
                        end
                        begin
                            int control_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_seq, p_sequencer.control_sqr);
                            axi_master_wr_control_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_seq.finish     = refm.finish ;
                            axi_master_wr_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<50; i++) begin
                                logic[63:0] data64bit_input_r[$];
                                logic[32-1:0] databusbit_input_r[$];
                                logic[63:0] data64bit_outputConv[$];
                                logic[32-1:0] databusbit_outputConv[$];
                                logic[63:0] data64bit_weight[$];
                                logic[32-1:0] databusbit_weight[$];
                                logic[63:0] data64bit_bias[$];
                                logic[32-1:0] databusbit_bias[$];
                                logic[63:0] data64bit_outputPool[$];
                                logic[32-1:0] databusbit_outputPool[$];
                                logic[63:0] data64bit_weight2[$];
                                logic[32-1:0] databusbit_weight2[$];
                                logic[63:0] data64bit_bias2[$];
                                logic[32-1:0] databusbit_bias2[$];
                                logic[63:0] data64bit_outputConv2[$];
                                logic[32-1:0] databusbit_outputConv2[$];
                                logic[63:0] data64bit_outputPool2[$];
                                logic[32-1:0] databusbit_outputPool2[$];
                                logic[63:0] data64bit_outputDense[$];
                                logic[32-1:0] databusbit_outputDense[$];
                                logic[63:0] data64bit_fcWeight[$];
                                logic[32-1:0] databusbit_fcWeight[$];
                                logic[63:0] data64bit_fcBias[$];
                                logic[32-1:0] databusbit_fcBias[$];
                                data64bit_input_r.delete(); databusbit_input_r.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_input_r.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["input_r"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_input_r[s]) databusbit_input_r[s]=data64bit_input_r[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_input_r, 0, 16, 1);
                                data64bit_outputConv.delete(); databusbit_outputConv.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_outputConv.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["outputConv"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_outputConv[s]) databusbit_outputConv[s]=data64bit_outputConv[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_outputConv, 0, 28, 1);
                                data64bit_weight.delete(); databusbit_weight.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_weight.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["weight"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_weight[s]) databusbit_weight[s]=data64bit_weight[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_weight, 0, 40, 1);
                                data64bit_bias.delete(); databusbit_bias.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_bias.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["bias"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_bias[s]) databusbit_bias[s]=data64bit_bias[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_bias, 0, 52, 1);
                                data64bit_outputPool.delete(); databusbit_outputPool.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_outputPool.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["outputPool"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_outputPool[s]) databusbit_outputPool[s]=data64bit_outputPool[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_outputPool, 0, 64, 1);
                                data64bit_weight2.delete(); databusbit_weight2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_weight2.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["weight2"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_weight2[s]) databusbit_weight2[s]=data64bit_weight2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_weight2, 0, 76, 1);
                                data64bit_bias2.delete(); databusbit_bias2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_bias2.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["bias2"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_bias2[s]) databusbit_bias2[s]=data64bit_bias2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_bias2, 0, 88, 1);
                                data64bit_outputConv2.delete(); databusbit_outputConv2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_outputConv2.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["outputConv2"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_outputConv2[s]) databusbit_outputConv2[s]=data64bit_outputConv2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_outputConv2, 0, 100, 1);
                                data64bit_outputPool2.delete(); databusbit_outputPool2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_outputPool2.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["outputPool2"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_outputPool2[s]) databusbit_outputPool2[s]=data64bit_outputPool2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_outputPool2, 0, 112, 1);
                                data64bit_outputDense.delete(); databusbit_outputDense.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_outputDense.push_back( ((refm.mem_blk_pages_gmem0.maxi_bundlevar_offset["outputDense"]+refm.mem_blk_pages_gmem0.page_ofst[refm.mem_blk_pages_gmem0.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_outputDense[s]) databusbit_outputDense[s]=data64bit_outputDense[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_outputDense, 0, 124, 1);
                                data64bit_fcWeight.delete(); databusbit_fcWeight.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_fcWeight.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["fcWeight"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_fcWeight[s]) databusbit_fcWeight[s]=data64bit_fcWeight[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_fcWeight, 0, 136, 1);
                                data64bit_fcBias.delete(); databusbit_fcBias.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_fcBias.push_back( ((refm.mem_blk_pages_gmem1.maxi_bundlevar_offset["fcBias"]+refm.mem_blk_pages_gmem1.page_ofst[refm.mem_blk_pages_gmem1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_fcBias[s]) databusbit_fcBias[s]=data64bit_fcBias[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_fcBias, 0, 148, 1);
                                `uvm_send(axi_master_wr_control_seq);
                                refm.write_data_finish_control = 1;
                                `uvm_info("control data writting thread", $sformatf("%0dth(total 50): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_control = 0;
                                fork
                                    begin // configure start to enable DUT
                                        axi_master_wr_control_seq.wr_addr_data.push_back( (1<<0)+(0<<32) );
                                        `uvm_info("control start dut by axilite", $sformatf("%0dth(total 50): begin to set start bit",i), UVM_LOW)
                                        `uvm_send(axi_master_wr_control_seq);
                                    end
                                    begin
                                        `uvm_info("control wait for ap_ready for next trans", $sformatf("%0dth(total 50): begin to wait",i), UVM_LOW)
                                        wait(refm.dut2tb_ap_ready.triggered);
                                        wait(refm.ap_done_for_nexttrans.triggered);
                                        #0.01; //make sure mem incr_rd_page_idx is called first
                                    end
                                join
                            end
                        end
                        begin
                            for(int j=0; j<50; j=j+refm.ap_done_cnt) begin
                                wait(misc_if.dut2tb_ap_done_kernel == 1);
                                `uvm_info("test finish control", $sformatf("ap_done of kernel is triggered"), UVM_LOW)
                                @(posedge misc_if.clock);
                                fork
                                    forever begin
                                        `uvm_create_on(axi_master_poll_control_seq, p_sequencer.control_sqr);
                                        axi_master_poll_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                                        axi_master_poll_control_seq.misc_if = refm.misc_if;
                                        axi_master_poll_control_seq.rd_addr.push_back(0);
                                        `uvm_send(axi_master_poll_control_seq)
                                        repeat(2) @(posedge misc_if.clock);
                                    end
                                    begin
                                        `uvm_info("test finish control", $sformatf("%0dth(total 50) ap_done_for_nexttrans begin to wait",j), UVM_LOW)
                                        @refm.dut2tb_ap_done;
                                    end
                                join_any
                                disable fork;
                                wait(refm.ap_ready_for_nexttrans.triggered);
                            end
                        end
                    join
                end

                begin
                    for(int j=0; j<50; j=j+refm.ap_done_cnt) @refm.ap_done_for_nexttrans;
                    `uvm_info(this.get_full_name(), "autotb finished", UVM_LOW)
                    -> refm.finish;
                    refm.misc_if.finished = 1;
                    @(posedge refm.misc_if.clock);
                    refm.misc_if.finished = 0;
                    @(posedge refm.misc_if.clock);
                    -> refm.misc_if.finished_evt;
                end
            join_any
            repeat(5) @(posedge refm.misc_if.clock); //5 cycles delay for finish stuff. 5 is haphazard value

            p_sequencer.gmem0_sqr.stop_sequences();
            p_sequencer.gmem1_sqr.stop_sequences();
            p_sequencer.control_sqr.stop_sequences();
            disable fork;
                                                                                                    
            starting_phase.drop_objection(this);                                                    
                                                                                                    
        endtask                                                                                     
    endclass                                                                                        
                                                                                                    
`endif                                                                                              

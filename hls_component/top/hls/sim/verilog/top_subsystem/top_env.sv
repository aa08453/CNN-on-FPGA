//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef TOP_ENV__SV                                                                                   
    `define TOP_ENV__SV                                                                               
                                                                                                                    
    class axi_latency_gmem0 extends axi_latency;
        rand int    wctrl_latency;
        rand int    wdata_latency;
        rand int    wbrsp_latency;
        rand int    rctrl_latency;
        rand int    rdata_latency;
        `uvm_object_utils_begin(axi_latency_gmem0)
        `uvm_object_utils_end
        function new ( string name = "axi_latency_gmem0" );
            super.new(name);
        endfunction
        virtual function int get_wctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wctrl_latency = delay;
            return wctrl_latency;
        endfunction
        virtual function int get_wdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wdata_latency = delay;
            return wdata_latency;
        endfunction
        virtual function int get_wbrsp_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wbrsp_latency = delay;
            return wbrsp_latency;
        endfunction
        virtual function int get_rctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rctrl_latency = delay;
            return rctrl_latency;
        endfunction
        virtual function int get_rdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rdata_latency = delay;
            return rdata_latency;
        endfunction
    endclass

    class axi_latency_gmem1 extends axi_latency;
        rand int    wctrl_latency;
        rand int    wdata_latency;
        rand int    wbrsp_latency;
        rand int    rctrl_latency;
        rand int    rdata_latency;
        `uvm_object_utils_begin(axi_latency_gmem1)
        `uvm_object_utils_end
        function new ( string name = "axi_latency_gmem1" );
            super.new(name);
        endfunction
        virtual function int get_wctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wctrl_latency = delay;
            return wctrl_latency;
        endfunction
        virtual function int get_wdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wdata_latency = delay;
            return wdata_latency;
        endfunction
        virtual function int get_wbrsp_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wbrsp_latency = delay;
            return wbrsp_latency;
        endfunction
        virtual function int get_rctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rctrl_latency = delay;
            return rctrl_latency;
        endfunction
        virtual function int get_rdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rdata_latency = delay;
            return rdata_latency;
        endfunction
    endclass

    class axi_latency_control extends axi_latency;
        rand int    wctrl_latency;
        rand int    wdata_latency;
        rand int    wbrsp_latency;
        rand int    rctrl_latency;
        rand int    rdata_latency;
        `uvm_object_utils_begin(axi_latency_control)
        `uvm_object_utils_end
        function new ( string name = "axi_latency_control" );
            super.new(name);
        endfunction
        virtual function int get_wctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wctrl_latency = delay;
            return wctrl_latency;
        endfunction
        virtual function int get_wdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wdata_latency = delay;
            return wdata_latency;
        endfunction
        virtual function int get_wbrsp_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            wbrsp_latency = delay;
            return wbrsp_latency;
        endfunction
        virtual function int get_rctrl_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rctrl_latency = delay;
            return rctrl_latency;
        endfunction
        virtual function int get_rdata_lat();
            int delay;
            void'(std::randomize(delay) with {
				delay dist {0:=8, 0:=1, 256:=1, [0:256]:/2};
				delay inside {[0:256]};
				});
            rdata_latency = delay;
            return rdata_latency;
        endfunction
    endclass

                                                                                                                    
    class top_env extends uvm_env;                                                                          
                                                                                                                    
        axi_latency_gmem0    lat_gmem0;
        axi_latency_gmem1    lat_gmem1;
        axi_latency_control    lat_control;
        top_virtual_sequencer top_virtual_sqr;                                                      
        top_config top_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_gmem0;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_gmem1;
        axi_pkg::axi_env#(8,4,4,3,1) axi_lite_control;
                                                                                                                    
        top_reference_model   refm;                                                                         
                                                                                                                    
        top_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(top_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (top_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (top_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "top_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void top_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        top_cfg = top_config::type_id::create("top_cfg", this);                           
                                                                                                                    

        top_cfg.gmem0_cfg.set_default();
        top_cfg.gmem0_cfg.drv_type = axi_pkg::SLAVE;
        top_cfg.gmem0_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        lat_gmem0 = axi_latency_gmem0::type_id::create("lat_gmem0", this);
        top_cfg.gmem0_cfg.clatency = lat_gmem0;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem0*", "cfg", top_cfg.gmem0_cfg);
        axi_master_gmem0 = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_gmem0", this);

        top_cfg.gmem1_cfg.set_default();
        top_cfg.gmem1_cfg.drv_type = axi_pkg::SLAVE;
        top_cfg.gmem1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        lat_gmem1 = axi_latency_gmem1::type_id::create("lat_gmem1", this);
        top_cfg.gmem1_cfg.clatency = lat_gmem1;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem1*", "cfg", top_cfg.gmem1_cfg);
        axi_master_gmem1 = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_gmem1", this);

        top_cfg.control_cfg.set_default();
        top_cfg.control_cfg.drv_type = axi_pkg::MASTER;
        top_cfg.control_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        lat_control = axi_latency_control::type_id::create("lat_control", this);
        top_cfg.control_cfg.clatency = lat_control;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control*", "cfg", top_cfg.control_cfg);
        axi_lite_control = axi_pkg::axi_env#(8,4,4,3,1)::type_id::create("axi_lite_control", this);



        refm = top_reference_model::type_id::create("refm", this);


        uvm_config_db#(top_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = top_subsystem_monitor::type_id::create("subsys_mon", this);


        top_virtual_sqr = top_virtual_sequencer::type_id::create("top_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void top_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(top_cfg.gmem0_cfg.drv_type==axi_pkg::MASTER ||top_cfg.gmem0_cfg.drv_type==axi_pkg::SLAVE)
            top_virtual_sqr.gmem0_sqr = axi_master_gmem0.vsqr;
        axi_master_gmem0.item_wtr_port.connect(subsys_mon.gmem0_wtr_imp);
        axi_master_gmem0.item_rtr_port.connect(subsys_mon.gmem0_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem0.state, refm.axi_memaccess_cb_gmem0);
        if(top_cfg.gmem1_cfg.drv_type==axi_pkg::MASTER ||top_cfg.gmem1_cfg.drv_type==axi_pkg::SLAVE)
            top_virtual_sqr.gmem1_sqr = axi_master_gmem1.vsqr;
        axi_master_gmem1.item_wtr_port.connect(subsys_mon.gmem1_wtr_imp);
        axi_master_gmem1.item_rtr_port.connect(subsys_mon.gmem1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem1.state, refm.axi_memaccess_cb_gmem1);
        if(top_cfg.control_cfg.drv_type==axi_pkg::MASTER ||top_cfg.control_cfg.drv_type==axi_pkg::SLAVE)
            top_virtual_sqr.control_sqr = axi_lite_control.vsqr;
        axi_lite_control.item_wtr_port.connect(subsys_mon.control_wtr_imp);
        axi_lite_control.item_rtr_port.connect(subsys_mon.control_rtr_imp);
        refm.top_cfg = top_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task top_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "top_env is running", UVM_LOW)
    endtask


`endif

set moduleName conv2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 11
set C_modelName {conv2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_2 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_3 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_4 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_5 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_6 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_7 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict outputConv_0 { MEM_WIDTH 7 MEM_SIZE 1568 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputConv_1 { MEM_WIDTH 7 MEM_SIZE 1568 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_0 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_1 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_2 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_3 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_4 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_5 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_6 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_7 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ outputConv_0 int 7 regular {array 1568 { 3 0 } 0 1 }  }
	{ outputConv_1 int 7 regular {array 1568 { 3 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "outputConv_0", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputConv_1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 8 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 7 signal 0 } 
	{ input_0_address1 sc_out sc_lv 8 signal 0 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_q1 sc_in sc_lv 7 signal 0 } 
	{ input_1_address0 sc_out sc_lv 8 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 7 signal 1 } 
	{ input_1_address1 sc_out sc_lv 8 signal 1 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_q1 sc_in sc_lv 7 signal 1 } 
	{ input_2_address0 sc_out sc_lv 8 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 7 signal 2 } 
	{ input_2_address1 sc_out sc_lv 8 signal 2 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_q1 sc_in sc_lv 7 signal 2 } 
	{ input_3_address0 sc_out sc_lv 8 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 7 signal 3 } 
	{ input_3_address1 sc_out sc_lv 8 signal 3 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_q1 sc_in sc_lv 7 signal 3 } 
	{ input_4_address0 sc_out sc_lv 8 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 7 signal 4 } 
	{ input_4_address1 sc_out sc_lv 8 signal 4 } 
	{ input_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_4_q1 sc_in sc_lv 7 signal 4 } 
	{ input_5_address0 sc_out sc_lv 8 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 7 signal 5 } 
	{ input_5_address1 sc_out sc_lv 8 signal 5 } 
	{ input_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ input_5_q1 sc_in sc_lv 7 signal 5 } 
	{ input_6_address0 sc_out sc_lv 8 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 7 signal 6 } 
	{ input_6_address1 sc_out sc_lv 8 signal 6 } 
	{ input_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ input_6_q1 sc_in sc_lv 7 signal 6 } 
	{ input_7_address0 sc_out sc_lv 8 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 7 signal 7 } 
	{ input_7_address1 sc_out sc_lv 8 signal 7 } 
	{ input_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ input_7_q1 sc_in sc_lv 7 signal 7 } 
	{ outputConv_0_address1 sc_out sc_lv 11 signal 8 } 
	{ outputConv_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ outputConv_0_we1 sc_out sc_logic 1 signal 8 } 
	{ outputConv_0_d1 sc_out sc_lv 7 signal 8 } 
	{ outputConv_1_address1 sc_out sc_lv 11 signal 9 } 
	{ outputConv_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ outputConv_1_we1 sc_out sc_logic 1 signal 9 } 
	{ outputConv_1_d1 sc_out sc_lv 7 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "address1" }} , 
 	{ "name": "input_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce1" }} , 
 	{ "name": "input_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_0", "role": "q1" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "address1" }} , 
 	{ "name": "input_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce1" }} , 
 	{ "name": "input_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_1", "role": "q1" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2", "role": "address1" }} , 
 	{ "name": "input_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce1" }} , 
 	{ "name": "input_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_2", "role": "q1" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3", "role": "address1" }} , 
 	{ "name": "input_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce1" }} , 
 	{ "name": "input_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_3", "role": "q1" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4", "role": "address1" }} , 
 	{ "name": "input_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce1" }} , 
 	{ "name": "input_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_4", "role": "q1" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5", "role": "address1" }} , 
 	{ "name": "input_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce1" }} , 
 	{ "name": "input_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_5", "role": "q1" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6", "role": "address1" }} , 
 	{ "name": "input_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce1" }} , 
 	{ "name": "input_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_6", "role": "q1" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7", "role": "address1" }} , 
 	{ "name": "input_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce1" }} , 
 	{ "name": "input_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_7", "role": "q1" }} , 
 	{ "name": "outputConv_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_0", "role": "address1" }} , 
 	{ "name": "outputConv_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_0", "role": "ce1" }} , 
 	{ "name": "outputConv_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_0", "role": "we1" }} , 
 	{ "name": "outputConv_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_0", "role": "d1" }} , 
 	{ "name": "outputConv_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_1", "role": "address1" }} , 
 	{ "name": "outputConv_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_1", "role": "ce1" }} , 
 	{ "name": "outputConv_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_1", "role": "we1" }} , 
 	{ "name": "outputConv_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_1", "role": "d1" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2 {
		input_0 {Type I LastRead 2 FirstWrite -1}
		input_1 {Type I LastRead 2 FirstWrite -1}
		input_2 {Type I LastRead 2 FirstWrite -1}
		input_3 {Type I LastRead 2 FirstWrite -1}
		input_4 {Type I LastRead 2 FirstWrite -1}
		input_5 {Type I LastRead 2 FirstWrite -1}
		input_6 {Type I LastRead 2 FirstWrite -1}
		input_7 {Type I LastRead 2 FirstWrite -1}
		outputConv_0 {Type O LastRead -1 FirstWrite 8}
		outputConv_1 {Type O LastRead -1 FirstWrite 8}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}}
	conv2_Pipeline_CI_2 {
		add_ln85 {Type I LastRead 0 FirstWrite -1}
		add_ln83 {Type I LastRead 0 FirstWrite -1}
		add_ln83_1 {Type I LastRead 0 FirstWrite -1}
		add_ln82 {Type I LastRead 0 FirstWrite -1}
		and_ln85_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln85 {Type I LastRead 0 FirstWrite -1}
		input_0 {Type I LastRead 2 FirstWrite -1}
		input_1 {Type I LastRead 2 FirstWrite -1}
		input_2 {Type I LastRead 2 FirstWrite -1}
		input_3 {Type I LastRead 2 FirstWrite -1}
		input_4 {Type I LastRead 2 FirstWrite -1}
		input_5 {Type I LastRead 2 FirstWrite -1}
		input_6 {Type I LastRead 2 FirstWrite -1}
		input_7 {Type I LastRead 2 FirstWrite -1}
		zext_ln82 {Type I LastRead 0 FirstWrite -1}
		and_ln85_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln70_1 {Type I LastRead 0 FirstWrite -1}
		and_ln85_1 {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		mul_ln104 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		and_ln85 {Type I LastRead 0 FirstWrite -1}
		zext_ln85_1 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead 12 FirstWrite 5}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead 12 FirstWrite 5}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 {Type IO LastRead 12 FirstWrite 5}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "85153", "Max" : "85153"}
	, {"Name" : "Interval", "Min" : "85153", "Max" : "85153"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 8 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 7 }  { input_0_address1 MemPortADDR2 1 8 }  { input_0_ce1 MemPortCE2 1 1 }  { input_0_q1 MemPortDOUT2 0 7 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 8 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 7 }  { input_1_address1 MemPortADDR2 1 8 }  { input_1_ce1 MemPortCE2 1 1 }  { input_1_q1 MemPortDOUT2 0 7 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 8 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 7 }  { input_2_address1 MemPortADDR2 1 8 }  { input_2_ce1 MemPortCE2 1 1 }  { input_2_q1 MemPortDOUT2 0 7 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 8 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 7 }  { input_3_address1 MemPortADDR2 1 8 }  { input_3_ce1 MemPortCE2 1 1 }  { input_3_q1 MemPortDOUT2 0 7 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 8 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 7 }  { input_4_address1 MemPortADDR2 1 8 }  { input_4_ce1 MemPortCE2 1 1 }  { input_4_q1 MemPortDOUT2 0 7 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 8 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 7 }  { input_5_address1 MemPortADDR2 1 8 }  { input_5_ce1 MemPortCE2 1 1 }  { input_5_q1 MemPortDOUT2 0 7 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 8 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 7 }  { input_6_address1 MemPortADDR2 1 8 }  { input_6_ce1 MemPortCE2 1 1 }  { input_6_q1 MemPortDOUT2 0 7 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 8 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 7 }  { input_7_address1 MemPortADDR2 1 8 }  { input_7_ce1 MemPortCE2 1 1 }  { input_7_q1 MemPortDOUT2 0 7 } } }
	outputConv_0 { ap_memory {  { outputConv_0_address1 MemPortADDR2 1 11 }  { outputConv_0_ce1 MemPortCE2 1 1 }  { outputConv_0_we1 MemPortWE2 1 1 }  { outputConv_0_d1 MemPortDIN2 1 7 } } }
	outputConv_1 { ap_memory {  { outputConv_1_address1 MemPortADDR2 1 11 }  { outputConv_1_ce1 MemPortCE2 1 1 }  { outputConv_1_we1 MemPortWE2 1 1 }  { outputConv_1_d1 MemPortDIN2 1 7 } } }
}

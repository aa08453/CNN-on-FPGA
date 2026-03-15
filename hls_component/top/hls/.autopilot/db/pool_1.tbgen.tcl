set moduleName pool_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {pool.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 7 MEM_SIZE 1568 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 7 MEM_SIZE 1568 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict outputPool_0 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_1 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_2 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_3 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_4 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_5 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_6 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_7 { MEM_WIDTH 7 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_0 int 7 regular {array 1568 { 1 1 } 1 1 }  }
	{ input_1 int 7 regular {array 1568 { 1 1 } 1 1 }  }
	{ outputPool_0 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_1 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_2 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_3 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_4 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_5 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_6 int 7 regular {array 98 { 0 3 } 0 1 }  }
	{ outputPool_7 int 7 regular {array 98 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "outputPool_0", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_2", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_3", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_4", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_5", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_6", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_7", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 7 signal 0 } 
	{ input_0_address1 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_q1 sc_in sc_lv 7 signal 0 } 
	{ input_1_address0 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 7 signal 1 } 
	{ input_1_address1 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_1_q1 sc_in sc_lv 7 signal 1 } 
	{ outputPool_0_address0 sc_out sc_lv 7 signal 2 } 
	{ outputPool_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ outputPool_0_we0 sc_out sc_logic 1 signal 2 } 
	{ outputPool_0_d0 sc_out sc_lv 7 signal 2 } 
	{ outputPool_1_address0 sc_out sc_lv 7 signal 3 } 
	{ outputPool_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ outputPool_1_we0 sc_out sc_logic 1 signal 3 } 
	{ outputPool_1_d0 sc_out sc_lv 7 signal 3 } 
	{ outputPool_2_address0 sc_out sc_lv 7 signal 4 } 
	{ outputPool_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ outputPool_2_we0 sc_out sc_logic 1 signal 4 } 
	{ outputPool_2_d0 sc_out sc_lv 7 signal 4 } 
	{ outputPool_3_address0 sc_out sc_lv 7 signal 5 } 
	{ outputPool_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ outputPool_3_we0 sc_out sc_logic 1 signal 5 } 
	{ outputPool_3_d0 sc_out sc_lv 7 signal 5 } 
	{ outputPool_4_address0 sc_out sc_lv 7 signal 6 } 
	{ outputPool_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ outputPool_4_we0 sc_out sc_logic 1 signal 6 } 
	{ outputPool_4_d0 sc_out sc_lv 7 signal 6 } 
	{ outputPool_5_address0 sc_out sc_lv 7 signal 7 } 
	{ outputPool_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ outputPool_5_we0 sc_out sc_logic 1 signal 7 } 
	{ outputPool_5_d0 sc_out sc_lv 7 signal 7 } 
	{ outputPool_6_address0 sc_out sc_lv 7 signal 8 } 
	{ outputPool_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ outputPool_6_we0 sc_out sc_logic 1 signal 8 } 
	{ outputPool_6_d0 sc_out sc_lv 7 signal 8 } 
	{ outputPool_7_address0 sc_out sc_lv 7 signal 9 } 
	{ outputPool_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ outputPool_7_we0 sc_out sc_logic 1 signal 9 } 
	{ outputPool_7_d0 sc_out sc_lv 7 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address1" }} , 
 	{ "name": "input_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce1" }} , 
 	{ "name": "input_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_0", "role": "q1" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address1" }} , 
 	{ "name": "input_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce1" }} , 
 	{ "name": "input_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_1", "role": "q1" }} , 
 	{ "name": "outputPool_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_0", "role": "address0" }} , 
 	{ "name": "outputPool_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_0", "role": "ce0" }} , 
 	{ "name": "outputPool_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_0", "role": "we0" }} , 
 	{ "name": "outputPool_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_0", "role": "d0" }} , 
 	{ "name": "outputPool_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_1", "role": "address0" }} , 
 	{ "name": "outputPool_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_1", "role": "ce0" }} , 
 	{ "name": "outputPool_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_1", "role": "we0" }} , 
 	{ "name": "outputPool_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_1", "role": "d0" }} , 
 	{ "name": "outputPool_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_2", "role": "address0" }} , 
 	{ "name": "outputPool_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_2", "role": "ce0" }} , 
 	{ "name": "outputPool_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_2", "role": "we0" }} , 
 	{ "name": "outputPool_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_2", "role": "d0" }} , 
 	{ "name": "outputPool_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_3", "role": "address0" }} , 
 	{ "name": "outputPool_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_3", "role": "ce0" }} , 
 	{ "name": "outputPool_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_3", "role": "we0" }} , 
 	{ "name": "outputPool_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_3", "role": "d0" }} , 
 	{ "name": "outputPool_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_4", "role": "address0" }} , 
 	{ "name": "outputPool_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_4", "role": "ce0" }} , 
 	{ "name": "outputPool_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_4", "role": "we0" }} , 
 	{ "name": "outputPool_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_4", "role": "d0" }} , 
 	{ "name": "outputPool_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_5", "role": "address0" }} , 
 	{ "name": "outputPool_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_5", "role": "ce0" }} , 
 	{ "name": "outputPool_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_5", "role": "we0" }} , 
 	{ "name": "outputPool_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_5", "role": "d0" }} , 
 	{ "name": "outputPool_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_6", "role": "address0" }} , 
 	{ "name": "outputPool_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_6", "role": "ce0" }} , 
 	{ "name": "outputPool_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_6", "role": "we0" }} , 
 	{ "name": "outputPool_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_6", "role": "d0" }} , 
 	{ "name": "outputPool_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_7", "role": "address0" }} , 
 	{ "name": "outputPool_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_7", "role": "ce0" }} , 
 	{ "name": "outputPool_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_7", "role": "we0" }} , 
 	{ "name": "outputPool_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_7", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	pool_1 {
		input_0 {Type I LastRead 4 FirstWrite -1}
		input_1 {Type I LastRead 4 FirstWrite -1}
		outputPool_0 {Type O LastRead -1 FirstWrite 5}
		outputPool_1 {Type O LastRead -1 FirstWrite 5}
		outputPool_2 {Type O LastRead -1 FirstWrite 5}
		outputPool_3 {Type O LastRead -1 FirstWrite 5}
		outputPool_4 {Type O LastRead -1 FirstWrite 5}
		outputPool_5 {Type O LastRead -1 FirstWrite 5}
		outputPool_6 {Type O LastRead -1 FirstWrite 5}
		outputPool_7 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "790", "Max" : "790"}
	, {"Name" : "Interval", "Min" : "785", "Max" : "785"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 7 }  { input_0_address1 MemPortADDR2 1 11 }  { input_0_ce1 MemPortCE2 1 1 }  { input_0_q1 MemPortDOUT2 0 7 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 7 }  { input_1_address1 MemPortADDR2 1 11 }  { input_1_ce1 MemPortCE2 1 1 }  { input_1_q1 MemPortDOUT2 0 7 } } }
	outputPool_0 { ap_memory {  { outputPool_0_address0 mem_address 1 7 }  { outputPool_0_ce0 mem_ce 1 1 }  { outputPool_0_we0 mem_we 1 1 }  { outputPool_0_d0 mem_din 1 7 } } }
	outputPool_1 { ap_memory {  { outputPool_1_address0 mem_address 1 7 }  { outputPool_1_ce0 mem_ce 1 1 }  { outputPool_1_we0 mem_we 1 1 }  { outputPool_1_d0 mem_din 1 7 } } }
	outputPool_2 { ap_memory {  { outputPool_2_address0 mem_address 1 7 }  { outputPool_2_ce0 mem_ce 1 1 }  { outputPool_2_we0 mem_we 1 1 }  { outputPool_2_d0 mem_din 1 7 } } }
	outputPool_3 { ap_memory {  { outputPool_3_address0 mem_address 1 7 }  { outputPool_3_ce0 mem_ce 1 1 }  { outputPool_3_we0 mem_we 1 1 }  { outputPool_3_d0 mem_din 1 7 } } }
	outputPool_4 { ap_memory {  { outputPool_4_address0 mem_address 1 7 }  { outputPool_4_ce0 mem_ce 1 1 }  { outputPool_4_we0 mem_we 1 1 }  { outputPool_4_d0 mem_din 1 7 } } }
	outputPool_5 { ap_memory {  { outputPool_5_address0 mem_address 1 7 }  { outputPool_5_ce0 mem_ce 1 1 }  { outputPool_5_we0 mem_we 1 1 }  { outputPool_5_d0 mem_din 1 7 } } }
	outputPool_6 { ap_memory {  { outputPool_6_address0 mem_address 1 7 }  { outputPool_6_ce0 mem_ce 1 1 }  { outputPool_6_we0 mem_we 1 1 }  { outputPool_6_d0 mem_din 1 7 } } }
	outputPool_7 { ap_memory {  { outputPool_7_address0 mem_address 1 7 }  { outputPool_7_ce0 mem_ce 1 1 }  { outputPool_7_we0 mem_we 1 1 }  { outputPool_7_d0 mem_din 1 7 } } }
}

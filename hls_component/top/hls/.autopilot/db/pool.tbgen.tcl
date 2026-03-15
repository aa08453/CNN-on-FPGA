set moduleName pool
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
set C_modelName {pool}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_2 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_3 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_4 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict outputPool_0 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_1 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_2 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_3 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_4 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_5 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_6 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputPool_7 { MEM_WIDTH 7 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_0 int 7 regular {array 1255 { 1 1 } 1 1 }  }
	{ input_1 int 7 regular {array 1255 { 1 1 } 1 1 }  }
	{ input_2 int 7 regular {array 1255 { 1 1 } 1 1 }  }
	{ input_3 int 7 regular {array 1255 { 1 1 } 1 1 }  }
	{ input_4 int 7 regular {array 1255 { 1 1 } 1 1 }  }
	{ outputPool_0 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_1 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_2 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_3 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_4 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_5 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_6 int 7 regular {array 196 { 3 0 } 0 1 }  }
	{ outputPool_7 int 7 regular {array 196 { 3 0 } 0 1 }  }
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
 	{ "Name" : "outputPool_0", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_2", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_3", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_4", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_5", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_6", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputPool_7", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
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
	{ input_2_address0 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 7 signal 2 } 
	{ input_2_address1 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_2_q1 sc_in sc_lv 7 signal 2 } 
	{ input_3_address0 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 7 signal 3 } 
	{ input_3_address1 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_3_q1 sc_in sc_lv 7 signal 3 } 
	{ input_4_address0 sc_out sc_lv 11 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 7 signal 4 } 
	{ input_4_address1 sc_out sc_lv 11 signal 4 } 
	{ input_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_4_q1 sc_in sc_lv 7 signal 4 } 
	{ outputPool_0_address1 sc_out sc_lv 8 signal 5 } 
	{ outputPool_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ outputPool_0_we1 sc_out sc_logic 1 signal 5 } 
	{ outputPool_0_d1 sc_out sc_lv 7 signal 5 } 
	{ outputPool_1_address1 sc_out sc_lv 8 signal 6 } 
	{ outputPool_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ outputPool_1_we1 sc_out sc_logic 1 signal 6 } 
	{ outputPool_1_d1 sc_out sc_lv 7 signal 6 } 
	{ outputPool_2_address1 sc_out sc_lv 8 signal 7 } 
	{ outputPool_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ outputPool_2_we1 sc_out sc_logic 1 signal 7 } 
	{ outputPool_2_d1 sc_out sc_lv 7 signal 7 } 
	{ outputPool_3_address1 sc_out sc_lv 8 signal 8 } 
	{ outputPool_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ outputPool_3_we1 sc_out sc_logic 1 signal 8 } 
	{ outputPool_3_d1 sc_out sc_lv 7 signal 8 } 
	{ outputPool_4_address1 sc_out sc_lv 8 signal 9 } 
	{ outputPool_4_ce1 sc_out sc_logic 1 signal 9 } 
	{ outputPool_4_we1 sc_out sc_logic 1 signal 9 } 
	{ outputPool_4_d1 sc_out sc_lv 7 signal 9 } 
	{ outputPool_5_address1 sc_out sc_lv 8 signal 10 } 
	{ outputPool_5_ce1 sc_out sc_logic 1 signal 10 } 
	{ outputPool_5_we1 sc_out sc_logic 1 signal 10 } 
	{ outputPool_5_d1 sc_out sc_lv 7 signal 10 } 
	{ outputPool_6_address1 sc_out sc_lv 8 signal 11 } 
	{ outputPool_6_ce1 sc_out sc_logic 1 signal 11 } 
	{ outputPool_6_we1 sc_out sc_logic 1 signal 11 } 
	{ outputPool_6_d1 sc_out sc_lv 7 signal 11 } 
	{ outputPool_7_address1 sc_out sc_lv 8 signal 12 } 
	{ outputPool_7_ce1 sc_out sc_logic 1 signal 12 } 
	{ outputPool_7_we1 sc_out sc_logic 1 signal 12 } 
	{ outputPool_7_d1 sc_out sc_lv 7 signal 12 } 
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
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address1" }} , 
 	{ "name": "input_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce1" }} , 
 	{ "name": "input_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_2", "role": "q1" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address1" }} , 
 	{ "name": "input_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce1" }} , 
 	{ "name": "input_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_3", "role": "q1" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_4", "role": "address1" }} , 
 	{ "name": "input_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce1" }} , 
 	{ "name": "input_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_4", "role": "q1" }} , 
 	{ "name": "outputPool_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_0", "role": "address1" }} , 
 	{ "name": "outputPool_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_0", "role": "ce1" }} , 
 	{ "name": "outputPool_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_0", "role": "we1" }} , 
 	{ "name": "outputPool_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_0", "role": "d1" }} , 
 	{ "name": "outputPool_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_1", "role": "address1" }} , 
 	{ "name": "outputPool_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_1", "role": "ce1" }} , 
 	{ "name": "outputPool_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_1", "role": "we1" }} , 
 	{ "name": "outputPool_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_1", "role": "d1" }} , 
 	{ "name": "outputPool_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_2", "role": "address1" }} , 
 	{ "name": "outputPool_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_2", "role": "ce1" }} , 
 	{ "name": "outputPool_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_2", "role": "we1" }} , 
 	{ "name": "outputPool_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_2", "role": "d1" }} , 
 	{ "name": "outputPool_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_3", "role": "address1" }} , 
 	{ "name": "outputPool_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_3", "role": "ce1" }} , 
 	{ "name": "outputPool_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_3", "role": "we1" }} , 
 	{ "name": "outputPool_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_3", "role": "d1" }} , 
 	{ "name": "outputPool_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_4", "role": "address1" }} , 
 	{ "name": "outputPool_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_4", "role": "ce1" }} , 
 	{ "name": "outputPool_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_4", "role": "we1" }} , 
 	{ "name": "outputPool_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_4", "role": "d1" }} , 
 	{ "name": "outputPool_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_5", "role": "address1" }} , 
 	{ "name": "outputPool_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_5", "role": "ce1" }} , 
 	{ "name": "outputPool_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_5", "role": "we1" }} , 
 	{ "name": "outputPool_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_5", "role": "d1" }} , 
 	{ "name": "outputPool_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_6", "role": "address1" }} , 
 	{ "name": "outputPool_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_6", "role": "ce1" }} , 
 	{ "name": "outputPool_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_6", "role": "we1" }} , 
 	{ "name": "outputPool_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_6", "role": "d1" }} , 
 	{ "name": "outputPool_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outputPool_7", "role": "address1" }} , 
 	{ "name": "outputPool_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_7", "role": "ce1" }} , 
 	{ "name": "outputPool_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputPool_7", "role": "we1" }} , 
 	{ "name": "outputPool_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputPool_7", "role": "d1" }}  ]}

set ArgLastReadFirstWriteLatency {
	pool {
		input_0 {Type I LastRead 16 FirstWrite -1}
		input_1 {Type I LastRead 16 FirstWrite -1}
		input_2 {Type I LastRead 16 FirstWrite -1}
		input_3 {Type I LastRead 16 FirstWrite -1}
		input_4 {Type I LastRead 16 FirstWrite -1}
		outputPool_0 {Type O LastRead -1 FirstWrite 17}
		outputPool_1 {Type O LastRead -1 FirstWrite 17}
		outputPool_2 {Type O LastRead -1 FirstWrite 17}
		outputPool_3 {Type O LastRead -1 FirstWrite 17}
		outputPool_4 {Type O LastRead -1 FirstWrite 17}
		outputPool_5 {Type O LastRead -1 FirstWrite 17}
		outputPool_6 {Type O LastRead -1 FirstWrite 17}
		outputPool_7 {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1586", "Max" : "1586"}
	, {"Name" : "Interval", "Min" : "1569", "Max" : "1569"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 7 }  { input_0_address1 MemPortADDR2 1 11 }  { input_0_ce1 MemPortCE2 1 1 }  { input_0_q1 MemPortDOUT2 0 7 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 7 }  { input_1_address1 MemPortADDR2 1 11 }  { input_1_ce1 MemPortCE2 1 1 }  { input_1_q1 MemPortDOUT2 0 7 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 11 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 7 }  { input_2_address1 MemPortADDR2 1 11 }  { input_2_ce1 MemPortCE2 1 1 }  { input_2_q1 MemPortDOUT2 0 7 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 11 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 7 }  { input_3_address1 MemPortADDR2 1 11 }  { input_3_ce1 MemPortCE2 1 1 }  { input_3_q1 MemPortDOUT2 0 7 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 11 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 7 }  { input_4_address1 MemPortADDR2 1 11 }  { input_4_ce1 MemPortCE2 1 1 }  { input_4_q1 MemPortDOUT2 0 7 } } }
	outputPool_0 { ap_memory {  { outputPool_0_address1 MemPortADDR2 1 8 }  { outputPool_0_ce1 MemPortCE2 1 1 }  { outputPool_0_we1 MemPortWE2 1 1 }  { outputPool_0_d1 MemPortDIN2 1 7 } } }
	outputPool_1 { ap_memory {  { outputPool_1_address1 MemPortADDR2 1 8 }  { outputPool_1_ce1 MemPortCE2 1 1 }  { outputPool_1_we1 MemPortWE2 1 1 }  { outputPool_1_d1 MemPortDIN2 1 7 } } }
	outputPool_2 { ap_memory {  { outputPool_2_address1 MemPortADDR2 1 8 }  { outputPool_2_ce1 MemPortCE2 1 1 }  { outputPool_2_we1 MemPortWE2 1 1 }  { outputPool_2_d1 MemPortDIN2 1 7 } } }
	outputPool_3 { ap_memory {  { outputPool_3_address1 MemPortADDR2 1 8 }  { outputPool_3_ce1 MemPortCE2 1 1 }  { outputPool_3_we1 MemPortWE2 1 1 }  { outputPool_3_d1 MemPortDIN2 1 7 } } }
	outputPool_4 { ap_memory {  { outputPool_4_address1 MemPortADDR2 1 8 }  { outputPool_4_ce1 MemPortCE2 1 1 }  { outputPool_4_we1 MemPortWE2 1 1 }  { outputPool_4_d1 MemPortDIN2 1 7 } } }
	outputPool_5 { ap_memory {  { outputPool_5_address1 MemPortADDR2 1 8 }  { outputPool_5_ce1 MemPortCE2 1 1 }  { outputPool_5_we1 MemPortWE2 1 1 }  { outputPool_5_d1 MemPortDIN2 1 7 } } }
	outputPool_6 { ap_memory {  { outputPool_6_address1 MemPortADDR2 1 8 }  { outputPool_6_ce1 MemPortCE2 1 1 }  { outputPool_6_we1 MemPortWE2 1 1 }  { outputPool_6_d1 MemPortDIN2 1 7 } } }
	outputPool_7 { ap_memory {  { outputPool_7_address1 MemPortADDR2 1 8 }  { outputPool_7_ce1 MemPortCE2 1 1 }  { outputPool_7_we1 MemPortWE2 1 1 }  { outputPool_7_d1 MemPortDIN2 1 7 } } }
}

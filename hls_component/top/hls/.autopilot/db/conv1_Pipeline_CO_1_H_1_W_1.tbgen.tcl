set moduleName conv1_Pipeline_CO_1_H_1_W_1
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
set C_modelName {conv1_Pipeline_CO_1_H_1_W_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict outputConv_4 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputConv_3 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputConv_2 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputConv_1 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict outputConv_0 { MEM_WIDTH 7 MEM_SIZE 1255 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_1 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_2 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_3 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_4 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_5 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_6 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_7 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_8 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_9 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_10 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_11 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_12 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_13 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_14 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_15 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ outputConv_4 int 7 regular {array 1255 { 3 0 } 0 1 }  }
	{ outputConv_3 int 7 regular {array 1255 { 3 0 } 0 1 }  }
	{ outputConv_2 int 7 regular {array 1255 { 3 0 } 0 1 }  }
	{ outputConv_1 int 7 regular {array 1255 { 3 0 } 0 1 }  }
	{ outputConv_0 int 7 regular {array 1255 { 3 0 } 0 1 }  }
	{ temp int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_1 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_2 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_3 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_4 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_5 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_6 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_7 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_8 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_9 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_10 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_11 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_12 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_13 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_14 int 8 regular {array 49 { 1 3 } 1 1 }  }
	{ temp_15 int 8 regular {array 49 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "outputConv_4", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputConv_3", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputConv_2", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputConv_1", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputConv_0", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_10", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_11", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_12", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_13", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_14", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_15", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outputConv_4_address1 sc_out sc_lv 11 signal 0 } 
	{ outputConv_4_ce1 sc_out sc_logic 1 signal 0 } 
	{ outputConv_4_we1 sc_out sc_logic 1 signal 0 } 
	{ outputConv_4_d1 sc_out sc_lv 7 signal 0 } 
	{ outputConv_3_address1 sc_out sc_lv 11 signal 1 } 
	{ outputConv_3_ce1 sc_out sc_logic 1 signal 1 } 
	{ outputConv_3_we1 sc_out sc_logic 1 signal 1 } 
	{ outputConv_3_d1 sc_out sc_lv 7 signal 1 } 
	{ outputConv_2_address1 sc_out sc_lv 11 signal 2 } 
	{ outputConv_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ outputConv_2_we1 sc_out sc_logic 1 signal 2 } 
	{ outputConv_2_d1 sc_out sc_lv 7 signal 2 } 
	{ outputConv_1_address1 sc_out sc_lv 11 signal 3 } 
	{ outputConv_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ outputConv_1_we1 sc_out sc_logic 1 signal 3 } 
	{ outputConv_1_d1 sc_out sc_lv 7 signal 3 } 
	{ outputConv_0_address1 sc_out sc_lv 11 signal 4 } 
	{ outputConv_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ outputConv_0_we1 sc_out sc_logic 1 signal 4 } 
	{ outputConv_0_d1 sc_out sc_lv 7 signal 4 } 
	{ temp_address0 sc_out sc_lv 6 signal 5 } 
	{ temp_ce0 sc_out sc_logic 1 signal 5 } 
	{ temp_q0 sc_in sc_lv 8 signal 5 } 
	{ temp_1_address0 sc_out sc_lv 6 signal 6 } 
	{ temp_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ temp_1_q0 sc_in sc_lv 8 signal 6 } 
	{ temp_2_address0 sc_out sc_lv 6 signal 7 } 
	{ temp_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ temp_2_q0 sc_in sc_lv 8 signal 7 } 
	{ temp_3_address0 sc_out sc_lv 6 signal 8 } 
	{ temp_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ temp_3_q0 sc_in sc_lv 8 signal 8 } 
	{ temp_4_address0 sc_out sc_lv 6 signal 9 } 
	{ temp_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ temp_4_q0 sc_in sc_lv 8 signal 9 } 
	{ temp_5_address0 sc_out sc_lv 6 signal 10 } 
	{ temp_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ temp_5_q0 sc_in sc_lv 8 signal 10 } 
	{ temp_6_address0 sc_out sc_lv 6 signal 11 } 
	{ temp_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ temp_6_q0 sc_in sc_lv 8 signal 11 } 
	{ temp_7_address0 sc_out sc_lv 6 signal 12 } 
	{ temp_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ temp_7_q0 sc_in sc_lv 8 signal 12 } 
	{ temp_8_address0 sc_out sc_lv 6 signal 13 } 
	{ temp_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ temp_8_q0 sc_in sc_lv 8 signal 13 } 
	{ temp_9_address0 sc_out sc_lv 6 signal 14 } 
	{ temp_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ temp_9_q0 sc_in sc_lv 8 signal 14 } 
	{ temp_10_address0 sc_out sc_lv 6 signal 15 } 
	{ temp_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ temp_10_q0 sc_in sc_lv 8 signal 15 } 
	{ temp_11_address0 sc_out sc_lv 6 signal 16 } 
	{ temp_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ temp_11_q0 sc_in sc_lv 8 signal 16 } 
	{ temp_12_address0 sc_out sc_lv 6 signal 17 } 
	{ temp_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ temp_12_q0 sc_in sc_lv 8 signal 17 } 
	{ temp_13_address0 sc_out sc_lv 6 signal 18 } 
	{ temp_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ temp_13_q0 sc_in sc_lv 8 signal 18 } 
	{ temp_14_address0 sc_out sc_lv 6 signal 19 } 
	{ temp_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ temp_14_q0 sc_in sc_lv 8 signal 19 } 
	{ temp_15_address0 sc_out sc_lv 6 signal 20 } 
	{ temp_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ temp_15_q0 sc_in sc_lv 8 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outputConv_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_4", "role": "address1" }} , 
 	{ "name": "outputConv_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_4", "role": "ce1" }} , 
 	{ "name": "outputConv_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_4", "role": "we1" }} , 
 	{ "name": "outputConv_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_4", "role": "d1" }} , 
 	{ "name": "outputConv_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_3", "role": "address1" }} , 
 	{ "name": "outputConv_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_3", "role": "ce1" }} , 
 	{ "name": "outputConv_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_3", "role": "we1" }} , 
 	{ "name": "outputConv_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_3", "role": "d1" }} , 
 	{ "name": "outputConv_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_2", "role": "address1" }} , 
 	{ "name": "outputConv_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_2", "role": "ce1" }} , 
 	{ "name": "outputConv_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_2", "role": "we1" }} , 
 	{ "name": "outputConv_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_2", "role": "d1" }} , 
 	{ "name": "outputConv_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_1", "role": "address1" }} , 
 	{ "name": "outputConv_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_1", "role": "ce1" }} , 
 	{ "name": "outputConv_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_1", "role": "we1" }} , 
 	{ "name": "outputConv_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_1", "role": "d1" }} , 
 	{ "name": "outputConv_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "outputConv_0", "role": "address1" }} , 
 	{ "name": "outputConv_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_0", "role": "ce1" }} , 
 	{ "name": "outputConv_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputConv_0", "role": "we1" }} , 
 	{ "name": "outputConv_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputConv_0", "role": "d1" }} , 
 	{ "name": "temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp", "role": "address0" }} , 
 	{ "name": "temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce0" }} , 
 	{ "name": "temp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "q0" }} , 
 	{ "name": "temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_1", "role": "address0" }} , 
 	{ "name": "temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_1", "role": "ce0" }} , 
 	{ "name": "temp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "q0" }} , 
 	{ "name": "temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_2", "role": "address0" }} , 
 	{ "name": "temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_2", "role": "ce0" }} , 
 	{ "name": "temp_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "q0" }} , 
 	{ "name": "temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_3", "role": "address0" }} , 
 	{ "name": "temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_3", "role": "ce0" }} , 
 	{ "name": "temp_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "q0" }} , 
 	{ "name": "temp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_4", "role": "address0" }} , 
 	{ "name": "temp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_4", "role": "ce0" }} , 
 	{ "name": "temp_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "q0" }} , 
 	{ "name": "temp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_5", "role": "address0" }} , 
 	{ "name": "temp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_5", "role": "ce0" }} , 
 	{ "name": "temp_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "q0" }} , 
 	{ "name": "temp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_6", "role": "address0" }} , 
 	{ "name": "temp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_6", "role": "ce0" }} , 
 	{ "name": "temp_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "q0" }} , 
 	{ "name": "temp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_7", "role": "address0" }} , 
 	{ "name": "temp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_7", "role": "ce0" }} , 
 	{ "name": "temp_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "q0" }} , 
 	{ "name": "temp_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_8", "role": "address0" }} , 
 	{ "name": "temp_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_8", "role": "ce0" }} , 
 	{ "name": "temp_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8", "role": "q0" }} , 
 	{ "name": "temp_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_9", "role": "address0" }} , 
 	{ "name": "temp_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_9", "role": "ce0" }} , 
 	{ "name": "temp_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_9", "role": "q0" }} , 
 	{ "name": "temp_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_10", "role": "address0" }} , 
 	{ "name": "temp_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_10", "role": "ce0" }} , 
 	{ "name": "temp_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_10", "role": "q0" }} , 
 	{ "name": "temp_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_11", "role": "address0" }} , 
 	{ "name": "temp_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_11", "role": "ce0" }} , 
 	{ "name": "temp_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_11", "role": "q0" }} , 
 	{ "name": "temp_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_12", "role": "address0" }} , 
 	{ "name": "temp_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_12", "role": "ce0" }} , 
 	{ "name": "temp_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_12", "role": "q0" }} , 
 	{ "name": "temp_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_13", "role": "address0" }} , 
 	{ "name": "temp_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_13", "role": "ce0" }} , 
 	{ "name": "temp_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_13", "role": "q0" }} , 
 	{ "name": "temp_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_14", "role": "address0" }} , 
 	{ "name": "temp_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_14", "role": "ce0" }} , 
 	{ "name": "temp_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_14", "role": "q0" }} , 
 	{ "name": "temp_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_15", "role": "address0" }} , 
 	{ "name": "temp_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_15", "role": "ce0" }} , 
 	{ "name": "temp_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_15", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1_Pipeline_CO_1_H_1_W_1 {
		outputConv_4 {Type O LastRead -1 FirstWrite 14}
		outputConv_3 {Type O LastRead -1 FirstWrite 14}
		outputConv_2 {Type O LastRead -1 FirstWrite 14}
		outputConv_1 {Type O LastRead -1 FirstWrite 14}
		outputConv_0 {Type O LastRead -1 FirstWrite 14}
		temp {Type I LastRead 3 FirstWrite -1}
		temp_1 {Type I LastRead 3 FirstWrite -1}
		temp_2 {Type I LastRead 3 FirstWrite -1}
		temp_3 {Type I LastRead 3 FirstWrite -1}
		temp_4 {Type I LastRead 3 FirstWrite -1}
		temp_5 {Type I LastRead 3 FirstWrite -1}
		temp_6 {Type I LastRead 3 FirstWrite -1}
		temp_7 {Type I LastRead 3 FirstWrite -1}
		temp_8 {Type I LastRead 3 FirstWrite -1}
		temp_9 {Type I LastRead 3 FirstWrite -1}
		temp_10 {Type I LastRead 3 FirstWrite -1}
		temp_11 {Type I LastRead 3 FirstWrite -1}
		temp_12 {Type I LastRead 3 FirstWrite -1}
		temp_13 {Type I LastRead 3 FirstWrite -1}
		temp_14 {Type I LastRead 3 FirstWrite -1}
		temp_15 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6287", "Max" : "6287"}
	, {"Name" : "Interval", "Min" : "6273", "Max" : "6273"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outputConv_4 { ap_memory {  { outputConv_4_address1 MemPortADDR2 1 11 }  { outputConv_4_ce1 MemPortCE2 1 1 }  { outputConv_4_we1 MemPortWE2 1 1 }  { outputConv_4_d1 MemPortDIN2 1 7 } } }
	outputConv_3 { ap_memory {  { outputConv_3_address1 MemPortADDR2 1 11 }  { outputConv_3_ce1 MemPortCE2 1 1 }  { outputConv_3_we1 MemPortWE2 1 1 }  { outputConv_3_d1 MemPortDIN2 1 7 } } }
	outputConv_2 { ap_memory {  { outputConv_2_address1 MemPortADDR2 1 11 }  { outputConv_2_ce1 MemPortCE2 1 1 }  { outputConv_2_we1 MemPortWE2 1 1 }  { outputConv_2_d1 MemPortDIN2 1 7 } } }
	outputConv_1 { ap_memory {  { outputConv_1_address1 MemPortADDR2 1 11 }  { outputConv_1_ce1 MemPortCE2 1 1 }  { outputConv_1_we1 MemPortWE2 1 1 }  { outputConv_1_d1 MemPortDIN2 1 7 } } }
	outputConv_0 { ap_memory {  { outputConv_0_address1 MemPortADDR2 1 11 }  { outputConv_0_ce1 MemPortCE2 1 1 }  { outputConv_0_we1 MemPortWE2 1 1 }  { outputConv_0_d1 MemPortDIN2 1 7 } } }
	temp { ap_memory {  { temp_address0 mem_address 1 6 }  { temp_ce0 mem_ce 1 1 }  { temp_q0 mem_dout 0 8 } } }
	temp_1 { ap_memory {  { temp_1_address0 mem_address 1 6 }  { temp_1_ce0 mem_ce 1 1 }  { temp_1_q0 mem_dout 0 8 } } }
	temp_2 { ap_memory {  { temp_2_address0 mem_address 1 6 }  { temp_2_ce0 mem_ce 1 1 }  { temp_2_q0 mem_dout 0 8 } } }
	temp_3 { ap_memory {  { temp_3_address0 mem_address 1 6 }  { temp_3_ce0 mem_ce 1 1 }  { temp_3_q0 mem_dout 0 8 } } }
	temp_4 { ap_memory {  { temp_4_address0 mem_address 1 6 }  { temp_4_ce0 mem_ce 1 1 }  { temp_4_q0 mem_dout 0 8 } } }
	temp_5 { ap_memory {  { temp_5_address0 mem_address 1 6 }  { temp_5_ce0 mem_ce 1 1 }  { temp_5_q0 mem_dout 0 8 } } }
	temp_6 { ap_memory {  { temp_6_address0 mem_address 1 6 }  { temp_6_ce0 mem_ce 1 1 }  { temp_6_q0 mem_dout 0 8 } } }
	temp_7 { ap_memory {  { temp_7_address0 mem_address 1 6 }  { temp_7_ce0 mem_ce 1 1 }  { temp_7_q0 mem_dout 0 8 } } }
	temp_8 { ap_memory {  { temp_8_address0 mem_address 1 6 }  { temp_8_ce0 mem_ce 1 1 }  { temp_8_q0 mem_dout 0 8 } } }
	temp_9 { ap_memory {  { temp_9_address0 mem_address 1 6 }  { temp_9_ce0 mem_ce 1 1 }  { temp_9_q0 mem_dout 0 8 } } }
	temp_10 { ap_memory {  { temp_10_address0 mem_address 1 6 }  { temp_10_ce0 mem_ce 1 1 }  { temp_10_q0 mem_dout 0 8 } } }
	temp_11 { ap_memory {  { temp_11_address0 mem_address 1 6 }  { temp_11_ce0 mem_ce 1 1 }  { temp_11_q0 mem_dout 0 8 } } }
	temp_12 { ap_memory {  { temp_12_address0 mem_address 1 6 }  { temp_12_ce0 mem_ce 1 1 }  { temp_12_q0 mem_dout 0 8 } } }
	temp_13 { ap_memory {  { temp_13_address0 mem_address 1 6 }  { temp_13_ce0 mem_ce 1 1 }  { temp_13_q0 mem_dout 0 8 } } }
	temp_14 { ap_memory {  { temp_14_address0 mem_address 1 6 }  { temp_14_ce0 mem_ce 1 1 }  { temp_14_q0 mem_dout 0 8 } } }
	temp_15 { ap_memory {  { temp_15_address0 mem_address 1 6 }  { temp_15_ce0 mem_ce 1 1 }  { temp_15_q0 mem_dout 0 8 } } }
}

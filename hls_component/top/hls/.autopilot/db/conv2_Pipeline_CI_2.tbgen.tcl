set moduleName conv2_Pipeline_CI_2
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
set C_modelName {conv2_Pipeline_CI_2}
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
set C_modelArgList {
	{ add_ln85 int 5 regular  }
	{ add_ln83 int 5 regular  }
	{ add_ln83_1 int 4 regular  }
	{ add_ln82 int 4 regular  }
	{ and_ln85_3 int 1 regular  }
	{ sext_ln85 int 5 regular  }
	{ input_0 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_1 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_2 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_3 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_4 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_5 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_6 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ input_7 int 7 regular {array 196 { 1 1 } 1 1 }  }
	{ zext_ln82 int 8 regular  }
	{ and_ln85_2 int 1 regular  }
	{ zext_ln70_1 int 4 regular  }
	{ and_ln85_1 int 1 regular  }
	{ shl_ln int 7 regular  }
	{ mul_ln104 int 3 regular  }
	{ empty int 3 regular  }
	{ and_ln85 int 1 regular  }
	{ zext_ln85_1 int 4 regular  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 int 8 regular {pointer 2} {global 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add_ln85", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln83", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln83_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln82", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln85_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln85", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln82", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln85_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln70_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln85_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln104", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln85", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln85_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln85 sc_in sc_lv 5 signal 0 } 
	{ add_ln83 sc_in sc_lv 5 signal 1 } 
	{ add_ln83_1 sc_in sc_lv 4 signal 2 } 
	{ add_ln82 sc_in sc_lv 4 signal 3 } 
	{ and_ln85_3 sc_in sc_lv 1 signal 4 } 
	{ sext_ln85 sc_in sc_lv 5 signal 5 } 
	{ input_0_address0 sc_out sc_lv 8 signal 6 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_0_q0 sc_in sc_lv 7 signal 6 } 
	{ input_0_address1 sc_out sc_lv 8 signal 6 } 
	{ input_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ input_0_q1 sc_in sc_lv 7 signal 6 } 
	{ input_1_address0 sc_out sc_lv 8 signal 7 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_1_q0 sc_in sc_lv 7 signal 7 } 
	{ input_1_address1 sc_out sc_lv 8 signal 7 } 
	{ input_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ input_1_q1 sc_in sc_lv 7 signal 7 } 
	{ input_2_address0 sc_out sc_lv 8 signal 8 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_2_q0 sc_in sc_lv 7 signal 8 } 
	{ input_2_address1 sc_out sc_lv 8 signal 8 } 
	{ input_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ input_2_q1 sc_in sc_lv 7 signal 8 } 
	{ input_3_address0 sc_out sc_lv 8 signal 9 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_3_q0 sc_in sc_lv 7 signal 9 } 
	{ input_3_address1 sc_out sc_lv 8 signal 9 } 
	{ input_3_ce1 sc_out sc_logic 1 signal 9 } 
	{ input_3_q1 sc_in sc_lv 7 signal 9 } 
	{ input_4_address0 sc_out sc_lv 8 signal 10 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_4_q0 sc_in sc_lv 7 signal 10 } 
	{ input_4_address1 sc_out sc_lv 8 signal 10 } 
	{ input_4_ce1 sc_out sc_logic 1 signal 10 } 
	{ input_4_q1 sc_in sc_lv 7 signal 10 } 
	{ input_5_address0 sc_out sc_lv 8 signal 11 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_5_q0 sc_in sc_lv 7 signal 11 } 
	{ input_5_address1 sc_out sc_lv 8 signal 11 } 
	{ input_5_ce1 sc_out sc_logic 1 signal 11 } 
	{ input_5_q1 sc_in sc_lv 7 signal 11 } 
	{ input_6_address0 sc_out sc_lv 8 signal 12 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_6_q0 sc_in sc_lv 7 signal 12 } 
	{ input_6_address1 sc_out sc_lv 8 signal 12 } 
	{ input_6_ce1 sc_out sc_logic 1 signal 12 } 
	{ input_6_q1 sc_in sc_lv 7 signal 12 } 
	{ input_7_address0 sc_out sc_lv 8 signal 13 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_7_q0 sc_in sc_lv 7 signal 13 } 
	{ input_7_address1 sc_out sc_lv 8 signal 13 } 
	{ input_7_ce1 sc_out sc_logic 1 signal 13 } 
	{ input_7_q1 sc_in sc_lv 7 signal 13 } 
	{ zext_ln82 sc_in sc_lv 8 signal 14 } 
	{ and_ln85_2 sc_in sc_lv 1 signal 15 } 
	{ zext_ln70_1 sc_in sc_lv 4 signal 16 } 
	{ and_ln85_1 sc_in sc_lv 1 signal 17 } 
	{ shl_ln sc_in sc_lv 7 signal 18 } 
	{ mul_ln104 sc_in sc_lv 3 signal 19 } 
	{ empty sc_in sc_lv 3 signal 20 } 
	{ and_ln85 sc_in sc_lv 1 signal 21 } 
	{ zext_ln85_1 sc_in sc_lv 4 signal 22 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_i sc_in sc_lv 8 signal 23 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o sc_out sc_lv 8 signal 23 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_i sc_in sc_lv 8 signal 24 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o sc_out sc_lv 8 signal 24 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_i sc_in sc_lv 8 signal 25 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o sc_out sc_lv 8 signal 25 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_i sc_in sc_lv 8 signal 26 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o sc_out sc_lv 8 signal 26 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_i sc_in sc_lv 8 signal 27 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o sc_out sc_lv 8 signal 27 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_i sc_in sc_lv 8 signal 28 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o sc_out sc_lv 8 signal 28 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_i sc_in sc_lv 8 signal 29 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o sc_out sc_lv 8 signal 29 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_i sc_in sc_lv 8 signal 30 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o sc_out sc_lv 8 signal 30 } 
	{ conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o_ap_vld sc_out sc_logic 1 outvld 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln85", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "add_ln85", "role": "default" }} , 
 	{ "name": "add_ln83", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "add_ln83", "role": "default" }} , 
 	{ "name": "add_ln83_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln83_1", "role": "default" }} , 
 	{ "name": "add_ln82", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln82", "role": "default" }} , 
 	{ "name": "and_ln85_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln85_3", "role": "default" }} , 
 	{ "name": "sext_ln85", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sext_ln85", "role": "default" }} , 
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
 	{ "name": "zext_ln82", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln82", "role": "default" }} , 
 	{ "name": "and_ln85_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln85_2", "role": "default" }} , 
 	{ "name": "zext_ln70_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln70_1", "role": "default" }} , 
 	{ "name": "and_ln85_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln85_1", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "mul_ln104", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul_ln104", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "and_ln85", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln85", "role": "default" }} , 
 	{ "name": "zext_ln85_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln85_1", "role": "default" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8", "role": "o_ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln85 { ap_none {  { add_ln85 in_data 0 5 } } }
	add_ln83 { ap_none {  { add_ln83 in_data 0 5 } } }
	add_ln83_1 { ap_none {  { add_ln83_1 in_data 0 4 } } }
	add_ln82 { ap_none {  { add_ln82 in_data 0 4 } } }
	and_ln85_3 { ap_none {  { and_ln85_3 in_data 0 1 } } }
	sext_ln85 { ap_none {  { sext_ln85 in_data 0 5 } } }
	input_0 { ap_memory {  { input_0_address0 mem_address 1 8 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 7 }  { input_0_address1 MemPortADDR2 1 8 }  { input_0_ce1 MemPortCE2 1 1 }  { input_0_q1 MemPortDOUT2 0 7 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 8 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 7 }  { input_1_address1 MemPortADDR2 1 8 }  { input_1_ce1 MemPortCE2 1 1 }  { input_1_q1 MemPortDOUT2 0 7 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 8 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 7 }  { input_2_address1 MemPortADDR2 1 8 }  { input_2_ce1 MemPortCE2 1 1 }  { input_2_q1 MemPortDOUT2 0 7 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 8 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 7 }  { input_3_address1 MemPortADDR2 1 8 }  { input_3_ce1 MemPortCE2 1 1 }  { input_3_q1 MemPortDOUT2 0 7 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 8 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 7 }  { input_4_address1 MemPortADDR2 1 8 }  { input_4_ce1 MemPortCE2 1 1 }  { input_4_q1 MemPortDOUT2 0 7 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 8 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 7 }  { input_5_address1 MemPortADDR2 1 8 }  { input_5_ce1 MemPortCE2 1 1 }  { input_5_q1 MemPortDOUT2 0 7 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 8 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 7 }  { input_6_address1 MemPortADDR2 1 8 }  { input_6_ce1 MemPortCE2 1 1 }  { input_6_q1 MemPortDOUT2 0 7 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 8 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 7 }  { input_7_address1 MemPortADDR2 1 8 }  { input_7_ce1 MemPortCE2 1 1 }  { input_7_q1 MemPortDOUT2 0 7 } } }
	zext_ln82 { ap_none {  { zext_ln82 in_data 0 8 } } }
	and_ln85_2 { ap_none {  { and_ln85_2 in_data 0 1 } } }
	zext_ln70_1 { ap_none {  { zext_ln70_1 in_data 0 4 } } }
	and_ln85_1 { ap_none {  { and_ln85_1 in_data 0 1 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 7 } } }
	mul_ln104 { ap_none {  { mul_ln104 in_data 0 3 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	and_ln85 { ap_none {  { and_ln85 in_data 0 1 } } }
	zext_ln85_1 { ap_none {  { zext_ln85_1 in_data 0 4 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 { ap_ovld {  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_i in_data 0 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o out_data 1 8 }  { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o_ap_vld out_vld 1 1 } } }
}

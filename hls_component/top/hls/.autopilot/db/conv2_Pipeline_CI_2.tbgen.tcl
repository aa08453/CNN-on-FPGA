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
set cdfgNum 22
set C_modelName {conv2_Pipeline_CI_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict temp { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_1 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_2 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_3 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_4 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_5 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_6 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict temp_7 { MEM_WIDTH 8 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight { MEM_WIDTH 8 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ add_ln110 int 5 regular  }
	{ add_ln108 int 5 regular  }
	{ add_ln108_1 int 4 regular  }
	{ add_ln107 int 4 regular  }
	{ and_ln110_3 int 1 regular  }
	{ sext_ln110 int 5 regular  }
	{ temp int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_1 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_2 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_3 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_4 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_5 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_6 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ temp_7 int 8 regular {array 196 { 1 1 } 1 1 }  }
	{ zext_ln127 int 8 regular  }
	{ and_ln110_2 int 1 regular  }
	{ zext_ln95 int 4 regular  }
	{ and_ln110_1 int 1 regular  }
	{ shl_ln int 7 regular  }
	{ mul_ln107 int 3 regular  }
	{ empty int 3 regular  }
	{ and_ln110 int 1 regular  }
	{ zext_ln110_1 int 4 regular  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums int 8 regular {pointer 2} {global 2}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight int 8 regular {array 128 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add_ln110", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln108", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln108_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln107", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln110_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln110", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln127", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln110_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln95", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln110_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln107", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln110", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln110_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 120
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln110 sc_in sc_lv 5 signal 0 } 
	{ add_ln108 sc_in sc_lv 5 signal 1 } 
	{ add_ln108_1 sc_in sc_lv 4 signal 2 } 
	{ add_ln107 sc_in sc_lv 4 signal 3 } 
	{ and_ln110_3 sc_in sc_lv 1 signal 4 } 
	{ sext_ln110 sc_in sc_lv 5 signal 5 } 
	{ temp_address0 sc_out sc_lv 8 signal 6 } 
	{ temp_ce0 sc_out sc_logic 1 signal 6 } 
	{ temp_q0 sc_in sc_lv 8 signal 6 } 
	{ temp_address1 sc_out sc_lv 8 signal 6 } 
	{ temp_ce1 sc_out sc_logic 1 signal 6 } 
	{ temp_q1 sc_in sc_lv 8 signal 6 } 
	{ temp_1_address0 sc_out sc_lv 8 signal 7 } 
	{ temp_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ temp_1_q0 sc_in sc_lv 8 signal 7 } 
	{ temp_1_address1 sc_out sc_lv 8 signal 7 } 
	{ temp_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ temp_1_q1 sc_in sc_lv 8 signal 7 } 
	{ temp_2_address0 sc_out sc_lv 8 signal 8 } 
	{ temp_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ temp_2_q0 sc_in sc_lv 8 signal 8 } 
	{ temp_2_address1 sc_out sc_lv 8 signal 8 } 
	{ temp_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ temp_2_q1 sc_in sc_lv 8 signal 8 } 
	{ temp_3_address0 sc_out sc_lv 8 signal 9 } 
	{ temp_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ temp_3_q0 sc_in sc_lv 8 signal 9 } 
	{ temp_3_address1 sc_out sc_lv 8 signal 9 } 
	{ temp_3_ce1 sc_out sc_logic 1 signal 9 } 
	{ temp_3_q1 sc_in sc_lv 8 signal 9 } 
	{ temp_4_address0 sc_out sc_lv 8 signal 10 } 
	{ temp_4_ce0 sc_out sc_logic 1 signal 10 } 
	{ temp_4_q0 sc_in sc_lv 8 signal 10 } 
	{ temp_4_address1 sc_out sc_lv 8 signal 10 } 
	{ temp_4_ce1 sc_out sc_logic 1 signal 10 } 
	{ temp_4_q1 sc_in sc_lv 8 signal 10 } 
	{ temp_5_address0 sc_out sc_lv 8 signal 11 } 
	{ temp_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ temp_5_q0 sc_in sc_lv 8 signal 11 } 
	{ temp_5_address1 sc_out sc_lv 8 signal 11 } 
	{ temp_5_ce1 sc_out sc_logic 1 signal 11 } 
	{ temp_5_q1 sc_in sc_lv 8 signal 11 } 
	{ temp_6_address0 sc_out sc_lv 8 signal 12 } 
	{ temp_6_ce0 sc_out sc_logic 1 signal 12 } 
	{ temp_6_q0 sc_in sc_lv 8 signal 12 } 
	{ temp_6_address1 sc_out sc_lv 8 signal 12 } 
	{ temp_6_ce1 sc_out sc_logic 1 signal 12 } 
	{ temp_6_q1 sc_in sc_lv 8 signal 12 } 
	{ temp_7_address0 sc_out sc_lv 8 signal 13 } 
	{ temp_7_ce0 sc_out sc_logic 1 signal 13 } 
	{ temp_7_q0 sc_in sc_lv 8 signal 13 } 
	{ temp_7_address1 sc_out sc_lv 8 signal 13 } 
	{ temp_7_ce1 sc_out sc_logic 1 signal 13 } 
	{ temp_7_q1 sc_in sc_lv 8 signal 13 } 
	{ zext_ln127 sc_in sc_lv 8 signal 14 } 
	{ and_ln110_2 sc_in sc_lv 1 signal 15 } 
	{ zext_ln95 sc_in sc_lv 4 signal 16 } 
	{ and_ln110_1 sc_in sc_lv 1 signal 17 } 
	{ shl_ln sc_in sc_lv 7 signal 18 } 
	{ mul_ln107 sc_in sc_lv 3 signal 19 } 
	{ empty sc_in sc_lv 3 signal 20 } 
	{ and_ln110 sc_in sc_lv 1 signal 21 } 
	{ zext_ln110_1 sc_in sc_lv 4 signal 22 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_i sc_in sc_lv 8 signal 23 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o sc_out sc_lv 8 signal 23 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_address0 sc_out sc_lv 7 signal 24 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_ce0 sc_out sc_logic 1 signal 24 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_q0 sc_in sc_lv 8 signal 24 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_i sc_in sc_lv 8 signal 25 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o sc_out sc_lv 8 signal 25 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_i sc_in sc_lv 8 signal 26 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o sc_out sc_lv 8 signal 26 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_i sc_in sc_lv 8 signal 27 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o sc_out sc_lv 8 signal 27 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_i sc_in sc_lv 8 signal 28 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o sc_out sc_lv 8 signal 28 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_i sc_in sc_lv 8 signal 29 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o sc_out sc_lv 8 signal 29 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_i sc_in sc_lv 8 signal 30 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o sc_out sc_lv 8 signal 30 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_i sc_in sc_lv 8 signal 31 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o sc_out sc_lv 8 signal 31 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_address0 sc_out sc_lv 7 signal 32 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_q0 sc_in sc_lv 8 signal 32 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_address0 sc_out sc_lv 7 signal 33 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_q0 sc_in sc_lv 8 signal 33 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_address0 sc_out sc_lv 7 signal 34 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_ce0 sc_out sc_logic 1 signal 34 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_q0 sc_in sc_lv 8 signal 34 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_address0 sc_out sc_lv 7 signal 35 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_q0 sc_in sc_lv 8 signal 35 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_address0 sc_out sc_lv 7 signal 36 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_ce0 sc_out sc_logic 1 signal 36 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_q0 sc_in sc_lv 8 signal 36 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_address0 sc_out sc_lv 7 signal 37 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_ce0 sc_out sc_logic 1 signal 37 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_q0 sc_in sc_lv 8 signal 37 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_address0 sc_out sc_lv 7 signal 38 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_q0 sc_in sc_lv 8 signal 38 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_address0 sc_out sc_lv 7 signal 39 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_ce0 sc_out sc_logic 1 signal 39 } 
	{ conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_q0 sc_in sc_lv 8 signal 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln110", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "add_ln110", "role": "default" }} , 
 	{ "name": "add_ln108", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "add_ln108", "role": "default" }} , 
 	{ "name": "add_ln108_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln108_1", "role": "default" }} , 
 	{ "name": "add_ln107", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln107", "role": "default" }} , 
 	{ "name": "and_ln110_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln110_3", "role": "default" }} , 
 	{ "name": "sext_ln110", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sext_ln110", "role": "default" }} , 
 	{ "name": "temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "address0" }} , 
 	{ "name": "temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce0" }} , 
 	{ "name": "temp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "q0" }} , 
 	{ "name": "temp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "address1" }} , 
 	{ "name": "temp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce1" }} , 
 	{ "name": "temp_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "q1" }} , 
 	{ "name": "temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "address0" }} , 
 	{ "name": "temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_1", "role": "ce0" }} , 
 	{ "name": "temp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "q0" }} , 
 	{ "name": "temp_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "address1" }} , 
 	{ "name": "temp_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_1", "role": "ce1" }} , 
 	{ "name": "temp_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "q1" }} , 
 	{ "name": "temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "address0" }} , 
 	{ "name": "temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_2", "role": "ce0" }} , 
 	{ "name": "temp_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "q0" }} , 
 	{ "name": "temp_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "address1" }} , 
 	{ "name": "temp_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_2", "role": "ce1" }} , 
 	{ "name": "temp_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "q1" }} , 
 	{ "name": "temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "address0" }} , 
 	{ "name": "temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_3", "role": "ce0" }} , 
 	{ "name": "temp_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "q0" }} , 
 	{ "name": "temp_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "address1" }} , 
 	{ "name": "temp_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_3", "role": "ce1" }} , 
 	{ "name": "temp_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "q1" }} , 
 	{ "name": "temp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "address0" }} , 
 	{ "name": "temp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_4", "role": "ce0" }} , 
 	{ "name": "temp_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "q0" }} , 
 	{ "name": "temp_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "address1" }} , 
 	{ "name": "temp_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_4", "role": "ce1" }} , 
 	{ "name": "temp_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "q1" }} , 
 	{ "name": "temp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "address0" }} , 
 	{ "name": "temp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_5", "role": "ce0" }} , 
 	{ "name": "temp_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "q0" }} , 
 	{ "name": "temp_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "address1" }} , 
 	{ "name": "temp_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_5", "role": "ce1" }} , 
 	{ "name": "temp_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "q1" }} , 
 	{ "name": "temp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "address0" }} , 
 	{ "name": "temp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_6", "role": "ce0" }} , 
 	{ "name": "temp_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "q0" }} , 
 	{ "name": "temp_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "address1" }} , 
 	{ "name": "temp_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_6", "role": "ce1" }} , 
 	{ "name": "temp_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "q1" }} , 
 	{ "name": "temp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "address0" }} , 
 	{ "name": "temp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_7", "role": "ce0" }} , 
 	{ "name": "temp_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "q0" }} , 
 	{ "name": "temp_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "address1" }} , 
 	{ "name": "temp_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_7", "role": "ce1" }} , 
 	{ "name": "temp_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "q1" }} , 
 	{ "name": "zext_ln127", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln127", "role": "default" }} , 
 	{ "name": "and_ln110_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln110_2", "role": "default" }} , 
 	{ "name": "zext_ln95", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln95", "role": "default" }} , 
 	{ "name": "and_ln110_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln110_1", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "mul_ln107", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul_ln107", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "and_ln110", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln110", "role": "default" }} , 
 	{ "name": "zext_ln110_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln110_1", "role": "default" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums", "role": "i" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums", "role": "o" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums", "role": "o_ap_vld" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1", "role": "q0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight", "role": "address0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight", "role": "ce0" }} , 
 	{ "name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2_Pipeline_CI_2 {
		add_ln110 {Type I LastRead 0 FirstWrite -1}
		add_ln108 {Type I LastRead 0 FirstWrite -1}
		add_ln108_1 {Type I LastRead 0 FirstWrite -1}
		add_ln107 {Type I LastRead 0 FirstWrite -1}
		and_ln110_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln110 {Type I LastRead 0 FirstWrite -1}
		temp {Type I LastRead 2 FirstWrite -1}
		temp_1 {Type I LastRead 2 FirstWrite -1}
		temp_2 {Type I LastRead 2 FirstWrite -1}
		temp_3 {Type I LastRead 2 FirstWrite -1}
		temp_4 {Type I LastRead 2 FirstWrite -1}
		temp_5 {Type I LastRead 2 FirstWrite -1}
		temp_6 {Type I LastRead 2 FirstWrite -1}
		temp_7 {Type I LastRead 2 FirstWrite -1}
		zext_ln127 {Type I LastRead 0 FirstWrite -1}
		and_ln110_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln95 {Type I LastRead 0 FirstWrite -1}
		and_ln110_1 {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		mul_ln107 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		and_ln110 {Type I LastRead 0 FirstWrite -1}
		zext_ln110_1 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead 19 FirstWrite 5}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln110 { ap_none {  { add_ln110 in_data 0 5 } } }
	add_ln108 { ap_none {  { add_ln108 in_data 0 5 } } }
	add_ln108_1 { ap_none {  { add_ln108_1 in_data 0 4 } } }
	add_ln107 { ap_none {  { add_ln107 in_data 0 4 } } }
	and_ln110_3 { ap_none {  { and_ln110_3 in_data 0 1 } } }
	sext_ln110 { ap_none {  { sext_ln110 in_data 0 5 } } }
	temp { ap_memory {  { temp_address0 mem_address 1 8 }  { temp_ce0 mem_ce 1 1 }  { temp_q0 mem_dout 0 8 }  { temp_address1 MemPortADDR2 1 8 }  { temp_ce1 MemPortCE2 1 1 }  { temp_q1 MemPortDOUT2 0 8 } } }
	temp_1 { ap_memory {  { temp_1_address0 mem_address 1 8 }  { temp_1_ce0 mem_ce 1 1 }  { temp_1_q0 mem_dout 0 8 }  { temp_1_address1 MemPortADDR2 1 8 }  { temp_1_ce1 MemPortCE2 1 1 }  { temp_1_q1 MemPortDOUT2 0 8 } } }
	temp_2 { ap_memory {  { temp_2_address0 mem_address 1 8 }  { temp_2_ce0 mem_ce 1 1 }  { temp_2_q0 mem_dout 0 8 }  { temp_2_address1 MemPortADDR2 1 8 }  { temp_2_ce1 MemPortCE2 1 1 }  { temp_2_q1 MemPortDOUT2 0 8 } } }
	temp_3 { ap_memory {  { temp_3_address0 mem_address 1 8 }  { temp_3_ce0 mem_ce 1 1 }  { temp_3_q0 mem_dout 0 8 }  { temp_3_address1 MemPortADDR2 1 8 }  { temp_3_ce1 MemPortCE2 1 1 }  { temp_3_q1 MemPortDOUT2 0 8 } } }
	temp_4 { ap_memory {  { temp_4_address0 mem_address 1 8 }  { temp_4_ce0 mem_ce 1 1 }  { temp_4_q0 mem_dout 0 8 }  { temp_4_address1 MemPortADDR2 1 8 }  { temp_4_ce1 MemPortCE2 1 1 }  { temp_4_q1 MemPortDOUT2 0 8 } } }
	temp_5 { ap_memory {  { temp_5_address0 mem_address 1 8 }  { temp_5_ce0 mem_ce 1 1 }  { temp_5_q0 mem_dout 0 8 }  { temp_5_address1 MemPortADDR2 1 8 }  { temp_5_ce1 MemPortCE2 1 1 }  { temp_5_q1 MemPortDOUT2 0 8 } } }
	temp_6 { ap_memory {  { temp_6_address0 mem_address 1 8 }  { temp_6_ce0 mem_ce 1 1 }  { temp_6_q0 mem_dout 0 8 }  { temp_6_address1 MemPortADDR2 1 8 }  { temp_6_ce1 MemPortCE2 1 1 }  { temp_6_q1 MemPortDOUT2 0 8 } } }
	temp_7 { ap_memory {  { temp_7_address0 mem_address 1 8 }  { temp_7_ce0 mem_ce 1 1 }  { temp_7_q0 mem_dout 0 8 }  { temp_7_address1 MemPortADDR2 1 8 }  { temp_7_ce1 MemPortCE2 1 1 }  { temp_7_q1 MemPortDOUT2 0 8 } } }
	zext_ln127 { ap_none {  { zext_ln127 in_data 0 8 } } }
	and_ln110_2 { ap_none {  { and_ln110_2 in_data 0 1 } } }
	zext_ln95 { ap_none {  { zext_ln95 in_data 0 4 } } }
	and_ln110_1 { ap_none {  { and_ln110_1 in_data 0 1 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 7 } } }
	mul_ln107 { ap_none {  { mul_ln107 in_data 0 3 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	and_ln110 { ap_none {  { and_ln110 in_data 0 1 } } }
	zext_ln110_1 { ap_none {  { zext_ln110_1 in_data 0 4 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums { ap_ovld {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_i in_data 0 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o out_data 1 8 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld out_vld 1 1 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_q0 mem_dout 0 8 } } }
	conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight { ap_memory {  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_address0 mem_address 1 7 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_ce0 mem_ce 1 1 }  { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_q0 mem_dout 0 8 } } }
}

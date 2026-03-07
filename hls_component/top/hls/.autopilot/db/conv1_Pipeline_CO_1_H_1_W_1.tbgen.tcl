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
set cdfgNum 22
set C_modelName {conv1_Pipeline_CO_1_H_1_W_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
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
	{ gmem0 int 8 regular {axi_master 1}  }
	{ outputConv int 64 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68 int 8 regular  }
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
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66 int 8 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71 int 8 regular  }
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 int 8 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputConv","offset": { "type": "dynamic","port_name": "outputConv","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool","offset": { "type": "dynamic","port_name": "outputPool","bundle": "control"},"direction": "READWRITE"},{"cName": "outputConv2","offset": { "type": "dynamic","port_name": "outputConv2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool2","offset": { "type": "dynamic","port_name": "outputPool2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "outputConv", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
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
 	{ "Name" : "temp_15", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ outputConv sc_in sc_lv 64 signal 1 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load sc_in sc_lv 8 signal 2 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load sc_in sc_lv 8 signal 3 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load sc_in sc_lv 8 signal 4 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load sc_in sc_lv 8 signal 5 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load sc_in sc_lv 8 signal 6 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load sc_in sc_lv 8 signal 7 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load sc_in sc_lv 8 signal 8 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load sc_in sc_lv 8 signal 9 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load sc_in sc_lv 8 signal 10 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62 sc_in sc_lv 8 signal 11 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63 sc_in sc_lv 8 signal 12 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64 sc_in sc_lv 8 signal 13 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65 sc_in sc_lv 8 signal 14 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66 sc_in sc_lv 8 signal 15 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67 sc_in sc_lv 8 signal 16 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68 sc_in sc_lv 8 signal 17 } 
	{ temp_address0 sc_out sc_lv 6 signal 18 } 
	{ temp_ce0 sc_out sc_logic 1 signal 18 } 
	{ temp_q0 sc_in sc_lv 8 signal 18 } 
	{ temp_1_address0 sc_out sc_lv 6 signal 19 } 
	{ temp_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ temp_1_q0 sc_in sc_lv 8 signal 19 } 
	{ temp_2_address0 sc_out sc_lv 6 signal 20 } 
	{ temp_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ temp_2_q0 sc_in sc_lv 8 signal 20 } 
	{ temp_3_address0 sc_out sc_lv 6 signal 21 } 
	{ temp_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ temp_3_q0 sc_in sc_lv 8 signal 21 } 
	{ temp_4_address0 sc_out sc_lv 6 signal 22 } 
	{ temp_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ temp_4_q0 sc_in sc_lv 8 signal 22 } 
	{ temp_5_address0 sc_out sc_lv 6 signal 23 } 
	{ temp_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ temp_5_q0 sc_in sc_lv 8 signal 23 } 
	{ temp_6_address0 sc_out sc_lv 6 signal 24 } 
	{ temp_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ temp_6_q0 sc_in sc_lv 8 signal 24 } 
	{ temp_7_address0 sc_out sc_lv 6 signal 25 } 
	{ temp_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ temp_7_q0 sc_in sc_lv 8 signal 25 } 
	{ temp_8_address0 sc_out sc_lv 6 signal 26 } 
	{ temp_8_ce0 sc_out sc_logic 1 signal 26 } 
	{ temp_8_q0 sc_in sc_lv 8 signal 26 } 
	{ temp_9_address0 sc_out sc_lv 6 signal 27 } 
	{ temp_9_ce0 sc_out sc_logic 1 signal 27 } 
	{ temp_9_q0 sc_in sc_lv 8 signal 27 } 
	{ temp_10_address0 sc_out sc_lv 6 signal 28 } 
	{ temp_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ temp_10_q0 sc_in sc_lv 8 signal 28 } 
	{ temp_11_address0 sc_out sc_lv 6 signal 29 } 
	{ temp_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ temp_11_q0 sc_in sc_lv 8 signal 29 } 
	{ temp_12_address0 sc_out sc_lv 6 signal 30 } 
	{ temp_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ temp_12_q0 sc_in sc_lv 8 signal 30 } 
	{ temp_13_address0 sc_out sc_lv 6 signal 31 } 
	{ temp_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ temp_13_q0 sc_in sc_lv 8 signal 31 } 
	{ temp_14_address0 sc_out sc_lv 6 signal 32 } 
	{ temp_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ temp_14_q0 sc_in sc_lv 8 signal 32 } 
	{ temp_15_address0 sc_out sc_lv 6 signal 33 } 
	{ temp_15_ce0 sc_out sc_logic 1 signal 33 } 
	{ temp_15_q0 sc_in sc_lv 8 signal 33 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load sc_in sc_lv 8 signal 34 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load sc_in sc_lv 8 signal 35 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69 sc_in sc_lv 8 signal 36 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70 sc_in sc_lv 8 signal 37 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71 sc_in sc_lv 8 signal 38 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72 sc_in sc_lv 8 signal 39 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73 sc_in sc_lv 8 signal 40 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74 sc_in sc_lv 8 signal 41 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load sc_in sc_lv 8 signal 42 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75 sc_in sc_lv 8 signal 43 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76 sc_in sc_lv 8 signal 44 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77 sc_in sc_lv 8 signal 45 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78 sc_in sc_lv 8 signal 46 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79 sc_in sc_lv 8 signal 47 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80 sc_in sc_lv 8 signal 48 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81 sc_in sc_lv 8 signal 49 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load sc_in sc_lv 8 signal 50 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82 sc_in sc_lv 8 signal 51 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83 sc_in sc_lv 8 signal 52 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84 sc_in sc_lv 8 signal 53 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85 sc_in sc_lv 8 signal 54 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86 sc_in sc_lv 8 signal 55 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87 sc_in sc_lv 8 signal 56 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88 sc_in sc_lv 8 signal 57 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load sc_in sc_lv 8 signal 58 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89 sc_in sc_lv 8 signal 59 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90 sc_in sc_lv 8 signal 60 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91 sc_in sc_lv 8 signal 61 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92 sc_in sc_lv 8 signal 62 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93 sc_in sc_lv 8 signal 63 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94 sc_in sc_lv 8 signal 64 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95 sc_in sc_lv 8 signal 65 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load sc_in sc_lv 8 signal 66 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96 sc_in sc_lv 8 signal 67 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97 sc_in sc_lv 8 signal 68 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98 sc_in sc_lv 8 signal 69 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99 sc_in sc_lv 8 signal 70 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51 sc_in sc_lv 8 signal 71 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52 sc_in sc_lv 8 signal 72 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53 sc_in sc_lv 8 signal 73 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load sc_in sc_lv 8 signal 74 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54 sc_in sc_lv 8 signal 75 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55 sc_in sc_lv 8 signal 76 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56 sc_in sc_lv 8 signal 77 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57 sc_in sc_lv 8 signal 78 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58 sc_in sc_lv 8 signal 79 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59 sc_in sc_lv 8 signal 80 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 sc_in sc_lv 8 signal 81 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load sc_in sc_lv 8 signal 82 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60 sc_in sc_lv 8 signal 83 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61 sc_in sc_lv 8 signal 84 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62 sc_in sc_lv 8 signal 85 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63 sc_in sc_lv 8 signal 86 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64 sc_in sc_lv 8 signal 87 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65 sc_in sc_lv 8 signal 88 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66 sc_in sc_lv 8 signal 89 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load sc_in sc_lv 8 signal 90 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67 sc_in sc_lv 8 signal 91 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68 sc_in sc_lv 8 signal 92 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 sc_in sc_lv 8 signal 93 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69 sc_in sc_lv 8 signal 94 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70 sc_in sc_lv 8 signal 95 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71 sc_in sc_lv 8 signal 96 } 
	{ conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 sc_in sc_lv 8 signal 97 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem0_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem0_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem0_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem0_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem0_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem0_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem0_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem0_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem0_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem0_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem0_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem0_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem0_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem0_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem0_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem0_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem0_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem0_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem0_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem0_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem0_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem0_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem0_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem0_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem0_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem0_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem0_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem0_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem0_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BUSER" }} , 
 	{ "name": "outputConv", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputConv", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68", "role": "default" }} , 
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
 	{ "name": "temp_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_15", "role": "q0" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1_Pipeline_CO_1_H_1_W_1 {
		gmem0 {Type O LastRead -1 FirstWrite 15}
		outputConv {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68 {Type I LastRead 0 FirstWrite -1}
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
		temp_15 {Type I LastRead 3 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71 {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6288", "Max" : "6288"}
	, {"Name" : "Interval", "Min" : "6273", "Max" : "6273"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_0_WSTRB STRB 1 1 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	outputConv { ap_none {  { outputConv in_data 0 64 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_62 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_63 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_64 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_65 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_66 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_67 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_68 in_data 0 8 } } }
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
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_load in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_69 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_70 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_71 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_72 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_73 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_74 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_75 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_76 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_77 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_78 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_79 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_80 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_81 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_82 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_83 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_84 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_85 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_86 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_87 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_88 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_89 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_90 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_91 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_92 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_93 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_94 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_95 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_96 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_97 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_98 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_99 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_51 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_52 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_53 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_54 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_55 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_56 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_57 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_58 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_59 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_60 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_61 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_62 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_63 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_64 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_65 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_66 in_data 0 8 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load { ap_none {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_load in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_67 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_68 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_69 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_70 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_71 in_data 0 8 } } }
	conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 { ap_none {  { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 in_data 0 8 } } }
}

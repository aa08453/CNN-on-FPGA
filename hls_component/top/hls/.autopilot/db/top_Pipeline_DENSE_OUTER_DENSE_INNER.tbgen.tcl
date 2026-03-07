set moduleName top_Pipeline_DENSE_OUTER_DENSE_INNER
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
set C_modelName {top_Pipeline_DENSE_OUTER_DENSE_INNER}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 { MEM_WIDTH 8 MEM_SIZE 98 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem1 int 8 regular {axi_master 0 stable }  }
	{ gmem0 int 8 regular {axi_master 1}  }
	{ local_bias_reload int 8 regular  }
	{ local_bias_1_reload int 8 regular  }
	{ local_bias_2_reload int 8 regular  }
	{ local_bias_3_reload int 8 regular  }
	{ local_bias_4_reload int 8 regular  }
	{ local_bias_5_reload int 8 regular  }
	{ local_bias_6_reload int 8 regular  }
	{ local_bias_7_reload int 8 regular  }
	{ local_bias_8_reload int 8 regular  }
	{ local_bias_9_reload int 8 regular  }
	{ outputDense int 64 regular  }
	{ fcWeight int 64 regular  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 int 8 regular {array 98 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "weight","offset": { "type": "dynamic","port_name": "weight","bundle": "control"},"direction": "READONLY"},{"cName": "bias","offset": { "type": "dynamic","port_name": "bias","bundle": "control"},"direction": "READONLY"},{"cName": "weight2","offset": { "type": "dynamic","port_name": "weight2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "fcWeight","offset": { "type": "dynamic","port_name": "fcWeight","bundle": "control"},"direction": "READONLY"},{"cName": "fcBias","offset": { "type": "dynamic","port_name": "fcBias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputConv","offset": { "type": "dynamic","port_name": "outputConv","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool","offset": { "type": "dynamic","port_name": "outputPool","bundle": "control"},"direction": "READWRITE"},{"cName": "outputConv2","offset": { "type": "dynamic","port_name": "outputConv2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool2","offset": { "type": "dynamic","port_name": "outputPool2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "local_bias_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_1_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_2_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_3_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_4_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_5_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_6_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_7_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_8_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias_9_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outputDense", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fcWeight", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem1_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem1_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem1_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 8 signal 1 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 11 signal 1 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ local_bias_reload sc_in sc_lv 8 signal 2 } 
	{ local_bias_1_reload sc_in sc_lv 8 signal 3 } 
	{ local_bias_2_reload sc_in sc_lv 8 signal 4 } 
	{ local_bias_3_reload sc_in sc_lv 8 signal 5 } 
	{ local_bias_4_reload sc_in sc_lv 8 signal 6 } 
	{ local_bias_5_reload sc_in sc_lv 8 signal 7 } 
	{ local_bias_6_reload sc_in sc_lv 8 signal 8 } 
	{ local_bias_7_reload sc_in sc_lv 8 signal 9 } 
	{ local_bias_8_reload sc_in sc_lv 8 signal 10 } 
	{ local_bias_9_reload sc_in sc_lv 8 signal 11 } 
	{ outputDense sc_in sc_lv 64 signal 12 } 
	{ fcWeight sc_in sc_lv 64 signal 13 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_address0 sc_out sc_lv 7 signal 14 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_ce0 sc_out sc_logic 1 signal 14 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_q0 sc_in sc_lv 8 signal 14 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_address0 sc_out sc_lv 7 signal 15 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_q0 sc_in sc_lv 8 signal 15 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_address0 sc_out sc_lv 7 signal 16 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_q0 sc_in sc_lv 8 signal 16 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_address0 sc_out sc_lv 7 signal 17 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_q0 sc_in sc_lv 8 signal 17 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_address0 sc_out sc_lv 7 signal 18 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_ce0 sc_out sc_logic 1 signal 18 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_q0 sc_in sc_lv 8 signal 18 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_address0 sc_out sc_lv 7 signal 19 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_ce0 sc_out sc_logic 1 signal 19 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_q0 sc_in sc_lv 8 signal 19 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_address0 sc_out sc_lv 7 signal 20 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_ce0 sc_out sc_logic 1 signal 20 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_q0 sc_in sc_lv 8 signal 20 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_address0 sc_out sc_lv 7 signal 21 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_q0 sc_in sc_lv 8 signal 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem1_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem1_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem1_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem1_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem1_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem1_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem1_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem1_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem1_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem1_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem1_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem1_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem1_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem1_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem1_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem1_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem1_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem1_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem1_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem1_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem1_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem1_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem1_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem1_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem1_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem1_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem1_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem1_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem1_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem1_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem1_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem1_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem1_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem1_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BUSER" }} , 
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
 	{ "name": "local_bias_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_reload", "role": "default" }} , 
 	{ "name": "local_bias_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_1_reload", "role": "default" }} , 
 	{ "name": "local_bias_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_2_reload", "role": "default" }} , 
 	{ "name": "local_bias_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_3_reload", "role": "default" }} , 
 	{ "name": "local_bias_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_4_reload", "role": "default" }} , 
 	{ "name": "local_bias_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_5_reload", "role": "default" }} , 
 	{ "name": "local_bias_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_6_reload", "role": "default" }} , 
 	{ "name": "local_bias_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_7_reload", "role": "default" }} , 
 	{ "name": "local_bias_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_8_reload", "role": "default" }} , 
 	{ "name": "local_bias_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_bias_9_reload", "role": "default" }} , 
 	{ "name": "outputDense", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputDense", "role": "default" }} , 
 	{ "name": "fcWeight", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fcWeight", "role": "default" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5", "role": "q0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4", "role": "address0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4", "role": "ce0" }} , 
 	{ "name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	top_Pipeline_DENSE_OUTER_DENSE_INNER {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		gmem0 {Type O LastRead -1 FirstWrite 6}
		local_bias_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_1_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_2_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_3_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_4_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_5_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_6_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_7_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_8_reload {Type I LastRead 0 FirstWrite -1}
		local_bias_9_reload {Type I LastRead 0 FirstWrite -1}
		outputDense {Type I LastRead 0 FirstWrite -1}
		fcWeight {Type I LastRead 0 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 {Type I LastRead 1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7847", "Max" : "7847"}
	, {"Name" : "Interval", "Min" : "7841", "Max" : "7841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 8 }  { m_axi_gmem1_0_WSTRB STRB 1 1 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 8 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 11 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_0_WSTRB STRB 1 1 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	local_bias_reload { ap_none {  { local_bias_reload in_data 0 8 } } }
	local_bias_1_reload { ap_none {  { local_bias_1_reload in_data 0 8 } } }
	local_bias_2_reload { ap_none {  { local_bias_2_reload in_data 0 8 } } }
	local_bias_3_reload { ap_none {  { local_bias_3_reload in_data 0 8 } } }
	local_bias_4_reload { ap_none {  { local_bias_4_reload in_data 0 8 } } }
	local_bias_5_reload { ap_none {  { local_bias_5_reload in_data 0 8 } } }
	local_bias_6_reload { ap_none {  { local_bias_6_reload in_data 0 8 } } }
	local_bias_7_reload { ap_none {  { local_bias_7_reload in_data 0 8 } } }
	local_bias_8_reload { ap_none {  { local_bias_8_reload in_data 0 8 } } }
	local_bias_9_reload { ap_none {  { local_bias_9_reload in_data 0 8 } } }
	outputDense { ap_none {  { outputDense in_data 0 64 } } }
	fcWeight { ap_none {  { fcWeight in_data 0 64 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5_q0 mem_dout 0 8 } } }
	dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 { ap_memory {  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_address0 mem_address 1 7 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_ce0 mem_ce 1 1 }  { dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4_q0 mem_dout 0 8 } } }
}

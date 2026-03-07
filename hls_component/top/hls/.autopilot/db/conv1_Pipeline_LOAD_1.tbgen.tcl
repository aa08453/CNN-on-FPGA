set moduleName conv1_Pipeline_LOAD_1
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
set C_modelName {conv1_Pipeline_LOAD_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict temp_15 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_14 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_13 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_12 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_11 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_10 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_9 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_8 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_7 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_6 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_5 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_4 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_3 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_2 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp_1 { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict temp { MEM_WIDTH 8 MEM_SIZE 49 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 0}  }
	{ input_r int 64 regular  }
	{ temp_15 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_14 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_13 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_12 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_11 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_10 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_9 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_8 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_7 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_6 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_5 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_4 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_3 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_2 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp_1 int 8 regular {array 49 { 3 0 } 0 1 }  }
	{ temp int 8 regular {array 49 { 3 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputConv","offset": { "type": "dynamic","port_name": "outputConv","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool","offset": { "type": "dynamic","port_name": "outputPool","bundle": "control"},"direction": "READWRITE"},{"cName": "outputConv2","offset": { "type": "dynamic","port_name": "outputConv2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool2","offset": { "type": "dynamic","port_name": "outputPool2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "temp_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
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
	{ input_r sc_in sc_lv 64 signal 1 } 
	{ temp_15_address1 sc_out sc_lv 6 signal 2 } 
	{ temp_15_ce1 sc_out sc_logic 1 signal 2 } 
	{ temp_15_we1 sc_out sc_logic 1 signal 2 } 
	{ temp_15_d1 sc_out sc_lv 8 signal 2 } 
	{ temp_14_address1 sc_out sc_lv 6 signal 3 } 
	{ temp_14_ce1 sc_out sc_logic 1 signal 3 } 
	{ temp_14_we1 sc_out sc_logic 1 signal 3 } 
	{ temp_14_d1 sc_out sc_lv 8 signal 3 } 
	{ temp_13_address1 sc_out sc_lv 6 signal 4 } 
	{ temp_13_ce1 sc_out sc_logic 1 signal 4 } 
	{ temp_13_we1 sc_out sc_logic 1 signal 4 } 
	{ temp_13_d1 sc_out sc_lv 8 signal 4 } 
	{ temp_12_address1 sc_out sc_lv 6 signal 5 } 
	{ temp_12_ce1 sc_out sc_logic 1 signal 5 } 
	{ temp_12_we1 sc_out sc_logic 1 signal 5 } 
	{ temp_12_d1 sc_out sc_lv 8 signal 5 } 
	{ temp_11_address1 sc_out sc_lv 6 signal 6 } 
	{ temp_11_ce1 sc_out sc_logic 1 signal 6 } 
	{ temp_11_we1 sc_out sc_logic 1 signal 6 } 
	{ temp_11_d1 sc_out sc_lv 8 signal 6 } 
	{ temp_10_address1 sc_out sc_lv 6 signal 7 } 
	{ temp_10_ce1 sc_out sc_logic 1 signal 7 } 
	{ temp_10_we1 sc_out sc_logic 1 signal 7 } 
	{ temp_10_d1 sc_out sc_lv 8 signal 7 } 
	{ temp_9_address1 sc_out sc_lv 6 signal 8 } 
	{ temp_9_ce1 sc_out sc_logic 1 signal 8 } 
	{ temp_9_we1 sc_out sc_logic 1 signal 8 } 
	{ temp_9_d1 sc_out sc_lv 8 signal 8 } 
	{ temp_8_address1 sc_out sc_lv 6 signal 9 } 
	{ temp_8_ce1 sc_out sc_logic 1 signal 9 } 
	{ temp_8_we1 sc_out sc_logic 1 signal 9 } 
	{ temp_8_d1 sc_out sc_lv 8 signal 9 } 
	{ temp_7_address1 sc_out sc_lv 6 signal 10 } 
	{ temp_7_ce1 sc_out sc_logic 1 signal 10 } 
	{ temp_7_we1 sc_out sc_logic 1 signal 10 } 
	{ temp_7_d1 sc_out sc_lv 8 signal 10 } 
	{ temp_6_address1 sc_out sc_lv 6 signal 11 } 
	{ temp_6_ce1 sc_out sc_logic 1 signal 11 } 
	{ temp_6_we1 sc_out sc_logic 1 signal 11 } 
	{ temp_6_d1 sc_out sc_lv 8 signal 11 } 
	{ temp_5_address1 sc_out sc_lv 6 signal 12 } 
	{ temp_5_ce1 sc_out sc_logic 1 signal 12 } 
	{ temp_5_we1 sc_out sc_logic 1 signal 12 } 
	{ temp_5_d1 sc_out sc_lv 8 signal 12 } 
	{ temp_4_address1 sc_out sc_lv 6 signal 13 } 
	{ temp_4_ce1 sc_out sc_logic 1 signal 13 } 
	{ temp_4_we1 sc_out sc_logic 1 signal 13 } 
	{ temp_4_d1 sc_out sc_lv 8 signal 13 } 
	{ temp_3_address1 sc_out sc_lv 6 signal 14 } 
	{ temp_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ temp_3_we1 sc_out sc_logic 1 signal 14 } 
	{ temp_3_d1 sc_out sc_lv 8 signal 14 } 
	{ temp_2_address1 sc_out sc_lv 6 signal 15 } 
	{ temp_2_ce1 sc_out sc_logic 1 signal 15 } 
	{ temp_2_we1 sc_out sc_logic 1 signal 15 } 
	{ temp_2_d1 sc_out sc_lv 8 signal 15 } 
	{ temp_1_address1 sc_out sc_lv 6 signal 16 } 
	{ temp_1_ce1 sc_out sc_logic 1 signal 16 } 
	{ temp_1_we1 sc_out sc_logic 1 signal 16 } 
	{ temp_1_d1 sc_out sc_lv 8 signal 16 } 
	{ temp_address1 sc_out sc_lv 6 signal 17 } 
	{ temp_ce1 sc_out sc_logic 1 signal 17 } 
	{ temp_we1 sc_out sc_logic 1 signal 17 } 
	{ temp_d1 sc_out sc_lv 8 signal 17 } 
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
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "temp_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_15", "role": "address1" }} , 
 	{ "name": "temp_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_15", "role": "ce1" }} , 
 	{ "name": "temp_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_15", "role": "we1" }} , 
 	{ "name": "temp_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_15", "role": "d1" }} , 
 	{ "name": "temp_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_14", "role": "address1" }} , 
 	{ "name": "temp_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_14", "role": "ce1" }} , 
 	{ "name": "temp_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_14", "role": "we1" }} , 
 	{ "name": "temp_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_14", "role": "d1" }} , 
 	{ "name": "temp_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_13", "role": "address1" }} , 
 	{ "name": "temp_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_13", "role": "ce1" }} , 
 	{ "name": "temp_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_13", "role": "we1" }} , 
 	{ "name": "temp_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_13", "role": "d1" }} , 
 	{ "name": "temp_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_12", "role": "address1" }} , 
 	{ "name": "temp_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_12", "role": "ce1" }} , 
 	{ "name": "temp_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_12", "role": "we1" }} , 
 	{ "name": "temp_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_12", "role": "d1" }} , 
 	{ "name": "temp_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_11", "role": "address1" }} , 
 	{ "name": "temp_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_11", "role": "ce1" }} , 
 	{ "name": "temp_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_11", "role": "we1" }} , 
 	{ "name": "temp_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_11", "role": "d1" }} , 
 	{ "name": "temp_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_10", "role": "address1" }} , 
 	{ "name": "temp_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_10", "role": "ce1" }} , 
 	{ "name": "temp_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_10", "role": "we1" }} , 
 	{ "name": "temp_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_10", "role": "d1" }} , 
 	{ "name": "temp_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_9", "role": "address1" }} , 
 	{ "name": "temp_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_9", "role": "ce1" }} , 
 	{ "name": "temp_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_9", "role": "we1" }} , 
 	{ "name": "temp_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_9", "role": "d1" }} , 
 	{ "name": "temp_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_8", "role": "address1" }} , 
 	{ "name": "temp_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_8", "role": "ce1" }} , 
 	{ "name": "temp_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_8", "role": "we1" }} , 
 	{ "name": "temp_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8", "role": "d1" }} , 
 	{ "name": "temp_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_7", "role": "address1" }} , 
 	{ "name": "temp_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_7", "role": "ce1" }} , 
 	{ "name": "temp_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_7", "role": "we1" }} , 
 	{ "name": "temp_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_7", "role": "d1" }} , 
 	{ "name": "temp_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_6", "role": "address1" }} , 
 	{ "name": "temp_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_6", "role": "ce1" }} , 
 	{ "name": "temp_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_6", "role": "we1" }} , 
 	{ "name": "temp_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_6", "role": "d1" }} , 
 	{ "name": "temp_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_5", "role": "address1" }} , 
 	{ "name": "temp_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_5", "role": "ce1" }} , 
 	{ "name": "temp_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_5", "role": "we1" }} , 
 	{ "name": "temp_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5", "role": "d1" }} , 
 	{ "name": "temp_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_4", "role": "address1" }} , 
 	{ "name": "temp_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_4", "role": "ce1" }} , 
 	{ "name": "temp_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_4", "role": "we1" }} , 
 	{ "name": "temp_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_4", "role": "d1" }} , 
 	{ "name": "temp_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_3", "role": "address1" }} , 
 	{ "name": "temp_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_3", "role": "ce1" }} , 
 	{ "name": "temp_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_3", "role": "we1" }} , 
 	{ "name": "temp_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "d1" }} , 
 	{ "name": "temp_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_2", "role": "address1" }} , 
 	{ "name": "temp_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_2", "role": "ce1" }} , 
 	{ "name": "temp_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_2", "role": "we1" }} , 
 	{ "name": "temp_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "d1" }} , 
 	{ "name": "temp_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp_1", "role": "address1" }} , 
 	{ "name": "temp_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_1", "role": "ce1" }} , 
 	{ "name": "temp_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_1", "role": "we1" }} , 
 	{ "name": "temp_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "d1" }} , 
 	{ "name": "temp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "temp", "role": "address1" }} , 
 	{ "name": "temp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "ce1" }} , 
 	{ "name": "temp_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp", "role": "we1" }} , 
 	{ "name": "temp_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "d1" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1_Pipeline_LOAD_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		temp_15 {Type O LastRead -1 FirstWrite 2}
		temp_14 {Type O LastRead -1 FirstWrite 2}
		temp_13 {Type O LastRead -1 FirstWrite 2}
		temp_12 {Type O LastRead -1 FirstWrite 2}
		temp_11 {Type O LastRead -1 FirstWrite 2}
		temp_10 {Type O LastRead -1 FirstWrite 2}
		temp_9 {Type O LastRead -1 FirstWrite 2}
		temp_8 {Type O LastRead -1 FirstWrite 2}
		temp_7 {Type O LastRead -1 FirstWrite 2}
		temp_6 {Type O LastRead -1 FirstWrite 2}
		temp_5 {Type O LastRead -1 FirstWrite 2}
		temp_4 {Type O LastRead -1 FirstWrite 2}
		temp_3 {Type O LastRead -1 FirstWrite 2}
		temp_2 {Type O LastRead -1 FirstWrite 2}
		temp_1 {Type O LastRead -1 FirstWrite 2}
		temp {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "787", "Max" : "787"}
	, {"Name" : "Interval", "Min" : "785", "Max" : "785"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_0_WSTRB STRB 1 1 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	temp_15 { ap_memory {  { temp_15_address1 MemPortADDR2 1 6 }  { temp_15_ce1 MemPortCE2 1 1 }  { temp_15_we1 MemPortWE2 1 1 }  { temp_15_d1 MemPortDIN2 1 8 } } }
	temp_14 { ap_memory {  { temp_14_address1 MemPortADDR2 1 6 }  { temp_14_ce1 MemPortCE2 1 1 }  { temp_14_we1 MemPortWE2 1 1 }  { temp_14_d1 MemPortDIN2 1 8 } } }
	temp_13 { ap_memory {  { temp_13_address1 MemPortADDR2 1 6 }  { temp_13_ce1 MemPortCE2 1 1 }  { temp_13_we1 MemPortWE2 1 1 }  { temp_13_d1 MemPortDIN2 1 8 } } }
	temp_12 { ap_memory {  { temp_12_address1 MemPortADDR2 1 6 }  { temp_12_ce1 MemPortCE2 1 1 }  { temp_12_we1 MemPortWE2 1 1 }  { temp_12_d1 MemPortDIN2 1 8 } } }
	temp_11 { ap_memory {  { temp_11_address1 MemPortADDR2 1 6 }  { temp_11_ce1 MemPortCE2 1 1 }  { temp_11_we1 MemPortWE2 1 1 }  { temp_11_d1 MemPortDIN2 1 8 } } }
	temp_10 { ap_memory {  { temp_10_address1 MemPortADDR2 1 6 }  { temp_10_ce1 MemPortCE2 1 1 }  { temp_10_we1 MemPortWE2 1 1 }  { temp_10_d1 MemPortDIN2 1 8 } } }
	temp_9 { ap_memory {  { temp_9_address1 MemPortADDR2 1 6 }  { temp_9_ce1 MemPortCE2 1 1 }  { temp_9_we1 MemPortWE2 1 1 }  { temp_9_d1 MemPortDIN2 1 8 } } }
	temp_8 { ap_memory {  { temp_8_address1 MemPortADDR2 1 6 }  { temp_8_ce1 MemPortCE2 1 1 }  { temp_8_we1 MemPortWE2 1 1 }  { temp_8_d1 MemPortDIN2 1 8 } } }
	temp_7 { ap_memory {  { temp_7_address1 MemPortADDR2 1 6 }  { temp_7_ce1 MemPortCE2 1 1 }  { temp_7_we1 MemPortWE2 1 1 }  { temp_7_d1 MemPortDIN2 1 8 } } }
	temp_6 { ap_memory {  { temp_6_address1 MemPortADDR2 1 6 }  { temp_6_ce1 MemPortCE2 1 1 }  { temp_6_we1 MemPortWE2 1 1 }  { temp_6_d1 MemPortDIN2 1 8 } } }
	temp_5 { ap_memory {  { temp_5_address1 MemPortADDR2 1 6 }  { temp_5_ce1 MemPortCE2 1 1 }  { temp_5_we1 MemPortWE2 1 1 }  { temp_5_d1 MemPortDIN2 1 8 } } }
	temp_4 { ap_memory {  { temp_4_address1 MemPortADDR2 1 6 }  { temp_4_ce1 MemPortCE2 1 1 }  { temp_4_we1 MemPortWE2 1 1 }  { temp_4_d1 MemPortDIN2 1 8 } } }
	temp_3 { ap_memory {  { temp_3_address1 MemPortADDR2 1 6 }  { temp_3_ce1 MemPortCE2 1 1 }  { temp_3_we1 MemPortWE2 1 1 }  { temp_3_d1 MemPortDIN2 1 8 } } }
	temp_2 { ap_memory {  { temp_2_address1 MemPortADDR2 1 6 }  { temp_2_ce1 MemPortCE2 1 1 }  { temp_2_we1 MemPortWE2 1 1 }  { temp_2_d1 MemPortDIN2 1 8 } } }
	temp_1 { ap_memory {  { temp_1_address1 MemPortADDR2 1 6 }  { temp_1_ce1 MemPortCE2 1 1 }  { temp_1_we1 MemPortWE2 1 1 }  { temp_1_d1 MemPortDIN2 1 8 } } }
	temp { ap_memory {  { temp_address1 MemPortADDR2 1 6 }  { temp_ce1 MemPortCE2 1 1 }  { temp_we1 MemPortWE2 1 1 }  { temp_d1 MemPortDIN2 1 8 } } }
}

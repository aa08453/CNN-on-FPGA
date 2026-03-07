set moduleName conv1_Pipeline_LOAD_B
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
set C_modelName {conv1_Pipeline_LOAD_B}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem1 int 8 regular {axi_master 0 stable }  }
	{ bias int 64 regular  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 int 8 regular {pointer 1} {global 1}  }
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias int 8 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "weight","offset": { "type": "dynamic","port_name": "weight","bundle": "control"},"direction": "READONLY"},{"cName": "bias","offset": { "type": "dynamic","port_name": "bias","bundle": "control"},"direction": "READONLY"},{"cName": "weight2","offset": { "type": "dynamic","port_name": "weight2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "fcWeight","offset": { "type": "dynamic","port_name": "fcWeight","bundle": "control"},"direction": "READONLY"},{"cName": "fcBias","offset": { "type": "dynamic","port_name": "fcBias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 69
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
	{ bias sc_in sc_lv 64 signal 1 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 sc_out sc_lv 8 signal 2 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 sc_out sc_lv 8 signal 3 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 sc_out sc_lv 8 signal 4 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 sc_out sc_lv 8 signal 5 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 sc_out sc_lv 8 signal 6 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 sc_out sc_lv 8 signal 7 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 sc_out sc_lv 8 signal 8 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias sc_out sc_lv 8 signal 9 } 
	{ conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_ap_vld sc_out sc_logic 1 outvld 9 } 
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
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1", "role": "ap_vld" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias", "role": "default" }} , 
 	{ "name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1_Pipeline_LOAD_B {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 8 }  { m_axi_gmem1_0_WSTRB STRB 1 1 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 8 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 11 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	bias { ap_none {  { bias in_data 0 64 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_ap_vld out_vld 1 1 } } }
	conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias { ap_vld {  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias out_data 1 8 }  { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_ap_vld out_vld 1 1 } } }
}

set moduleName conv1
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
set cdfgNum 22
set C_modelName {conv1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 2}  }
	{ input_r int 64 regular  }
	{ outputConv int 64 regular  }
	{ gmem1 int 8 regular {axi_master 0 stable }  }
	{ weight int 64 regular  }
	{ bias int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputConv","offset": { "type": "dynamic","port_name": "outputConv","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool","offset": { "type": "dynamic","port_name": "outputPool","bundle": "control"},"direction": "READWRITE"},{"cName": "outputConv2","offset": { "type": "dynamic","port_name": "outputConv2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool2","offset": { "type": "dynamic","port_name": "outputPool2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outputConv", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "weight","offset": { "type": "dynamic","port_name": "weight","bundle": "control"},"direction": "READONLY"},{"cName": "bias","offset": { "type": "dynamic","port_name": "bias","bundle": "control"},"direction": "READONLY"},{"cName": "weight2","offset": { "type": "dynamic","port_name": "weight2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "fcWeight","offset": { "type": "dynamic","port_name": "fcWeight","bundle": "control"},"direction": "READONLY"},{"cName": "fcBias","offset": { "type": "dynamic","port_name": "fcBias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "weight", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 102
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
	{ outputConv sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem1_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_WDATA sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem1_0_WSTRB sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_RDATA sc_in sc_lv 8 signal 3 } 
	{ m_axi_gmem1_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_RFIFONUM sc_in sc_lv 11 signal 3 } 
	{ m_axi_gmem1_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ weight sc_in sc_lv 64 signal 4 } 
	{ bias sc_in sc_lv 64 signal 5 } 
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
 	{ "name": "outputConv", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputConv", "role": "default" }} , 
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
 	{ "name": "weight", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weight", "role": "default" }} , 
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1 {
		gmem0 {Type IO LastRead 33 FirstWrite -1}
		input_r {Type I LastRead 20 FirstWrite -1}
		outputConv {Type I LastRead 30 FirstWrite -1}
		gmem1 {Type I LastRead 10 FirstWrite -1}
		weight {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 10 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 {Type IO LastRead -1 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type IO LastRead -1 FirstWrite -1}}
	conv1_Pipeline_LOAD_W {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		weight {Type I LastRead 0 FirstWrite -1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 {Type O LastRead -1 FirstWrite 1}
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei {Type O LastRead -1 FirstWrite 1}}
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
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type O LastRead -1 FirstWrite 1}}
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
		temp {Type O LastRead -1 FirstWrite 2}}
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
	{"Name" : "Latency", "Min" : "7196", "Max" : "7196"}
	, {"Name" : "Interval", "Min" : "7196", "Max" : "7196"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_0_WSTRB STRB 1 1 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	outputConv { ap_none {  { outputConv in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 8 }  { m_axi_gmem1_0_WSTRB STRB 1 1 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 8 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 11 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	weight { ap_none {  { weight in_data 0 64 } } }
	bias { ap_none {  { bias in_data 0 64 } } }
}

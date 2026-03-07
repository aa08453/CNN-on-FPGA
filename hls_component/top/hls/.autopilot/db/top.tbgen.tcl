set moduleName top
set isTopModule 1
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
set C_modelName {top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 2}  }
	{ gmem1 int 8 regular {axi_master 0 stable }  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ outputConv int 64 regular {axi_slave 0}  }
	{ weight int 64 regular {axi_slave 0}  }
	{ bias int 64 regular {axi_slave 0}  }
	{ outputPool int 64 regular {axi_slave 0}  }
	{ weight2 int 64 regular {axi_slave 0}  }
	{ bias2 int 64 regular {axi_slave 0}  }
	{ outputConv2 int 64 regular {axi_slave 0}  }
	{ outputPool2 int 64 regular {axi_slave 0}  }
	{ outputDense int 64 regular {axi_slave 0}  }
	{ fcWeight int 64 regular {axi_slave 0}  }
	{ fcBias int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputConv","offset": { "type": "dynamic","port_name": "outputConv","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool","offset": { "type": "dynamic","port_name": "outputPool","bundle": "control"},"direction": "READWRITE"},{"cName": "outputConv2","offset": { "type": "dynamic","port_name": "outputConv2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputPool2","offset": { "type": "dynamic","port_name": "outputPool2","bundle": "control"},"direction": "READWRITE"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "weight","offset": { "type": "dynamic","port_name": "weight","bundle": "control"},"direction": "READONLY"},{"cName": "bias","offset": { "type": "dynamic","port_name": "bias","bundle": "control"},"direction": "READONLY"},{"cName": "weight2","offset": { "type": "dynamic","port_name": "weight2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "fcWeight","offset": { "type": "dynamic","port_name": "fcWeight","bundle": "control"},"direction": "READONLY"},{"cName": "fcBias","offset": { "type": "dynamic","port_name": "fcBias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "outputConv", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "weight", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "bias", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "outputPool", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "weight2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "bias2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "outputConv2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "outputPool2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "outputDense", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "fcWeight", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "fcBias", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"16"},{"name":"outputConv","role":"data","value":"28"},{"name":"weight","role":"data","value":"40"},{"name":"bias","role":"data","value":"52"},{"name":"outputPool","role":"data","value":"64"},{"name":"weight2","role":"data","value":"76"},{"name":"bias2","role":"data","value":"88"},{"name":"outputConv2","role":"data","value":"100"},{"name":"outputPool2","role":"data","value":"112"},{"name":"outputDense","role":"data","value":"124"},{"name":"fcWeight","role":"data","value":"136"},{"name":"fcBias","role":"data","value":"148"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	top {
		gmem0 {Type IO LastRead 33 FirstWrite -1}
		gmem1 {Type I LastRead 19 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		outputConv {Type I LastRead 0 FirstWrite -1}
		weight {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		outputPool {Type I LastRead 0 FirstWrite -1}
		weight2 {Type I LastRead 0 FirstWrite -1}
		bias2 {Type I LastRead 0 FirstWrite -1}
		outputConv2 {Type I LastRead 0 FirstWrite -1}
		outputPool2 {Type I LastRead 0 FirstWrite -1}
		outputDense {Type I LastRead 0 FirstWrite -1}
		fcWeight {Type I LastRead 0 FirstWrite -1}
		fcBias {Type I LastRead 0 FirstWrite -1}
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
		conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type IO LastRead -1 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type IO LastRead -1 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type IO LastRead -1 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type IO LastRead -1 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type IO LastRead -1 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 {Type IO LastRead -1 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 {Type IO LastRead -1 FirstWrite -1}}
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
		conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 {Type I LastRead 0 FirstWrite -1}}
	pool {
		gmem0 {Type IO LastRead 13 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		outputPool {Type I LastRead 10 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type IO LastRead 16 FirstWrite -1}}
	pool_Pipeline_LOAD_POOL {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type O LastRead -1 FirstWrite 2}}
	pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP {
		gmem0 {Type O LastRead -1 FirstWrite 17}
		outputPool {Type I LastRead 0 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type I LastRead 16 FirstWrite -1}}
	conv2 {
		gmem0 {Type IO LastRead 32 FirstWrite -1}
		input_r {Type I LastRead 20 FirstWrite -1}
		outputConv {Type I LastRead 30 FirstWrite -1}
		gmem1 {Type I LastRead 10 FirstWrite -1}
		weight {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 10 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead -1 FirstWrite -1}}
	conv2_Pipeline_LOAD_W {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		weight {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 {Type O LastRead -1 FirstWrite 2}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type O LastRead -1 FirstWrite 2}}
	conv2_Pipeline_LOAD_B {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 {Type O LastRead -1 FirstWrite 1}
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias {Type O LastRead -1 FirstWrite 1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia {Type O LastRead -1 FirstWrite 1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 {Type O LastRead -1 FirstWrite 1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 {Type O LastRead -1 FirstWrite 1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 {Type O LastRead -1 FirstWrite 1}
		conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 {Type O LastRead -1 FirstWrite 1}
		p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia {Type O LastRead -1 FirstWrite 1}}
	conv2_Pipeline_LOAD_2 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		temp_7 {Type O LastRead -1 FirstWrite 2}
		temp_6 {Type O LastRead -1 FirstWrite 2}
		temp_5 {Type O LastRead -1 FirstWrite 2}
		temp_4 {Type O LastRead -1 FirstWrite 2}
		temp_3 {Type O LastRead -1 FirstWrite 2}
		temp_2 {Type O LastRead -1 FirstWrite 2}
		temp_1 {Type O LastRead -1 FirstWrite 2}
		temp {Type O LastRead -1 FirstWrite 2}}
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
		conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight {Type I LastRead 0 FirstWrite -1}}
	pool_1 {
		gmem0 {Type IO LastRead 13 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		outputPool {Type I LastRead 10 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type IO LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type IO LastRead 16 FirstWrite -1}}
	pool_1_Pipeline_LOAD_POOL {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type O LastRead -1 FirstWrite 2}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type O LastRead -1 FirstWrite 2}}
	pool_1_Pipeline_CO_LOOP_H_LOOP_W_LOOP {
		gmem0 {Type O LastRead -1 FirstWrite 17}
		outputPool {Type I LastRead 0 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 {Type I LastRead 16 FirstWrite -1}
		pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input {Type I LastRead 16 FirstWrite -1}}
	top_Pipeline_LOAD_IN {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		outputPool2 {Type I LastRead 0 FirstWrite -1}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_3 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_2 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_1 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_6 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_5 {Type O LastRead -1 FirstWrite 2}
		dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_4 {Type O LastRead -1 FirstWrite 2}}
	top_Pipeline_LOAD_BIAS {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		fcBias {Type I LastRead 0 FirstWrite -1}
		local_bias_9_out {Type O LastRead -1 FirstWrite 0}
		local_bias_8_out {Type O LastRead -1 FirstWrite 0}
		local_bias_7_out {Type O LastRead -1 FirstWrite 0}
		local_bias_6_out {Type O LastRead -1 FirstWrite 0}
		local_bias_5_out {Type O LastRead -1 FirstWrite 0}
		local_bias_4_out {Type O LastRead -1 FirstWrite 0}
		local_bias_3_out {Type O LastRead -1 FirstWrite 0}
		local_bias_2_out {Type O LastRead -1 FirstWrite 0}
		local_bias_1_out {Type O LastRead -1 FirstWrite 0}
		local_bias_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "140719", "Max" : "140719"}
	, {"Name" : "Interval", "Min" : "140720", "Max" : "140720"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

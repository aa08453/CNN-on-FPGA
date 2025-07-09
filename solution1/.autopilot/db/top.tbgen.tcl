set moduleName top
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 8 regular {axi_master 2}  }
	{ input_V int 32 regular {axi_slave 0}  }
	{ outputConv_V int 32 regular {axi_slave 0}  }
	{ weight_V int 32 regular {axi_slave 0}  }
	{ bias_V int 32 regular {axi_slave 0}  }
	{ outputPool_V int 32 regular {axi_slave 0}  }
	{ weight2_V int 32 regular {axi_slave 0}  }
	{ bias2_V int 32 regular {axi_slave 0}  }
	{ outputConv2_V int 32 regular {axi_slave 0}  }
	{ outputPool2_V int 32 regular {axi_slave 0}  }
	{ outputDense_V int 32 regular {axi_slave 0}  }
	{ fcWeight_V int 32 regular {axi_slave 0}  }
	{ fcBias_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "input_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputConv.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "outputConv_V","bundle": "AXILiteS"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "weight.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "weight_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "bias.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "bias_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputPool.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "outputPool_V","bundle": "AXILiteS"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "weight2.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "weight2_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "bias2.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "bias2_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputConv2.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "outputConv2_V","bundle": "AXILiteS"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputPool2.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "outputPool2_V","bundle": "AXILiteS"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputDense.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "outputDense_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "fcWeight.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "fcWeight_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "fcBias.V","cData": "int8","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "fcBias_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "outputConv_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "weight_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "bias_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "outputPool_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "weight2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "bias2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "outputConv2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "outputPool2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "outputDense_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "fcWeight_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "fcBias_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_V","role":"data","value":"16"},{"name":"outputConv_V","role":"data","value":"24"},{"name":"weight_V","role":"data","value":"32"},{"name":"bias_V","role":"data","value":"40"},{"name":"outputPool_V","role":"data","value":"48"},{"name":"weight2_V","role":"data","value":"56"},{"name":"bias2_V","role":"data","value":"64"},{"name":"outputConv2_V","role":"data","value":"72"},{"name":"outputPool2_V","role":"data","value":"80"},{"name":"outputDense_V","role":"data","value":"88"},{"name":"fcWeight_V","role":"data","value":"96"},{"name":"fcBias_V","role":"data","value":"104"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "153", "218", "263"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "423377", "EstimateLatencyMax" : "677313",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv2_fu_188"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv1_fu_198"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_fu_208"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pool_fu_218"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pool_fu_218"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_conv2_fu_188", "Port" : "input_V"},
					{"ID" : "218", "SubInstance" : "grp_dense_fu_208", "Port" : "input_V"},
					{"ID" : "153", "SubInstance" : "grp_conv1_fu_198", "Port" : "input_V"},
					{"ID" : "263", "SubInstance" : "grp_pool_fu_218", "Port" : "input_V"}]},
			{"Name" : "input_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputConv_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputPool_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputConv2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputPool2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputDense_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fcWeight_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fcBias_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152"],
		"CDFG" : "conv2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241502", "EstimateLatencyMax" : "247774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "input_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputConv_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_0_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_1_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_2_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_3_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_4_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_5_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_6_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.temp_7_V_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U55", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U56", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U57", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U58", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U59", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U60", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U61", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U62", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U63", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U64", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U65", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U66", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U67", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U68", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U69", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_9ns_9ns_ibs_U70", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U71", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U72", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U73", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U74", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U75", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U76", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U77", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U78", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U79", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U80", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U81", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U82", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U83", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U84", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U85", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U86", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U87", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U88", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U89", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U90", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U91", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U92", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U93", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U94", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U95", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U96", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_10ns_9nsg8j_U97", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U98", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U99", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U100", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U101", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U102", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U103", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U104", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U105", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U106", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U107", "Parent" : "3"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U108", "Parent" : "3"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U109", "Parent" : "3"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U110", "Parent" : "3"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U111", "Parent" : "3"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U112", "Parent" : "3"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U113", "Parent" : "3"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U114", "Parent" : "3"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U115", "Parent" : "3"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U116", "Parent" : "3"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U117", "Parent" : "3"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U118", "Parent" : "3"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U119", "Parent" : "3"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U120", "Parent" : "3"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U121", "Parent" : "3"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U122", "Parent" : "3"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_urem_11ns_9nshbi_U123", "Parent" : "3"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U124", "Parent" : "3"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U125", "Parent" : "3"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U126", "Parent" : "3"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U127", "Parent" : "3"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U128", "Parent" : "3"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U129", "Parent" : "3"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U130", "Parent" : "3"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U131", "Parent" : "3"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U132", "Parent" : "3"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U133", "Parent" : "3"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U134", "Parent" : "3"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U135", "Parent" : "3"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U136", "Parent" : "3"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U137", "Parent" : "3"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U138", "Parent" : "3"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U139", "Parent" : "3"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U140", "Parent" : "3"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U141", "Parent" : "3"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U142", "Parent" : "3"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U143", "Parent" : "3"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U144", "Parent" : "3"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U145", "Parent" : "3"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U146", "Parent" : "3"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U147", "Parent" : "3"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U148", "Parent" : "3"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U149", "Parent" : "3"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U150", "Parent" : "3"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U151", "Parent" : "3"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U152", "Parent" : "3"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U153", "Parent" : "3"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U154", "Parent" : "3"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U155", "Parent" : "3"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U156", "Parent" : "3"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U157", "Parent" : "3"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U158", "Parent" : "3"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U159", "Parent" : "3"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U160", "Parent" : "3"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U161", "Parent" : "3"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U162", "Parent" : "3"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U163", "Parent" : "3"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U164", "Parent" : "3"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U165", "Parent" : "3"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U166", "Parent" : "3"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U167", "Parent" : "3"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U168", "Parent" : "3"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U169", "Parent" : "3"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U170", "Parent" : "3"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U171", "Parent" : "3"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U172", "Parent" : "3"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U173", "Parent" : "3"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U174", "Parent" : "3"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U175", "Parent" : "3"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U176", "Parent" : "3"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U177", "Parent" : "3"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U178", "Parent" : "3"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U179", "Parent" : "3"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U180", "Parent" : "3"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U181", "Parent" : "3"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U182", "Parent" : "3"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U183", "Parent" : "3"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U184", "Parent" : "3"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U185", "Parent" : "3"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U186", "Parent" : "3"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U187", "Parent" : "3"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U188", "Parent" : "3"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U189", "Parent" : "3"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U190", "Parent" : "3"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U191", "Parent" : "3"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U192", "Parent" : "3"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U193", "Parent" : "3"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U194", "Parent" : "3"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2_fu_188.top_mac_muladd_8sfYi_U195", "Parent" : "3"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198", "Parent" : "0", "Child" : ["154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217"],
		"CDFG" : "conv1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65107", "EstimateLatencyMax" : "65107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "input_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputConv_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_0_V_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_1_V_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_2_V_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_3_V_U", "Parent" : "153"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_4_V_U", "Parent" : "153"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_5_V_U", "Parent" : "153"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_6_V_U", "Parent" : "153"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_7_V_U", "Parent" : "153"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_8_V_U", "Parent" : "153"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_9_V_U", "Parent" : "153"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_10_V_U", "Parent" : "153"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_11_V_U", "Parent" : "153"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_12_V_U", "Parent" : "153"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_13_V_U", "Parent" : "153"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_14_V_U", "Parent" : "153"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_15_V_U", "Parent" : "153"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_16_V_U", "Parent" : "153"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_17_V_U", "Parent" : "153"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_18_V_U", "Parent" : "153"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_19_V_U", "Parent" : "153"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_20_V_U", "Parent" : "153"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_21_V_U", "Parent" : "153"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_22_V_U", "Parent" : "153"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_23_V_U", "Parent" : "153"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_24_V_U", "Parent" : "153"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_25_V_U", "Parent" : "153"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_26_V_U", "Parent" : "153"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.temp_27_V_U", "Parent" : "153"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U1", "Parent" : "153"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_12ns_6nscud_U2", "Parent" : "153"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U3", "Parent" : "153"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U4", "Parent" : "153"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_12ns_6nscud_U5", "Parent" : "153"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U6", "Parent" : "153"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_12ns_6nscud_U7", "Parent" : "153"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U8", "Parent" : "153"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_urem_13ns_6nsbkb_U9", "Parent" : "153"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U10", "Parent" : "153"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U11", "Parent" : "153"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U12", "Parent" : "153"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U13", "Parent" : "153"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U14", "Parent" : "153"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U15", "Parent" : "153"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U16", "Parent" : "153"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U17", "Parent" : "153"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mux_2832_8_1_1_U18", "Parent" : "153"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_12ns_dEe_U19", "Parent" : "153"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U20", "Parent" : "153"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U21", "Parent" : "153"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_12ns_dEe_U22", "Parent" : "153"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U23", "Parent" : "153"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U24", "Parent" : "153"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_12ns_dEe_U25", "Parent" : "153"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U26", "Parent" : "153"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mul_mul_13ns_eOg_U27", "Parent" : "153"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U28", "Parent" : "153"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U29", "Parent" : "153"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U30", "Parent" : "153"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U31", "Parent" : "153"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U32", "Parent" : "153"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U33", "Parent" : "153"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U34", "Parent" : "153"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U35", "Parent" : "153"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv1_fu_198.top_mac_muladd_8sfYi_U36", "Parent" : "153"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208", "Parent" : "0", "Child" : ["219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262"],
		"CDFG" : "dense",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81220", "EstimateLatencyMax" : "81220",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "input_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputDense_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fcWeight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fcBias_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_0_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_1_V_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_2_V_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_3_V_U", "Parent" : "218"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_4_V_U", "Parent" : "218"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_5_V_U", "Parent" : "218"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_6_V_U", "Parent" : "218"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_7_V_U", "Parent" : "218"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_8_V_U", "Parent" : "218"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_9_V_U", "Parent" : "218"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_10_V_U", "Parent" : "218"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_11_V_U", "Parent" : "218"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_12_V_U", "Parent" : "218"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_13_V_U", "Parent" : "218"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_14_V_U", "Parent" : "218"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.temp_15_V_U", "Parent" : "218"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U206", "Parent" : "218"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U207", "Parent" : "218"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U208", "Parent" : "218"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U209", "Parent" : "218"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U210", "Parent" : "218"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U211", "Parent" : "218"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U212", "Parent" : "218"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U213", "Parent" : "218"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U214", "Parent" : "218"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U215", "Parent" : "218"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U216", "Parent" : "218"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U217", "Parent" : "218"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U218", "Parent" : "218"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U219", "Parent" : "218"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U220", "Parent" : "218"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U221", "Parent" : "218"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U222", "Parent" : "218"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U223", "Parent" : "218"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U224", "Parent" : "218"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U225", "Parent" : "218"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U226", "Parent" : "218"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U227", "Parent" : "218"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U228", "Parent" : "218"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U229", "Parent" : "218"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U230", "Parent" : "218"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U231", "Parent" : "218"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U232", "Parent" : "218"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_fu_208.top_mac_muladd_8sfYi_U233", "Parent" : "218"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pool_fu_218", "Parent" : "0",
		"CDFG" : "pool",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17769", "EstimateLatencyMax" : "141601",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "input_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "input_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "input_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputPool_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cin", "Type" : "None", "Direction" : "I"},
			{"Name" : "H", "Type" : "None", "Direction" : "I"},
			{"Name" : "W", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	top {
		gmem {Type IO LastRead 297 FirstWrite 20}
		input_V {Type I LastRead 0 FirstWrite -1}
		outputConv_V {Type I LastRead 0 FirstWrite -1}
		weight_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		outputPool_V {Type I LastRead 0 FirstWrite -1}
		weight2_V {Type I LastRead 0 FirstWrite -1}
		bias2_V {Type I LastRead 0 FirstWrite -1}
		outputConv2_V {Type I LastRead 0 FirstWrite -1}
		outputPool2_V {Type I LastRead 0 FirstWrite -1}
		outputDense_V {Type I LastRead 0 FirstWrite -1}
		fcWeight_V {Type I LastRead 0 FirstWrite -1}
		fcBias_V {Type I LastRead 0 FirstWrite -1}}
	conv2 {
		input_V {Type IO LastRead 98 FirstWrite 97}
		input_V_offset {Type I LastRead 0 FirstWrite -1}
		outputConv_V_offset {Type I LastRead 6 FirstWrite -1}
		weight_V_offset {Type I LastRead 6 FirstWrite -1}
		bias_V_offset {Type I LastRead 6 FirstWrite -1}}
	conv1 {
		input_V {Type IO LastRead 40 FirstWrite 39}
		input_V_offset {Type I LastRead 0 FirstWrite -1}
		outputConv_V_offset {Type I LastRead 6 FirstWrite -1}
		weight_V_offset {Type I LastRead 6 FirstWrite -1}
		bias_V_offset {Type I LastRead 6 FirstWrite -1}}
	dense {
		input_V {Type IO LastRead 297 FirstWrite 20}
		input_V_offset {Type I LastRead 0 FirstWrite -1}
		outputDense_V_offset {Type I LastRead 6 FirstWrite -1}
		fcWeight_V_offset {Type I LastRead 6 FirstWrite -1}
		fcBias_V_offset {Type I LastRead 6 FirstWrite -1}}
	pool {
		input_V {Type IO LastRead 43 FirstWrite 42}
		input_V_offset {Type I LastRead 0 FirstWrite -1}
		outputPool_V_offset {Type I LastRead 0 FirstWrite -1}
		Cin {Type I LastRead 0 FirstWrite -1}
		H {Type I LastRead 0 FirstWrite -1}
		W {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "423377", "Max" : "677313"}
	, {"Name" : "Interval", "Min" : "423378", "Max" : "677314"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

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
set cdfgNum 11
set C_modelName {top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 2}  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ outputDense int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"},{"cName": "outputDense","offset": { "type": "dynamic","port_name": "outputDense","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "outputDense", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 65
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"16"},{"name":"outputDense","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	top {
		gmem0 {Type IO LastRead 11 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		outputDense {Type I LastRead 0 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}
		fc1_weight {Type I LastRead -1 FirstWrite -1}}
	conv1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		outputConv_0 {Type O LastRead -1 FirstWrite 14}
		outputConv_1 {Type O LastRead -1 FirstWrite 14}
		outputConv_2 {Type O LastRead -1 FirstWrite 14}
		outputConv_3 {Type O LastRead -1 FirstWrite 14}
		outputConv_4 {Type O LastRead -1 FirstWrite 14}}
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
		temp_15 {Type I LastRead 3 FirstWrite -1}}
	pool {
		input_0 {Type I LastRead 16 FirstWrite -1}
		input_1 {Type I LastRead 16 FirstWrite -1}
		input_2 {Type I LastRead 16 FirstWrite -1}
		input_3 {Type I LastRead 16 FirstWrite -1}
		input_4 {Type I LastRead 16 FirstWrite -1}
		outputPool_0 {Type O LastRead -1 FirstWrite 17}
		outputPool_1 {Type O LastRead -1 FirstWrite 17}
		outputPool_2 {Type O LastRead -1 FirstWrite 17}
		outputPool_3 {Type O LastRead -1 FirstWrite 17}
		outputPool_4 {Type O LastRead -1 FirstWrite 17}
		outputPool_5 {Type O LastRead -1 FirstWrite 17}
		outputPool_6 {Type O LastRead -1 FirstWrite 17}
		outputPool_7 {Type O LastRead -1 FirstWrite 17}}
	conv2 {
		input_0 {Type I LastRead 2 FirstWrite -1}
		input_1 {Type I LastRead 2 FirstWrite -1}
		input_2 {Type I LastRead 2 FirstWrite -1}
		input_3 {Type I LastRead 2 FirstWrite -1}
		input_4 {Type I LastRead 2 FirstWrite -1}
		input_5 {Type I LastRead 2 FirstWrite -1}
		input_6 {Type I LastRead 2 FirstWrite -1}
		input_7 {Type I LastRead 2 FirstWrite -1}
		outputConv_0 {Type O LastRead -1 FirstWrite 8}
		outputConv_1 {Type O LastRead -1 FirstWrite 8}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 {Type IO LastRead -1 FirstWrite -1}
		conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}}
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
		p_ZL12conv2_weight_8 {Type I LastRead -1 FirstWrite -1}}
	pool_1 {
		input_0 {Type I LastRead 4 FirstWrite -1}
		input_1 {Type I LastRead 4 FirstWrite -1}
		outputPool_0 {Type O LastRead -1 FirstWrite 5}
		outputPool_1 {Type O LastRead -1 FirstWrite 5}
		outputPool_2 {Type O LastRead -1 FirstWrite 5}
		outputPool_3 {Type O LastRead -1 FirstWrite 5}
		outputPool_4 {Type O LastRead -1 FirstWrite 5}
		outputPool_5 {Type O LastRead -1 FirstWrite 5}
		outputPool_6 {Type O LastRead -1 FirstWrite 5}
		outputPool_7 {Type O LastRead -1 FirstWrite 5}}
	top_Pipeline_DENSE_OUTER_DENSE_INNER {
		gmem0 {Type O LastRead -1 FirstWrite 6}
		outputDense {Type I LastRead 0 FirstWrite -1}
		outputPool2 {Type I LastRead 3 FirstWrite -1}
		outputPool2_1 {Type I LastRead 3 FirstWrite -1}
		outputPool2_2 {Type I LastRead 3 FirstWrite -1}
		outputPool2_3 {Type I LastRead 3 FirstWrite -1}
		outputPool2_4 {Type I LastRead 3 FirstWrite -1}
		outputPool2_5 {Type I LastRead 3 FirstWrite -1}
		outputPool2_6 {Type I LastRead 3 FirstWrite -1}
		outputPool2_7 {Type I LastRead 3 FirstWrite -1}
		fc1_weight {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102476", "Max" : "102476"}
	, {"Name" : "Interval", "Min" : "102477", "Max" : "102477"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

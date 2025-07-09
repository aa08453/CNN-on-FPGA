set moduleName conv2
set isTopModule 0
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
set C_modelName {conv2}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 8 regular {axi_master 2}  }
	{ input_V_offset int 32 regular  }
	{ outputConv_V_offset int 32 regular  }
	{ weight_V_offset int 32 regular  }
	{ bias_V_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "input_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "outputConv_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias_V_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_input_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_input_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_input_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_input_V_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_input_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_input_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_input_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_input_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_input_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ input_V_offset sc_in sc_lv 32 signal 1 } 
	{ outputConv_V_offset sc_in sc_lv 32 signal 2 } 
	{ weight_V_offset sc_in sc_lv 32 signal 3 } 
	{ bias_V_offset sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_input_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "AWID" }} , 
 	{ "name": "m_axi_input_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_input_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_input_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_input_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_input_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WID" }} , 
 	{ "name": "m_axi_input_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_input_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ARID" }} , 
 	{ "name": "m_axi_input_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_input_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_input_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_input_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_input_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "RID" }} , 
 	{ "name": "m_axi_input_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_input_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_input_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_input_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_input_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_input_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "BID" }} , 
 	{ "name": "m_axi_input_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "BUSER" }} , 
 	{ "name": "input_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V_offset", "role": "default" }} , 
 	{ "name": "outputConv_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputConv_V_offset", "role": "default" }} , 
 	{ "name": "weight_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V_offset", "role": "default" }} , 
 	{ "name": "bias_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U55", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U56", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U57", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U58", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U59", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U60", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U61", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U62", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U63", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U64", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U65", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U66", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U67", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U68", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U69", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_9ns_9ns_ibs_U70", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U71", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U72", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U73", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U74", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U75", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U76", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U77", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U78", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U79", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U80", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U81", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U82", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U83", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U84", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U85", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U86", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U87", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U88", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U89", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U90", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U91", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U92", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U93", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U94", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U95", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U96", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_10ns_9nsg8j_U97", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U98", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U99", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U100", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U101", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U102", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U103", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U104", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U105", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U106", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U107", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U108", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U109", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U110", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U111", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U112", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U113", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U114", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U115", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U116", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U117", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U118", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U119", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U120", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U121", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U122", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_urem_11ns_9nshbi_U123", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U124", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U125", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U126", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U127", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U128", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U129", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U130", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U131", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U132", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U133", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U134", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U135", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U136", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U137", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U138", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U139", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U140", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U141", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U142", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U143", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U144", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U145", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U146", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U147", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U148", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U149", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U150", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U151", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U152", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U153", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U154", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U155", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U156", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U157", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U158", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U159", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U160", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U161", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U162", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U163", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U164", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U165", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U166", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U167", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U168", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U169", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U170", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U171", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U172", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U173", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U174", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U175", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U176", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U177", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U178", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U179", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U180", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U181", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U182", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U183", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U184", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U185", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U186", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U187", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U188", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U189", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U190", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U191", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U192", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U193", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U194", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_8sfYi_U195", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2 {
		input_V {Type IO LastRead 98 FirstWrite 97}
		input_V_offset {Type I LastRead 0 FirstWrite -1}
		outputConv_V_offset {Type I LastRead 6 FirstWrite -1}
		weight_V_offset {Type I LastRead 6 FirstWrite -1}
		bias_V_offset {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241502", "Max" : "247774"}
	, {"Name" : "Interval", "Min" : "241502", "Max" : "247774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_V { m_axi {  { m_axi_input_V_AWVALID VALID 1 1 }  { m_axi_input_V_AWREADY READY 0 1 }  { m_axi_input_V_AWADDR ADDR 1 32 }  { m_axi_input_V_AWID ID 1 1 }  { m_axi_input_V_AWLEN LEN 1 32 }  { m_axi_input_V_AWSIZE SIZE 1 3 }  { m_axi_input_V_AWBURST BURST 1 2 }  { m_axi_input_V_AWLOCK LOCK 1 2 }  { m_axi_input_V_AWCACHE CACHE 1 4 }  { m_axi_input_V_AWPROT PROT 1 3 }  { m_axi_input_V_AWQOS QOS 1 4 }  { m_axi_input_V_AWREGION REGION 1 4 }  { m_axi_input_V_AWUSER USER 1 1 }  { m_axi_input_V_WVALID VALID 1 1 }  { m_axi_input_V_WREADY READY 0 1 }  { m_axi_input_V_WDATA DATA 1 8 }  { m_axi_input_V_WSTRB STRB 1 1 }  { m_axi_input_V_WLAST LAST 1 1 }  { m_axi_input_V_WID ID 1 1 }  { m_axi_input_V_WUSER USER 1 1 }  { m_axi_input_V_ARVALID VALID 1 1 }  { m_axi_input_V_ARREADY READY 0 1 }  { m_axi_input_V_ARADDR ADDR 1 32 }  { m_axi_input_V_ARID ID 1 1 }  { m_axi_input_V_ARLEN LEN 1 32 }  { m_axi_input_V_ARSIZE SIZE 1 3 }  { m_axi_input_V_ARBURST BURST 1 2 }  { m_axi_input_V_ARLOCK LOCK 1 2 }  { m_axi_input_V_ARCACHE CACHE 1 4 }  { m_axi_input_V_ARPROT PROT 1 3 }  { m_axi_input_V_ARQOS QOS 1 4 }  { m_axi_input_V_ARREGION REGION 1 4 }  { m_axi_input_V_ARUSER USER 1 1 }  { m_axi_input_V_RVALID VALID 0 1 }  { m_axi_input_V_RREADY READY 1 1 }  { m_axi_input_V_RDATA DATA 0 8 }  { m_axi_input_V_RLAST LAST 0 1 }  { m_axi_input_V_RID ID 0 1 }  { m_axi_input_V_RUSER USER 0 1 }  { m_axi_input_V_RRESP RESP 0 2 }  { m_axi_input_V_BVALID VALID 0 1 }  { m_axi_input_V_BREADY READY 1 1 }  { m_axi_input_V_BRESP RESP 0 2 }  { m_axi_input_V_BID ID 0 1 }  { m_axi_input_V_BUSER USER 0 1 } } }
	input_V_offset { ap_none {  { input_V_offset in_data 0 32 } } }
	outputConv_V_offset { ap_none {  { outputConv_V_offset in_data 0 32 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 32 } } }
	bias_V_offset { ap_none {  { bias_V_offset in_data 0 32 } } }
}

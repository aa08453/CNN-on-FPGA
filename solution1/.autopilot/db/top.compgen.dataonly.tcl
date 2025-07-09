# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
input_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
outputConv_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
weight_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
bias_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
outputPool_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
weight2_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
bias2_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
outputConv2_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
outputPool2_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
outputDense_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
fcWeight_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
fcBias_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
}
dict set axilite_register_dict control $port_control



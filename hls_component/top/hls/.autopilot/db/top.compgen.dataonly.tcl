# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
outputConv { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
weight { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
outputPool { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
weight2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
bias2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
outputConv2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
outputPool2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
outputDense { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
fcWeight { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
fcBias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control



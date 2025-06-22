conv:
	iverilog -g2012 -o conv src/conv.v src/mac.v src/patch.v src/image_rom.v src/kernel_rom.v tests/tb_conv.v
	vvp conv
	gtkwave w_conv.vcd

patch:
	iverilog -o patch src/patch.v src/image_rom.v tests/tb_patch.v
	vvp patch
	gtkwave w_patch.vcd

mac:
	iverilog -o mac src/mac.v src/kernel_rom.v tests/tb_mac.v
	vvp mac
	gtkwave w_mac.vcd

clean:
	rm -f conv mac patch *.vcd
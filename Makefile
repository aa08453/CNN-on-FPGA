VFLAGS = -g2012
SRC = src
TESTS = tests

comp:
	iverilog $(VFLAGS) -o comp.vvp $(SRC)/conv/comp.v $(SRC)/conv/mult_mux.v $(TESTS)/conv/tb_comp.v
	vvp comp.vvp
	gtkwave w_comp.vcd &

conv_control:
	iverilog $(VFLAGS) -o conv_control.vvp $(SRC)/conv/conv_control.v $(TESTS)/conv/tb_conv_control.v
	vvp conv_control.vvp
	gtkwave w_conv_control.vcd &

counters:
	iverilog $(VFLAGS) -o counters.vvp $(SRC)/conv/counters.v $(TESTS)/conv/tb_counters.v
	vvp counters.vvp
	gtkwave w_counters.vcd &

counter:
	iverilog $(VFLAGS) -o counter.vvp $(SRC)/counter.v $(TESTS)/tb_counter.v
	vvp counter.vvp
	gtkwave w_counter.vcd &

image_ram:
	iverilog $(VFLAGS) -o image_ram.vvp $(SRC)/conv/image_ram.v $(TESTS)/conv/tb_image_ram.v
	vvp image_ram.vvp
	gtkwave w_image_mem.vcd &

load_kernel:
	iverilog $(VFLAGS) -o load_kernel.vvp $(SRC)/load_kernel.v $(SRC)/kernel_rom.v $(TESTS)/tb_load_kernel.v
	vvp load_kernel.vvp
	gtkwave w_load_kernel.vcd &

load_bias:
	iverilog $(VFLAGS) -o load_bias.vvp $(SRC)/load_bias.v $(TESTS)/tb_load_bias.v
	vvp load_bias.vvp
	gtkwave w_load_bias.vcd &

mult_mux:
	iverilog $(VFLAGS) -o mult_mux.vvp $(SRC)/conv/mult_mux.v $(TESTS)/conv/tb_mult_mux.v
	vvp mult_mux.vvp
	gtkwave w_mult_mux.vcd &

products_reg:
	iverilog $(VFLAGS) -o products_reg.vvp $(SRC)/conv/products_reg.v $(TESTS)/conv/tb_products_reg.v
	vvp products_reg.vvp
	gtkwave w_products_reg.vcd &

result:
	iverilog $(VFLAGS) -o result.vvp $(SRC)/result_registerFile.v $(TESTS)/tb_result.v
	vvp result.vvp
	gtkwave w_result.vcd &

conv:
	iverilog $(VFLAGS) -o conv.vvp $(SRC)/conv/*.v  $(SRC)/image_ram.v $(TESTS)/conv/tb_conv.v
	vvp conv.vvp
	gtkwave w_conv.vcd &

layer1:
	iverilog $(VFLAGS) -o layer1.vvp $(SRC)/*.v $(SRC)/conv/*.v $(TESTS)/tb_layer1.v
	vvp layer1.vvp
	gtkwave w_layer1.vcd &

layer_control:
	iverilog $(VFLAGS) -o layer_control.vvp $(SRC)/layer_control.v $(TESTS)/tb_layer_control.v
	vvp layer_control.vvp
	gtkwave w_layer_control.vcd &

clean:
	rm -f *.vvp *.vcd

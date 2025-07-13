VFLAGS = -g2012
SRC = src
TESTS = tests

comp:
	iverilog $(VFLAGS) -o comp.vvp $(SRC)/layer1/conv/comp.v $(SRC)/layer1/conv/mult_mux.v $(TESTS)/layer1/conv/tb_comp.v
	vvp comp.vvp
	gtkwave w_comp.vcd &

conv_control:
	iverilog $(VFLAGS) -o conv_control.vvp $(SRC)/layer1/conv/conv_control.v $(TESTS)/layer1/conv/tb_conv_control.v
	vvp conv_control.vvp
	gtkwave w_conv_control.vcd &

counters:
	iverilog $(VFLAGS) -o counters.vvp $(SRC)/layer1/conv/counters.v $(TESTS)/layer1/conv/tb_counters.v
	vvp counters.vvp
	gtkwave w_counters.vcd &

counter:
	iverilog $(VFLAGS) -o counter.vvp $(SRC)/layer1/counter.v $(TESTS)/layer1/tb_counter.v
	vvp counter.vvp
	gtkwave w_counter.vcd &

image_ram:
	iverilog $(VFLAGS) -o image_ram.vvp $(SRC)/layer1/conv/image_ram.v $(TESTS)/layer1/conv/tb_image_ram.v
	vvp image_ram.vvp
	gtkwave w_image_mem.vcd &

load_kernel:
	iverilog $(VFLAGS) -o load_kernel.vvp $(SRC)/layer1/load_kernel.v $(SRC)/layer1/kernel_rom.v $(TESTS)/layer1/tb_load_kernel.v
	vvp load_kernel.vvp
	gtkwave w_load_kernel.vcd &

load_bias:
	iverilog $(VFLAGS) -o load_bias.vvp $(SRC)/layer1/load_bias.v $(TESTS)/layer1/tb_load_bias.v
	vvp load_bias.vvp
	gtkwave w_load_bias.vcd &

mult_mux:
	iverilog $(VFLAGS) -o mult_mux.vvp $(SRC)/layer1/conv/mult_mux.v $(TESTS)/layer1/conv/tb_mult_mux.v
	vvp mult_mux.vvp
	gtkwave w_mult_mux.vcd &

products_reg:
	iverilog $(VFLAGS) -o products_reg.vvp $(SRC)/layer1/conv/products_reg.v $(TESTS)/layer1/conv/tb_products_reg.v
	vvp products_reg.vvp
	gtkwave w_products_reg.vcd &

result:
	iverilog $(VFLAGS) -o result.vvp $(SRC)/layer1/result_registerFile.v $(TESTS)/layer1/tb_result.v
	vvp result.vvp
	gtkwave w_result.vcd &

conv:
	iverilog $(VFLAGS) -o conv.vvp $(SRC)/layer1/conv/*.v  $(SRC)/image_ram.v $(TESTS)/layer1/conv/tb_conv.v
	vvp conv.vvp
	gtkwave w_conv.vcd &

layer1:
	iverilog $(VFLAGS) -o layer1.vvp $(SRC)/layer1/*.v $(SRC)/layer1/conv/*.v $(SRC)/image_ram.v $(TESTS)/layer1/tb_layer1.v
	vvp layer1.vvp
	gtkwave w_layer1.vcd &

layer1_control:
	iverilog $(VFLAGS) -o layer1_control.vvp $(SRC)/layer1/layer1_control.v $(TESTS)/layer1/tb_layer1_control.v
	vvp layer1_control.vvp
	gtkwave w_layer1_control.vcd &

clean:
	rm -f *.vvp *.vcd

VFLAGS = -g2012
SRC = src
TESTS = tests

comp:
	iverilog $(VFLAGS) -o comp.vvp $(SRC)/conv_layer/conv/comp.v $(SRC)/conv_layer/conv/mult_mux.v $(TESTS)/conv_layer/conv/tb_comp.v
	vvp comp.vvp
	gtkwave w_comp.vcd &

conv_control:
	iverilog $(VFLAGS) -o conv_control.vvp $(SRC)/conv_layer/conv/conv_control.v $(TESTS)/conv_layer/conv/tb_conv_control.v
	vvp conv_control.vvp
	gtkwave w_conv_control.vcd &

counters:
	iverilog $(VFLAGS) -o counters.vvp $(SRC)/conv_layer/conv/counters.v $(TESTS)/conv_layer/conv/tb_counters.v
	vvp counters.vvp
	gtkwave w_counters.vcd &

counter:
	iverilog $(VFLAGS) -o counter.vvp $(SRC)/conv_layer/counter.v $(TESTS)/conv_layer/tb_counter.v
	vvp counter.vvp
	gtkwave w_counter.vcd &

image_ram:
	iverilog $(VFLAGS) -o image_ram.vvp $(SRC)/conv_layer/conv/image_ram.v $(TESTS)/conv_layer/conv/tb_image_ram.v
	vvp image_ram.vvp
	gtkwave w_image_mem.vcd &

load_kernel:
	iverilog $(VFLAGS) -o load_kernel.vvp $(SRC)/conv_layer/load_kernel.v $(SRC)/conv_layer/kernel_rom.v $(TESTS)/conv_layer/tb_load_kernel.v
	vvp load_kernel.vvp
	gtkwave w_load_kernel.vcd &

load_bias:
	iverilog $(VFLAGS) -o load_bias.vvp $(SRC)/conv_layer/load_bias.v $(TESTS)/conv_layer/tb_load_bias.v
	vvp load_bias.vvp
	gtkwave w_load_bias.vcd &

mult_mux:
	iverilog $(VFLAGS) -o mult_mux.vvp $(SRC)/conv_layer/conv/mult_mux.v $(TESTS)/conv_layer/conv/tb_mult_mux.v
	vvp mult_mux.vvp
	gtkwave w_mult_mux.vcd &

products_reg:
	iverilog $(VFLAGS) -o products_reg.vvp $(SRC)/conv_layer/conv/products_reg.v $(TESTS)/conv_layer/conv/tb_products_reg.v
	vvp products_reg.vvp
	gtkwave w_products_reg.vcd &

result:
	iverilog $(VFLAGS) -o result.vvp $(SRC)/conv_layer/result_registerFile.v $(TESTS)/conv_layer/tb_result.v
	vvp result.vvp
	gtkwave w_result.vcd &

conv:
	iverilog $(VFLAGS) -o conv.vvp $(SRC)/conv_layer/conv/*.v $(TESTS)/tb_conv.v
	vvp conv.vvp
	gtkwave w_conv.vcd &

top:
	iverilog $(VFLAGS) -o top.vvp $(SRC)/conv_layer/*.v $(SRC)/conv_layer/conv/*.v $(TESTS)/conv_layer/tb_top_module.v
	vvp top.vvp
	gtkwave w_top.vcd &

top_control:
	iverilog $(VFLAGS) -o top_control.vvp $(SRC)/conv_layer/top_control.v $(TESTS)/conv_layer/tb_top_control.v
	vvp top_control.vvp
	gtkwave w_top_control.vcd &

clean:
	rm -f *.vvp *.vcd

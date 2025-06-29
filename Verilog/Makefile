VFLAGS = -g2012
SRC = src
TESTS = tests

comp:
	iverilog $(VFLAGS) -o comp.vvp $(SRC)/comp.v $(SRC)/mult_mux.v $(TESTS)/tb_comp.v
	vvp comp.vvp
	gtkwave w_comp.vcd &

control:
	iverilog $(VFLAGS) -o control.vvp $(SRC)/control.v $(TESTS)/tb_control.v
	vvp control.vvp
	gtkwave w_control.vcd &

counters:
	iverilog $(VFLAGS) -o counters.vvp $(SRC)/counters.v $(TESTS)/tb_counters.v
	vvp counters.vvp
	gtkwave w_counters.vcd &

image_ram:
	iverilog $(VFLAGS) -o image_ram.vvp $(SRC)/image_ram.v $(TESTS)/tb_image_ram.v
	vvp image_ram.vvp
	gtkwave w_image_mem.vcd &

load_kernel:
	iverilog $(VFLAGS) -o load_kernel.vvp $(SRC)/load_kernel.v $(SRC)/kernel_rom.v $(TESTS)/tb_load_kernel.v
	vvp load_kernel.vvp
	gtkwave w_load_kernel.vcd &

mult_mux:
	iverilog $(VFLAGS) -o mult_mux.vvp $(SRC)/mult_mux.v $(TESTS)/tb_mult_mux.v
	vvp mult_mux.vvp
	gtkwave w_mult_mux.vcd &

patch:
	iverilog $(VFLAGS) -o patch.vvp $(SRC)/patch.v $(SRC)/image_ram.v $(TESTS)/tb_patch.v
	vvp patch.vvp
	gtkwave w_patch.vcd &

products_reg:
	iverilog $(VFLAGS) -o products_reg.vvp $(SRC)/products_reg.v $(TESTS)/tb_products_reg.v
	vvp products_reg.vvp
	gtkwave w_products_reg.vcd &

shift_reg:
	iverilog $(VFLAGS) -o shift_reg.vvp $(SRC)/shift_reg.v $(TESTS)/tb_shift_reg.v
	vvp shift_reg.vvp
	gtkwave w_image_reg.vcd &

top:
	iverilog $(VFLAGS) -o top.vvp $(SRC)/*.v $(TESTS)/tb_top_module.v
	vvp top.vvp
	gtkwave w_top.vcd &


clean:
	rm -f *.vvp *.vcd

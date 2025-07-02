module top
#(
    parameter H = 28,
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    output [15:0] result
);

    wire load, acc_enable, flush_acc, count_enable, load_full_patch, addr;
    wire [1:0] mux_sel;

    wire [7:0] image_reg0, image_reg1, image_reg2,
               image_reg3, image_reg4, image_reg5,
               image_reg6, image_reg7, image_reg8;

    reg [7:0] kernel0, kernel1, kernel2,
              kernel3, kernel4, kernel5,
              kernel6, kernel7, kernel8;

    wire [9:0] pixel_addr0, pixel_addr1, pixel_addr2,
               pixel_addr3, pixel_addr4, pixel_addr5,
               pixel_addr6, pixel_addr7, pixel_addr8;

    wire [7:0] pixel0, pixel1, pixel2,
               pixel3, pixel4, pixel5,
               pixel6, pixel7, pixel8;

    wire [15:0] sum;
    wire [4:0] i, j;
    wire done;

    // Load kernel weights
    load_kernel load_kernel_inst (
        .clk(clk), .rst(rst),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
    );

    // FSM control
    control control_inst(
        .clk(clk), .rst_n(rst), .done(done), .load(load), .mux_sel(mux_sel),
        .acc_enable(acc_enable), .flush_acc(flush_acc),
        .counter_enable(count_enable), .addr(addr)
    );

    // Counter for i, j
    counters counters_inst(
        .clk(clk), .rst_n(rst), .count_enable(count_enable),
        .i(i), .j(j), .done(done)
    );

    // Patch address generator
    patch_addr_gen #(.H(H), .W(W)) patch_addr_inst (
        .clk(clk), .rst(rst), .addr(addr), .i(i), .j(j),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
        .load_full_patch(load_full_patch)
    );

    // Patch data latching
    patch_data_latch patch_data_inst (
        .clk(clk), .rst(rst), .load(load),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
        .pixel0(pixel0), .pixel1(pixel1), .pixel2(pixel2),
        .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
        .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8)
    );

    // Image patch shift register

    image_reg image_reg_inst (
        .clk(clk), .rst(rst), .load_full_patch(load_full_patch),
        .pixel0(pixel0), .pixel1(pixel1), .pixel2(pixel2),
        .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
        .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8),
        .image_reg0(image_reg0), .image_reg1(image_reg1), .image_reg2(image_reg2),
        .image_reg3(image_reg3), .image_reg4(image_reg4), .image_reg5(image_reg5),
        .image_reg6(image_reg6), .image_reg7(image_reg7), .image_reg8(image_reg8)
    );

    // Multiply and accumulate
    comp comp_inst (
        .clk(clk), .select(mux_sel), .sum(sum), .rst(rst),
        .image_data0(image_reg0), .image_data1(image_reg1), .image_data2(image_reg2),
        .image_data3(image_reg3), .image_data4(image_reg4), .image_data5(image_reg5),
        .image_data6(image_reg6), .image_data7(image_reg7), .image_data8(image_reg8),
        .kernel_data0(kernel0), .kernel_data1(kernel1), .kernel_data2(kernel2),
        .kernel_data3(kernel3), .kernel_data4(kernel4), .kernel_data5(kernel5),
        .kernel_data6(kernel6), .kernel_data7(kernel7), .kernel_data8(kernel8)
    );

    // Accumulator register
    products_reg products_reg_inst (
        .clk(clk), .rst(rst), .flush_acc(flush_acc),
        .acc_enable(acc_enable), .sum(sum), .result(result)
    );

endmodule

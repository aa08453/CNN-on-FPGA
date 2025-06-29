module top
#
(
    parameter H = 28,
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    // input wire start,
    output wire [15:0] result
);

    wire load, acc_enable, flush_acc, count_enable, load_full_patch;
    wire [1:0] mux_sel;

    wire [7:0] image_reg0, image_reg1, image_reg2,
               image_reg3, image_reg4, image_reg5,
               image_reg6, image_reg7, image_reg8;

    reg [7:0] kernel0, kernel1, kernel2,
              kernel3, kernel4, kernel5,
              kernel6, kernel7, kernel8;

    wire [15:0] sum;
    wire [7:0] pixels [0:8]; // Assuming patch module outputs 9 pixels
    wire [4:0] i, j;
    wire done;

    load_kernel load_kernel_inst (
        .clk(clk), .rst(rst),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
    );

    control control_inst(
        .clk(clk), .rst_n(~rst), .done(done), .load(load), .mux_sel(mux_sel),
        .acc_enable(acc_enable), .flush_acc(flush_acc), .counter_enable(count_enable)
    );

    counters counters_inst(
        .clk(clk), .rst_n(rst),
        //  .start(start),
        .count_enable(count_enable), .i(i), .j(j), .done(done)
    );

    patch #(.H(H),.W(W)) patch_inst (
        .clk(clk), .rst(rst), .load(load),
        .i(i), .j(j), .pixels(pixels), .load_full_patch(load_full_patch)
    );

    image_reg image_reg_inst (
        .clk(clk), .rst(rst), .pixels(pixels), .load_full_patch(load_full_patch),
        .image_reg0(image_reg0), .image_reg1(image_reg1), .image_reg2(image_reg2),
        .image_reg3(image_reg3), .image_reg4(image_reg4), .image_reg5(image_reg5),
        .image_reg6(image_reg6), .image_reg7(image_reg7), .image_reg8(image_reg8)
    );

    comp comp_inst (
        .select(mux_sel), .clk(clk), .sum(sum),
        .image_data0(image_reg0), .image_data1(image_reg1), .image_data2(image_reg2),
        .image_data3(image_reg3), .image_data4(image_reg4), .image_data5(image_reg5),
        .image_data6(image_reg6), .image_data7(image_reg7), .image_data8(image_reg8),
        .kernel_data0(kernel0), .kernel_data1(kernel1), .kernel_data2(kernel2),
        .kernel_data3(kernel3), .kernel_data4(kernel4), .kernel_data5(kernel5),
        .kernel_data6(kernel6), .kernel_data7(kernel7), .kernel_data8(kernel8)
    );

    products_reg products_reg_inst (
        .clk(clk), .sum(sum), .result(result), .rst(rst), .load(load)
    );

endmodule

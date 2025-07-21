module conv
#(
    parameter H = 28,
    parameter W = 28,
    parameter IC = 0,
    parameter ADDR_LEN = 9,
    parameter LOOP = 27
)
(
    input wire clk,
    input wire rst,
    input wire conv,
    
    input wire signed [7:0] kernel0, kernel1, kernel2,
                            kernel3, kernel4, kernel5,
                            kernel6, kernel7, kernel8,

    output wire signed [7:0] result,
    output wire [ADDR_LEN:0] address,
    output wire store,
    output wire done,
    output wire load,

    // External memory connection
    input wire signed [7:0] data1,
    input wire signed [7:0] data2,
    output wire [ADDR_LEN:0] addr1,
    output wire [ADDR_LEN:0] addr2
);


    wire addr_gen, count_enable, add;
//    wire [1:0] mux_sel;

    wire load_full_patch, load_done; 

    wire [9:0] pixel_addr0, pixel_addr1, pixel_addr2,
               pixel_addr3, pixel_addr4, pixel_addr5,
               pixel_addr6, pixel_addr7, pixel_addr8;

    wire signed [7:0] pixel0, pixel1, pixel2,
               pixel3, pixel4, pixel5,
               pixel6, pixel7, pixel8;

    wire signed [7:0] sum;
    wire [4:0] i, j;

    conv_control control_inst(
        .clk(clk), .rst_n(rst), .done(done), .load(load), 
//        .mux_sel(mux_sel), 
        .conv(conv), .add(add), .load_done(load_done),
        .counter_enable(count_enable), .addr_gen(addr_gen), .store(store) 
//        .flush_acc(flush_acc)
    );

    counters #(.LOOP(LOOP)) counters_inst(
        .clk(clk), .rst_n(rst), .count_enable(count_enable),
        .i(i), .j(j), .done(done), .conv(conv)
    );

    patch_addr_gen #(.IC(IC)) patch_addr_inst (
        .clk(clk), .rst(rst), .addr_gen(addr_gen), .i(i), .j(j),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
        .load_full_patch(load_full_patch)
    );

    patch_data_latch patch_data_inst (
        .clk(clk), .rst(rst), .load(load), .load_full_patch(load_full_patch), .load_done(load_done),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
        .pixel0(pixel0), .pixel1(pixel1), .pixel2(pixel2),
        .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
        .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8),

        // Memory interface
        .addr1(addr1), .addr2(addr2),
        .data1(data1), .data2(data2)
    );

    comp #(.ADDR_LEN(ADDR_LEN), .W(W)) comp_inst (
        .clk(clk), 
//        .select(mux_sel), 
        .result(result), .rst(rst), .add(add), .i(i), .j(j), .addr(address),
        .image_data0(pixel0), .image_data1(pixel1), .image_data2(pixel2),
        .image_data3(pixel3), .image_data4(pixel4), .image_data5(pixel5),
        .image_data6(pixel6), .image_data7(pixel7), .image_data8(pixel8),
        .kernel_data0(kernel0), .kernel_data1(kernel1), .kernel_data2(kernel2),
        .kernel_data3(kernel3), .kernel_data4(kernel4), .kernel_data5(kernel5),
        .kernel_data6(kernel6), .kernel_data7(kernel7), .kernel_data8(kernel8)
    );

//    products_reg #(.W(W), .ADDR_LEN(ADDR_LEN)) products_reg_inst ( .add(add),
//        .clk(clk), .rst(rst), .i(i), .j(j), .flush_acc(flush_acc),
//        .sum(sum), .result(result), .addr(address)
//    );

endmodule
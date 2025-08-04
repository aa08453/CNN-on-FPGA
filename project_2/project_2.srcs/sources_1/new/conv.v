`timescale 1ns / 1ps

module conv
#(
    parameter H = 28,
    parameter W = 28,
    parameter IC = 0,
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 9,
    parameter LOOP = 27
)
(
    input wire clk,
    input wire rst,
    input wire conv,
    
    input wire signed [7:0] kernel [0:8],

    output wire signed [7:0] result,
    output wire [STORE_ADDR_LEN:0] address,
    output wire store,
    output wire done, 
//    tree_done,
    output wire load, tree,

    // External memory connection
    input wire signed [7:0] data1,
    input wire signed [7:0] data2,
    output wire [LOAD_ADDR_LEN:0] addr1,
    output wire [LOAD_ADDR_LEN:0] addr2
);


    wire addr_gen, count_enable, add;

    wire load_full_patch, load_done; 

    wire [9:0] pixel_addr [0:8];

    wire signed [7:0] pixel [0:8];
    wire [4:0] i, j;

    conv_control #(.IC(IC)) control_inst(
        .clk(clk), .rst_n(rst), .done(done), .load(load), .tree(tree),
        .conv(conv), .add(add), .load_done(load_done),
//         .tree_done(tree_done),
        .counter_enable(count_enable), .addr_gen(addr_gen), .store(store)
    );

    counters #(.LOOP(LOOP)) counters_inst(
        .clk(clk), .rst_n(rst), .count_enable(count_enable),
        .i(i), .j(j), .done(done), .conv(conv), .load_full_patch(load_full_patch)
    );

    patch_addr_gen #(.IC(IC), .ADDR_LEN(LOAD_ADDR_LEN)) patch_addr_inst (
        .clk(clk), .rst(rst), .addr_gen(addr_gen), .i(i), .j(j),
        .pixel_addr(pixel_addr), .load_full_patch(load_full_patch)
    );

    patch_data_latch #(.ADDR_LEN(LOAD_ADDR_LEN)) patch_data_inst
     (
        .clk(clk), .rst(rst), .load(load), .load_full_patch(load_full_patch), .load_done(load_done),
        .pixel_addr(pixel_addr),
        .pixel(pixel),
        .addr1(addr1), .addr2(addr2),
        .data1(data1), .data2(data2)
    );

    comp #(.ADDR_LEN(STORE_ADDR_LEN), .W(W)) comp_inst (
        .clk(clk), 
        .result(result), .add(add), .i(i), .j(j), .addr(address),
        .image_data(pixel),
        .kernel(kernel)
    );


endmodule
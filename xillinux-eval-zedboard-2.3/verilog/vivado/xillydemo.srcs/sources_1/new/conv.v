`timescale 1ns / 1ps

module conv
#(
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 9
)
(
    input wire clk,
    input wire rst,
    
    input wire signed [7:0] kernel [0:8],

    output wire signed [7:0] result,
    input wire load_full_patch,
    input wire load, 
    output wire load_done,
//     tree,
    input wire [9:0] pixel_addr [0:8],
    input wire signed [7:0] data1,
    input wire signed [7:0] data2,
    output wire [LOAD_ADDR_LEN:0] addr1,
    output wire [LOAD_ADDR_LEN:0] addr2,
    input wire add
);

    wire signed [7:0] pixel [0:8];

    patch_data_latch #(.ADDR_LEN(LOAD_ADDR_LEN)) patch_data_inst
     (
        .clk(clk), .rst(rst), .load(load), .load_full_patch(load_full_patch), .load_done(load_done),
        .pixel_addr(pixel_addr),
        .pixel(pixel),
        .addr1(addr1), .addr2(addr2),
        .data1(data1), .data2(data2)
    );

    comp #(.ADDR_LEN(STORE_ADDR_LEN)) comp_inst (
        .clk(clk), 
        .result(result), .add(add),
        .image_data(pixel),
        .kernel(kernel)
    );


endmodule
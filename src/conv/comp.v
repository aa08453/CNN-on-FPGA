`timescale 1ns / 1ps

module comp 
#(
    parameter W = 28,
    parameter ADDR_LEN = 9 // 10 - 1
)
(
    input wire signed [7:0]  image_data0, image_data1, image_data2,
    input wire signed [7:0]  image_data3, image_data4, image_data5,
    input wire signed [7:0]  image_data6, image_data7, image_data8,
    input wire signed [7:0]  kernel_data0, kernel_data1, kernel_data2,
    input wire signed [7:0]  kernel_data3, kernel_data4, kernel_data5,
    input wire signed [7:0]  kernel_data6, kernel_data7, kernel_data8,
//    input [1:0] select,
    input wire add,
    input clk,
    input rst,
    input [4:0] i,
    input [4:0] j,
    output wire signed [7:0] result,
    output wire [ADDR_LEN:0] addr
    
);
    `include "../functions.v"
    wire signed [7:0] p0, p1, p2, p3, p4, p5, p6, p7, p8;
//    wire signed [9:0] total;
    assign addr = i*W + j;
   
    assign p0 = (image_data0 * kernel_data0) >>> 3;
    assign  p1 = (image_data1 * kernel_data1) >>> 3;
    assign  p2 = (image_data2 * kernel_data2) >>> 3;
    assign  p3 = (image_data3 * kernel_data3) >>> 3;
    assign p4 = (image_data4 * kernel_data4) >>> 3;
    assign  p5 = (image_data5 * kernel_data5) >>> 3;
    assign p6 = (image_data6 * kernel_data6) >>> 3;
    assign  p7 = (image_data7 * kernel_data7) >>> 3;
    assign  p8 = (image_data8 * kernel_data8) >>> 3;
       

    
    adder_tree tree(.clk(clk), .rst(rst), .tree(add),
        .result_0(p0), .result_1(p1), .result_2(p2),
        .result_3(p3), .result_4(p4), .result_5(p5), 
        .result_6(p6), .result_7(p7), .result_8(p8), .result(result));
//    mult_mux mux1 (.sel(select), .product(p1),
//        .a0(image_data0), .a1(image_data1), .a2(image_data2),
//        .k0(kernel_data0), .k1(kernel_data1), .k2(kernel_data2));

//    mult_mux mux2 (.sel(select),.product(p2),
//        .a0(image_data3), .a1(image_data4), .a2(image_data5),
//        .k0(kernel_data3), .k1(kernel_data4), .k2(kernel_data5));

//    mult_mux mux3 (.sel(select), .product(p3),
//        .a0(image_data6), .a1(image_data7), .a2(image_data8),
//        .k0(kernel_data6), .k1(kernel_data7), .k2(kernel_data8));
    
//    assign total = p1 + p2 + p3;

//    always @(posedge clk or negedge rst) 
//    begin
//        if (!rst)
//            sum <= 8'sd0;
//        else if (add)
//            sum <= clamp(total);
//    end

endmodule

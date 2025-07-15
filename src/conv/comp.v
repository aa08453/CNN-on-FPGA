
module comp 
(
    input wire signed [7:0]  image_data0, image_data1, image_data2,
    input wire signed [7:0]  image_data3, image_data4, image_data5,
    input wire signed [7:0]  image_data6, image_data7, image_data8,
    input wire signed [7:0]  kernel_data0, kernel_data1, kernel_data2,
    input wire signed [7:0]  kernel_data3, kernel_data4, kernel_data5,
    input wire signed [7:0]  kernel_data6, kernel_data7, kernel_data8,
    input [1:0] select,
    input wire add,
    input clk,
    input rst,
    output reg signed [7:0] sum
    
);
    `include "../functions.v"
    wire signed [7:0] p1, p2, p3;
    reg signed [15:0] inter;

    mult_mux mux1 (.sel(select), .clk(clk), .product(p1),
        .a0(image_data0), .a1(image_data1), .a2(image_data2),
        .k0(kernel_data0), .k1(kernel_data1), .k2(kernel_data2));

    mult_mux mux2 (.sel(select),.clk(clk), .product(p2),
        .a0(image_data3), .a1(image_data4), .a2(image_data5),
        .k0(kernel_data3), .k1(kernel_data4), .k2(kernel_data5));

    mult_mux mux3 (.sel(select), .product(p3), .clk(clk),
        .a0(image_data6), .a1(image_data7), .a2(image_data8),
        .k0(kernel_data6), .k1(kernel_data7), .k2(kernel_data8));

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
            sum <= 8'sd0;
        else if (add)
            sum <= clamp(p1 + p2 + p3);
    end

endmodule

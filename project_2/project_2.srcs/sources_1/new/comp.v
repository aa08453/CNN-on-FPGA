`timescale 1ns / 1ps

module comp 
#(
    parameter W = 28,
    parameter ADDR_LEN = 9 // 10 - 1
)
(
    input wire signed [7:0]  image_data [0:8],
    input wire signed [7:0]  kernel [0:8],
//    input [1:0] select,
    input wire add,
    input clk,
    input [4:0] i,
    input [4:0] j,
    output reg signed [7:0] result,
    output wire [ADDR_LEN:0] addr
    
);
    `include "functions.v"
    wire signed [15:0] q [0:8];
    wire signed [7:0]  p [0:8];
////    wire signed [9:0] total;
    assign addr = i*W + j;
    
    genvar k, m;
    generate
    
    for (k = 0; k < 3; k = k + 1)
   begin
    for (m = 0; m < 3; m = m+1)
    begin
        assign q[k*3 + m] = (image_data[k*3 + m]*kernel[m*3 + k]);
        assign p[k*3 + m] = (q[k*3 + m] >>> 3);
    end
    end
    endgenerate


reg signed [7:0] sum [0:2];


always @(posedge clk) begin
    
//    else if (!add & comp_done)
//        comp_done <= 0;
    
    if (add) 
    begin
        sum[0] <= p[0] + p[1] + p[2];
        sum[1] <= p[3] + p[4] + p[5];
        sum[2] <= p[6] + p[7] + p[8];
        result <= clamp(sum[0] + sum[1] + sum[2]);
    end
end

   
        
        
endmodule




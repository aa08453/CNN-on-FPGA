`timescale 1ns / 1ps

module adder_tree
(
    input  wire              clk,
    input  wire              rst,
    input  wire              tree,       // enable signal
    input  wire signed [7:0] results [0:7],
    output reg  signed [7:0] result         // final clamped output
);
    `include "functions.v"
    // Stage 1 registers: partial sums of 3 inputs each
    reg signed [7:0] sum [0:2];   // Wider to prevent overflow



    // Stage 1: Add three groups of 3 inputs
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            sum[0] <= 8'sd0;
            sum[1] <= 8'sd0;
            sum[2] <= 8'sd0;
        end           
        else if (tree) 
        begin
            sum[0] <= results[0] + results[1] + results[2];
            sum[1] <= results[3] + results[4] + results[5];
            sum[2] <= results[6] + results[7] + 8'sd0;
        end                                     
    end

    // Stage 2: Add the three group sums
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
            result <= 8'sd0;
        else if (tree)
            result <= clamp(sum[0] + sum[1] + sum[2]);
    end


endmodule

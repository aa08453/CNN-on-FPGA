
module adder_tree
(
    input  wire              clk,
    input  wire              rst,
    input  wire              tree,       // enable signal
    input  wire signed [7:0] result_0,
    input  wire signed [7:0] result_1,
    input  wire signed [7:0] result_2,
    input  wire signed [7:0] result_3,
    input  wire signed [7:0] result_4,
    input  wire signed [7:0] result_5,
    input  wire signed [7:0] result_6,
    input  wire signed [7:0] result_7,
    input wire signed [7:0] result_8,
    output reg  signed [7:0] result         // final clamped output
);
    `include "functions.v"
    // Stage 1 registers: partial sums of 3 inputs each
    reg signed [9:0] sum0, sum1, sum2;   // Wider to prevent overflow

    // Stage 2 register: final sum
    reg signed [11:0] final_sum;

    // Stage 1: Add three groups of 3 inputs
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            sum0 <= 0;
            sum1 <= 0;
            sum2 <= 0;
        end 
        else if (tree) 
        begin
            sum0 <= result_0 + result_1 + result_2;
            sum1 <= result_3 + result_4 + result_5;
            sum2 <= result_6 + result_7 + result_8;
        end
    end

    // Stage 2: Add the three group sums
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
            final_sum <= 0;
        else if (tree) 
            final_sum <= sum0 + sum1 + sum2;
    end

    // Clamp and output (same cycle as final_sum)
    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
            result <= 0;
        else if (tree)
            result <= clamp(final_sum);  // Clamp to signed 8-bit range
    end

endmodule

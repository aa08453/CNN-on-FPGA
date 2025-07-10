module mult_mux 
(
    input [1:0] sel,
    input wire signed [7:0] a0,
    input wire signed [7:0] k0,
    input wire signed [7:0] a1,
    input wire signed [7:0] k1,
    input wire signed [7:0] a2,
    input wire signed [7:0] k2,
    input clk,
    input rst,
    output reg signed [7:0] product
);

    always @(*) 
    begin
        case (sel)
            2'b01: product = (a0 * k0) >> 3;
            2'b10: product = (a1 * k1) >> 3;
            2'b11: product = (a2 * k2) >> 3;
            // 2'b00: product = 16'b0;
            // default: product = 16'b0;
        endcase
    end

    always @(posedge clk or negedge rst)
    if (!rst)
    begin
        product <= 8'sd0;
    end

endmodule

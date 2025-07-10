
module mult_mux 
(
    input [1:0] sel,
    input [7:0] a0,
    input [7:0] k0,
    input [7:0] a1,
    input [7:0] k1,
    input [7:0] a2,
    input [7:0] k2,
    input clk,
    input rst,
    output reg [7:0] product
);

    reg [7:0] next_product;

    always @(*) 
    begin
        case (sel)
            2'b01: next_product = (a0 * k0) >> 1;
            2'b10: next_product = (a1 * k1) >> 1;
            2'b11: next_product = (a2 * k2) >> 1;
            // 2'b00: product = 16'b0;
            // default: product = 16'b0;
        endcase
    end

    always @(posedge clk or negedge rst)
    if (!rst)
    begin
        product <= 0;
        next_product <= 0;
    end
    else
    begin
        product <= next_product;
    end

endmodule

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
    output reg [15:0] product
);

    reg [15:0] next_product;

    always @(*) 
    begin
        case (sel)
            2'b01: product = a0 * k0;
            2'b10: product = a1 * k1;
            2'b11: product = a2 * k2;
            // 2'b00: product = 16'b0;
            // default: product = 16'b0;
        endcase
    end

    always @(posedge clk) 
    begin
        product <= next_product;
    end

endmodule

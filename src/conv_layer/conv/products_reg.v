module products_reg
#
(
    parameter W = 28
)
(
    input clk,
    input [31:0] sum,
    input rst,
    input acc_enable,
    input wire [4:0] i,
    input wire [4:0] j,
    output reg [31:0] result,
    output reg [9:0] addr
);

reg [31:0] inter; //intermediate value

always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        result <= 32'd0;
        addr <= 10'd0;
    end
    else 
        inter <= result + sum;

    if (acc_enable)
    begin
        result <= inter;
        addr <= i*W + j;
    end
end

endmodule

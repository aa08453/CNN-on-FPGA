module products_reg
#(
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire acc_enable,
    input wire [7:0] sum,
    input wire [4:0] i,
    input wire [4:0] j,
    output reg [7:0] result,
    output reg [9:0] addr
);

reg [15:0] inter; // Intermediate value

always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        result <= 8'd0;
        addr <= 10'd0;
        inter <= 16'd0;
    end 
    else if (acc_enable)
    begin
        inter <= result + sum;
        result <= inter >> 1;
        addr <= i * W + j;
    end
end

endmodule

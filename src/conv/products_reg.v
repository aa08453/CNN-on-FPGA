module products_reg
#(
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire acc_enable,
    input wire flush_acc,
    input wire signed [7:0] sum,
    input wire [4:0] i,
    input wire [4:0] j,
    output reg signed [7:0] result,
    output reg [9:0] addr
);

always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        result <= 8'sd0;
        addr <= 10'd0;
    end 
    else if (acc_enable)
    begin
        result <= clamp(result + sum);
        addr <= i * W + j;
    end
    else if (flush_acc)
    begin
        result <= 8'sd0;
    end

end

endmodule

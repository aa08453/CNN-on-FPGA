module products_reg
(
    input clk,
    input [16:0] sum,
    output reg [17:0] result,
    input rst,
    input flush_acc,
    input acc_enable
);

always @(posedge clk or negedge rst) 
begin
    if (!rst || flush_acc) 
        result <= 18'd0;
    else if (acc_enable) 
        result <= result + sum;
end

endmodule

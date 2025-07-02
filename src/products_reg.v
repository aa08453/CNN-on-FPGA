module products_reg
(
    input clk,
    input [17:0] sum,
    output reg [18:0] result,
    input rst,
    input flush_acc,
    input acc_enable
);

reg [18:0] inter;

always @(posedge clk or negedge rst) 
begin
    if (!rst || flush_acc) 
        result <= 19'd0;
    else 
        inter <= result + sum;

    if (acc_enable)
        result <= inter;
end

endmodule

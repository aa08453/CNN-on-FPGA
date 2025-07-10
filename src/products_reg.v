module products_reg
(
    input clk,
    input [17:0] sum,
    output reg [18:0] result,
    input rst,
    input flush_acc,
    input acc_enable
);

reg [18:0] inter; //intermediate value

always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        result <= 19'd0;
        inter <= 19'd0;
    end
    else if (flush_acc) 
    begin
        result <= 19'd0;
        inter <= 19'd0;
    end
    else 
    begin
        inter <= result + sum;

        if (acc_enable)
            result <= inter;
    end
end

endmodule

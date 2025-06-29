
module products_reg
(
    input clk,
    input [15:0] sum,
    output [15:0] result,
    input rst,
    input load
);

reg [15:0] reg0, reg1, reg2;

always @(posedge clk or posedge rst) 
begin
    if (rst) 
    begin
        reg0 <= 16'd0;
        reg1 <= 16'd0;
        reg2 <= 16'd0;
    end 
    else if (load) 
    begin
        reg0 <= reg1;
        reg1 <= reg2;
        reg2 <= sum;
    end
end
assign result = reg0 + reg1 + reg2;

endmodule
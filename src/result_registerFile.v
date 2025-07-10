module result_registerFile
#(
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire store,
    input wire [18:0] result,
    input wire [4:0] i, j,
    input wire done
);
    reg [7:0] result_mem [0:783];

    integer k;
    // reg [18:0] write_index;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            for (k = 0; k < 784; k++)
                result_mem[k] <= 8'd0;
        end 
        if (store) 
        begin
            integer idx;
            idx = i * W + j;
            result_mem[idx] <= result;          
        end
        if (done)
        begin
            
            $writememh("result.mem", result_mem);
        end
    end


      

endmodule
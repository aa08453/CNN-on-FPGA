module result_registerFile
#(
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire store,
    input wire bias_init,
    input wire [31:0] value,
    input wire [9:0] addr,
    input wire done
);
    reg [31:0] result_mem [0:783];

    integer k;
    // reg [18:0] write_index;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            for (k = 0; k < 784; k++)
                result_mem[k] <= 32'd0;
        end 
        if (store) 
        begin
            result_mem[addr] <= value + result_mem[addr];          
        end
        if (bias_init)
        begin
            for (k = 0; k < 784; k++)
                result_mem[k] <= value;
        end
        if (done)
        begin
            $writememh("mem_files/result.mem", result_mem);
        end
    end


      

endmodule
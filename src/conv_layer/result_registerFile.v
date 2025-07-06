module result_registerFile
#
(
    parameter CHANNEL_SIZE = 784,
    parameter LAYER_SIZE = 6271 // -1
)
(
    input wire clk,
    input wire rst,
    input wire store,
    input wire bias_init,
    input wire relu,
    input wire [3:0] out_c, 
    input wire [7:0] bias,
    input wire [31:0] value,
    input wire [9:0] addr,
    input wire done
);
    reg [31:0] result_mem [0:LAYER_SIZE];

    integer k;
    // reg [18:0] write_index;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            for (k = 0; k <= LAYER_SIZE; k++)
                result_mem[k] <= 32'd0;
        end 
        else if (store) 
        begin
            result_mem[out_c*CHANNEL_SIZE + addr] <= value + result_mem[out_c*CHANNEL_SIZE + addr];          
        end
        else if (bias_init)
        begin
            for (k = CHANNEL_SIZE*out_c; k < CHANNEL_SIZE + CHANNEL_SIZE*out_c; k++)
                result_mem[k] <= bias;
        end
        else if (relu)
        begin
            for (k = CHANNEL_SIZE*out_c; k < CHANNEL_SIZE + CHANNEL_SIZE*out_c; k++)
            begin
                if (result_mem[k] < 32'd0)
                    result_mem[k] <= 0;
            end
        end
        else if (done)
        begin
            $writememh("mem_files/result.mem", result_mem);
        end
    end


      

endmodule
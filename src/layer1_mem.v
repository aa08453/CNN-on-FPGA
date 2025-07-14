`define POOL(mem, max, next_addr) \
begin \
    max = next_addr; \
    if (mem[next_addr + 1] > mem[max])  max = next_addr + 1; \
    if (mem[next_addr + 28] > mem[max]) max = next_addr + 28; \
    if (mem[next_addr + 29] > mem[max]) max = next_addr + 29; \
    mem[next_addr] <= (mem[max] > 0) ? mem[max] : 0; \
end 

`define STORE(mem, w_addr, bias, result) \
    mem[w_addr] <= clamp(result + bias);

module layer1_mem
#(
    parameter CHANNEL_SIZE = 783,
    parameter OC = 7
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire pool,
    input wire cout_done, 

    input wire [3:0] out_c,         // Output channel index [0–7]
    input wire [9:0] w_addr,
    input wire signed [7:0] bias,          // Bias to initialize with
    input wire signed [7:0] value,          // Value to store

    output reg pool_done,

    input wire load,
    input wire [9:0] addr1, addr2,
    output reg signed [7:0] data01, data02,
    output reg signed [7:0] data11, data12,
    output reg signed [7:0] data21, data22,
    output reg signed [7:0] data31, data32,
    output reg signed [7:0] data41, data42,
    output reg signed [7:0] data51, data52,
    output reg signed [7:0] data61, data62,
    output reg signed [7:0] data71, data72
);

    // Eight independent memory banks for eight output channels
    (* ram_style = "block" *) reg signed [7:0] result_mem0 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem1 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem2 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem3 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem4 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem5 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem6 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg signed [7:0] result_mem7 [0:CHANNEL_SIZE];

    reg [9:0] max0, max1, max2, max3, max4, max5, max6, max7;
    reg [3:0] pool_count;
    reg [9:0] next_addr;
    reg [3:0] channel_count;
    // Core logic
    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            next_addr <= 0;
            pool_count <= 0;
            pool_done <= 0;
            channel_count <= 0;
        end
        else if (store) 
        begin
            case (out_c)
                4'd0: begin `STORE(result_mem0, w_addr, bias, value); end 
                4'd1: begin `STORE(result_mem1, w_addr, bias, value); end
                4'd2: begin `STORE(result_mem2, w_addr, bias, value); end
                4'd3: begin `STORE(result_mem3, w_addr, bias, value); end
                4'd4: begin `STORE(result_mem4, w_addr, bias, value); end
                4'd5: begin `STORE(result_mem5, w_addr, bias, value); end
                4'd6: begin `STORE(result_mem6, w_addr, bias, value); end
                4'd7: begin `STORE(result_mem7, w_addr, bias, value); end
                default: ; // Do nothing
            endcase
        end
        else if (pool && !pool_done) 
        begin
            
            `POOL(result_mem0, max0, next_addr);
            `POOL(result_mem1, max1, next_addr);
            `POOL(result_mem2, max2, next_addr);
            `POOL(result_mem3, max3, next_addr);
            `POOL(result_mem4, max4, next_addr);
            `POOL(result_mem5, max5, next_addr);
            `POOL(result_mem6, max6, next_addr);
            `POOL(result_mem7, max7, next_addr);

            pool_count <= pool_count + 1;
        
            next_addr <= next_addr + 2;
            
            if (pool_count == 14)
            begin
                next_addr <= next_addr + 28;
                pool_count <= 0;
            end

            if (next_addr == 10'd784)
            begin
                pool_done <= (channel_count == OC) ? 1'b1 : 0;
                next_addr <= 0;
                pool_count <= 0;
                channel_count <= channel_count + 1;
            end
        
        end      

        else if (cout_done) 
        begin
            // Optional: write to file for verification
            $writememh("result_mem0.mem", result_mem0);
            $writememh("result_mem1.mem", result_mem1);
            $writememh("result_mem2.mem", result_mem2);
            $writememh("result_mem3.mem", result_mem3);
            $writememh("result_mem4.mem", result_mem4);
            $writememh("result_mem5.mem", result_mem5);
            $writememh("result_mem6.mem", result_mem6);
            $writememh("result_mem7.mem", result_mem7);
        end

        else if (pool_done)
        begin
            $writememh("pool0.mem", result_mem0);
            $writememh("pool1.mem", result_mem1);
            $writememh("pool2.mem", result_mem2);
            $writememh("pool3.mem", result_mem3);
            $writememh("pool4.mem", result_mem4);
            $writememh("pool5.mem", result_mem5);
            $writememh("pool6.mem", result_mem6);
            $writememh("pool7.mem", result_mem7);
        end

        else if (load)
        begin
            data01 <= result_mem0[addr1];
            data02 <= result_mem0[addr2];

            data11 <= result_mem1[addr1];
            data12 <= result_mem1[addr2];

            data21 <= result_mem2[addr1];
            data22 <= result_mem2[addr2];

            data31 <= result_mem3[addr1];
            data32 <= result_mem3[addr2];

            data41 <= result_mem4[addr1];
            data42 <= result_mem4[addr2];

            data51 <= result_mem5[addr1];
            data52 <= result_mem5[addr2];

            data61 <= result_mem6[addr1];
            data62 <= result_mem6[addr2];

            data71 <= result_mem7[addr1];
            data72 <= result_mem7[addr2];
        end

        else if (pool_done && !pool) 
        begin
            pool_done <= 0;
            channel_count <= 0;
        end
    end
    

endmodule
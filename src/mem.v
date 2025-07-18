`timescale 1ns / 1ps

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


module mem
#(
    parameter CHANNEL_SIZE = 783,
    parameter OC = 7,
    parameter OUT = 0
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire pool,
    input wire cout_done, 

    input wire [3:0] out_c,         // Output channel index [0â€"7]
    input wire [9:0] w_addr,
    input wire signed [7:0] bias,          // Bias to initialize with
    input wire signed [7:0] value,          // Value to store

    output reg pool_done,

    input wire load,
    input wire [9:0] addr1, addr2,
    output reg signed [7:0] data1, data2
);


    `include "functions.v"
    // Eight independent memory banks for eight output channels
    (* ram_style = "block" *) reg signed [7:0] result_mem [0:CHANNEL_SIZE];

    reg [9:0] max;
    reg [3:0] pool_count;
    reg [9:0] next_addr;
    reg [3:0] channel_count;
    // Core logic
    
    always @(posedge clk or negedge rst)  
    begin  
        if (store && out_c == OUT) 
            result_mem[w_addr] <= clamp(value + bias);


        else if (!rst)
        begin
            next_addr <= 0;
            pool_count <= 0;
            pool_done <= 0;
            channel_count <= 0;
        end
        
        else if (pool && !pool_done) 
        begin
            
            max = next_addr;
            if (result_mem[next_addr + 1] > result_mem[max])  max = next_addr + 1; 
            if (result_mem[next_addr + 28] > result_mem[max]) max = next_addr + 28; 
            if (result_mem[next_addr + 29] > result_mem[max]) max = next_addr + 29; 
            result_mem[next_addr] <= (result_mem[max] > 0) ? result_mem[max] : 0;

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

        else if (pool_done && !pool) 
        begin
            pool_done <= 0;
            channel_count <= 0;
        end

        else if (pool_done)
            $writememh("pool.mem", result_mem);

        
        else if (cout_done) 
            // Optional: write to file for verification
            $writememh("result.mem", result_mem);


     else if (load)
        begin
                data1 <= result_mem[addr1];
                data2 <= result_mem[addr2];
        end               
      end




endmodule
// Simple dual-port BRAM with pooling support
`timescale 1ns / 1ps

module mem 
#(
    parameter DEPTH = 783,
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 7, // 10 - 1
    parameter W = 28
)
(
    input wire clk,
    input wire we,
    input wire [STORE_ADDR_LEN:0] addr,
    input wire signed [7:0] din,

    input wire pool, load,

    input wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output reg signed [7:0] dout1, dout2
);

    (*ram_style = "block" *) reg signed [7:0] mem [0:DEPTH];
    reg [STORE_ADDR_LEN:0] max;

    always @(posedge clk) 
    begin
        if (we)
            mem[addr] <= din;

        if (pool) 
        begin
            max = addr;
            if (mem[addr + 1] > mem[max])  max = addr + 1;
            if (mem[addr + W] > mem[max]) max = addr + W;
            if (mem[addr + W + 1] > mem[max]) max = addr + W + 1;
            mem[addr] <= (mem[max] > 0) ? mem[max] : 0;
        end
        
        if (load)
        begin
            dout1 <= mem[addr1];
            dout2 <= mem[addr2];
        end
    end
endmodule
`timescale 1ns / 1ps

module layer_mem
#(
    parameter CHANNEL_SIZE = 783,
    parameter ADDR_LEN = 9, //10 - 1
    parameter W = 28,
    parameter OC = 7
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire pool,
    input wire cout_done,

    input wire [3:0] out_c,
    input wire [ADDR_LEN:0] w_addr,
    input wire signed [7:0] bias,
    input wire signed [7:0] value,

    input wire load,
    input wire [9:0] addr1, addr2,

    output signed [7:0] data_out [0:OC][0:1],
    output reg pool_done
);
    `include "functions.v"
    // Pooling control
    reg [3:0] pool_count;
    reg [ADDR_LEN:0] next_addr;
    reg [3:0] channel_count;

    wire signed [7:0] wr_data = (store) ? clamp(value + bias) : 8'd0;

    // Instantiate BRAMs
    genvar i;
    generate
        for (i = 0; i <= OC; i = i + 1) 
        begin : brams
            mem #( .DEPTH(CHANNEL_SIZE), .W(W), .ADDR_LEN(ADDR_LEN)) 
            mem_inst (
                .clk(clk),
                .we(store && (out_c == i)),
                .addr(pool ? next_addr : w_addr),
                .din(wr_data),
                .pool(pool && (channel_count == i)),
                .load(load),
                .addr1(addr1),
                .addr2(addr2),
                .dout1(data_out[i][0]),
                .dout2(data_out[i][1])
            );
        end
    endgenerate
    

    // Shared control logic for pooling
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            next_addr <= 0;
            pool_count <= 0;
            channel_count <= 0;
            pool_done <= 0;
        end 
        else 
        begin
            if (pool && !pool_done) 
            begin
                // Advance pooling steps
                next_addr <= next_addr + 2;
                pool_count <= pool_count + 1;

                if (pool_count == (W >> 1)) 
                begin
                    next_addr <= next_addr + W;
                    pool_count <= 0;
                end

                if (next_addr >= (CHANNEL_SIZE + 1)) 
                begin
                    if (channel_count == OC) 
                        pool_done <= 1;
                    else 
                    begin
                        channel_count <= channel_count + 1;
                        next_addr <= 0;
                        pool_count <= 0;
                    end
                end
            end 
            else if (!pool && pool_done) 
            begin
                pool_done <= 0;
                channel_count <= 0;
            end
        end
    end

endmodule







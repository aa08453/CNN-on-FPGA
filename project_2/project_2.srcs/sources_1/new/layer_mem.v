`timescale 1ns / 1ps

module layer_mem
#(
    parameter CHANNEL_SIZE = 783,
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 7,
    parameter W = 28,
    parameter OC = 7
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire pool,

    input wire [3:0] out_c,
    input wire [STORE_ADDR_LEN:0] w_addr,
    input wire signed [7:0] bias,
    input wire signed [7:0] value,

    input wire load,
    input wire [LOAD_ADDR_LEN:0] addr1,
    input wire [LOAD_ADDR_LEN:0] addr2,

    output wire signed [7:0] data_out [0:OC][0:1],
    output wire pool_done
);

    `include "functions.v"
    
    wire signed [7:0] wr_data = (store) ? clamp(value + bias) : 8'd0;

    wire [LOAD_ADDR_LEN:0] new_addr [0:OC];
    wire pool_store [0:OC];
    wire pool_load [0:OC];
    wire done [0:OC];
    wire signed [7:0] max [0:OC];
    wire [LOAD_ADDR_LEN:0] p_addr1 [0:OC];
    wire [LOAD_ADDR_LEN:0] p_addr2 [0:OC];
    wire signed [7:0] p_data_out [0:OC][0:1];
    
    wire signed [7:0] mem_dout1 [0:OC];
    wire signed [7:0] mem_dout2 [0:OC];
    wire [LOAD_ADDR_LEN:0] mem_addr1 [0:OC];
    wire [LOAD_ADDR_LEN:0] mem_addr2 [0:OC];

    genvar k;
    generate
        for (k = 0; k <= OC; k = k + 1) 
        begin : brams
            assign p_data_out[k][0] =  pool ? mem_dout1[k] : 8'd0;
            assign p_data_out[k][1] =  pool ? mem_dout2[k] : 8'd0;
            assign data_out[k][0]   = ~pool ? mem_dout1[k] : 8'd0;
            assign data_out[k][1]   = ~pool ? mem_dout2[k] : 8'd0;
            
            assign mem_addr1[k] = pool ? p_addr1[k] : addr1;
            assign mem_addr2[k] = pool ? p_addr2[k] : addr2;
            // Instantiate pooling controller
            pool #(.LOAD_ADDR_LEN(LOAD_ADDR_LEN), .W(W)) 
            pool_inst (
                .clk(clk),
                .rst(rst),
                .pool(pool),
                .max(max[k]),
                .new_addr(new_addr[k]),
                .pool_store(pool_store[k]),
                .pool_load(pool_load[k]),
                .addr1(p_addr1[k]),
                .addr2(p_addr2[k]),
                .data1(p_data_out[k][0]),
                .data2(p_data_out[k][1]),
                .channel_done(done[k])
            );

            // Instantiate memory for this channel
            mem #( 
                .DEPTH(CHANNEL_SIZE), 
                .W(W), 
                .LOAD_ADDR_LEN(LOAD_ADDR_LEN), 
                .STORE_ADDR_LEN(STORE_ADDR_LEN)
            ) mem_inst (
                .clk(clk),
                .store((store && (out_c == k)) || pool_store[k]),
                .addr(pool ? new_addr[k] : w_addr),
                .din(pool ? max[k] : wr_data),
                .load(load || pool_load[k]),
                .addr1(mem_addr1[k]),
                .addr2(mem_addr2[k]),
                .dout1(mem_dout1[k]),
                .dout2(mem_dout2[k])
            );
        end
    endgenerate


    // Pool done logic for all channels
    reg done_tmp;
    integer j;
    always @(*) 
    begin
        done_tmp = 1'b1;
        for (j = 0; j <= OC; j = j + 1) 
        begin
            done_tmp  = done_tmp & done[j];
        end
    end

    assign pool_done = done_tmp;

endmodule

`timescale 1ns / 1ps

module pool
#(
    parameter LOAD_ADDR_LEN = 9,
    parameter W = 28
)
(
    input wire clk, 
    input wire rst,
    input wire pool,
    input wire signed [7:0] data1, data2,
    
    output wire signed [7:0] max,
    output wire [LOAD_ADDR_LEN:0] new_addr,
    output wire channel_done,
    output wire pool_store,
    output wire pool_load,
    output wire [LOAD_ADDR_LEN:0] addr1, addr2
);

    wire max_done;
    wire pool_count;
    wire [4:0] i, j;
    
    wire signed [7:0] max1;
    
    assign max = (max1 > 0) ? max1 : 0;

    // FSM: generates pool_store, pool_load, control signals
    pool_control pool_control_inst (
        .clk(clk),
        .rst(rst),
        .pool(pool),
        .pool_load(pool_load),
        .pool_count(pool_count),
        .max_done(max_done),
        .channel_done(channel_done),
        .pool_store(pool_store)
    );

    // 2D Counter for generating pooling coordinates
    counters #(.LOOP(W - 2), .STEP(2)) 
    counters_inst (
        .clk(clk),
        .rst_n(rst), // counters expects active-low reset
        .count_enable(pool_count),
        .conv(pool),
        .i(i),
        .j(j),
        .done(channel_done)
    );

    // Computes max, generates address, coordinates, and result
    pool_data #(.W(W), .ADDR_LEN(LOAD_ADDR_LEN))
    pool_data_inst (
        .clk(clk),
        .rst(rst),
        .pool_load(pool_load),
        .i(i),
        .j(j),
        .max(max1),
        .max_done(max_done),
        .new_addr(new_addr),
        .addr1(addr1),
        .addr2(addr2),
        .data1(data1),
        .data2(data2)
    );

endmodule

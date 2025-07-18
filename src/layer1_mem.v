`timescale 1ns / 1ps

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

    output wire pool_done,

    input wire load,
    input wire [9:0] addr1, addr2,
    output wire signed [7:0] data01, data02,
    output wire signed [7:0] data11, data12,
    output wire signed [7:0] data21, data22,
    output wire signed [7:0] data31, data32,
    output wire signed [7:0] data41, data42,
    output wire signed [7:0] data51, data52,
    output wire signed [7:0] data61, data62,
    output wire signed [7:0] data71, data72
);
    wire pool_done1, pool_done2, pool_done3, pool_done4, pool_done5, pool_done6, pool_done7;

    mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(0))
    mem0 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done1), .load(load), .addr1(addr1), .addr2(addr2), .data1(data01), .data2(data02));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(1))
    mem1 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done2), .load(load), .addr1(addr1), .addr2(addr2), .data1(data11), .data2(data12));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(2))
    mem2 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done3), .load(load), .addr1(addr1), .addr2(addr2), .data1(data21), .data2(data22));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(3))
    mem3 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done4), .load(load), .addr1(addr1), .addr2(addr2), .data1(data31), .data2(data32));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(4))
    mem4 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done5), .load(load), .addr1(addr1), .addr2(addr2), .data1(data41), .data2(data42));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(5))
    mem5 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done6), .load(load), .addr1(addr1), .addr2(addr2), .data1(data51), .data2(data52));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(6))
    mem6 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done), .load(load), .addr1(addr1), .addr2(addr2), .data1(data61), .data2(data62));
    
        mem #( .CHANNEL_SIZE(CHANNEL_SIZE), .OC(OC),.OUT(7))
    mem7 ( .clk(clk), .rst(rst), .store(store), .pool(pool), .cout_done(cout_done), .out_c(out_c), .w_addr(w_addr),
    .bias(bias), .value(value), .pool_done(pool_done7), .load(load), .addr1(addr1), .addr2(addr2), .data1(data71), .data2(data72));
    
    
   assign pool_done = (pool_done1 & pool_done2 & pool_done3 & pool_done4 & pool_done5 & pool_done6 & pool_done7);



endmodule
`timescale 1ns / 1ps


module top
#(
    parameter CHANNEL_SIZE1 = 783,
    parameter CHANNEL_SIZE2 = 195,
    parameter ADDR_LEN1 = 9,
    parameter ADDR_LEN2 = 7,
    parameter H = 28,
    parameter W1 = 28,
    parameter W2 = 14,
    parameter OC1 = 7,
    parameter OC2 = 15,
    parameter IC = 0,
    parameter CLASSES = 9
    
)
(
    input wire clk,
    input wire rst,
    output wire signed [7:0] outputs [0:CLASSES]
);

    wire store1, store2, pool1, pool2;

    wire cout1_done, cout2_done, pool1_done, pool2_done, dense_done; 

    wire signed [7:0] bias1, bias2;

    wire [3:0] out_c1, out_c2;
    wire [ADDR_LEN1:0] address1;
    wire [ADDR_LEN2:0] address2;
    
    wire signed [7:0] result1 , result2;
    
    wire load1, load2, load3;
    
    wire signed [7:0] mem_data1, mem_data2;
    wire [ADDR_LEN1:0] mem_addr1, mem_addr2;
    
    wire [ADDR_LEN1:0] addr1_1, addr1_2;
    wire [ADDR_LEN2:0] addr2_1, addr2_2;
    
    wire signed [7:0] data_out1 [0:IC][0:1];
    wire signed [7:0] data_out2 [0:OC1][0:1];
    wire signed [7:0] data_out3 [0:OC2][0:1];
    
    wire [4:0] row, col, channel;

    image_mem mem_inst (
        .clk(clk), .rst(rst), .load(load1),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .data_out1(mem_data1),
        .data_out2(mem_data2)
    );
    
    assign data_out1[0][0] = mem_data1;
    assign data_out1[0][1] = mem_data2;;

    layer #(
        .H(H),
        .W(W1),
        .OC(OC1),
        .IC(IC),
        .LOAD_ADDR_LEN(ADDR_LEN1),
        .STORE_ADDR_LEN(ADDR_LEN1),
        .LOOP(W1 - 1)
    )
    layer1_inst (
        .clk(clk),
        .rst(rst),
        .load(load1),
        .store(store1),
        .address(address1),
        .result(result1),
        .bias(bias1),
        .pool(pool1),
        .start(1'b0),
        .pool_done(pool1_done),
        .cout_done(cout1_done),
        .data_out(data_out1),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .out_c(out_c1)
    );


    layer_mem #(
        .CHANNEL_SIZE(CHANNEL_SIZE1),
        .OC(OC1),
        .LOAD_ADDR_LEN(ADDR_LEN1),
        .STORE_ADDR_LEN(ADDR_LEN1),
        .W(W1)
    ) layer1_mem_inst (
        .clk(clk),
        .rst(rst),
        .store(store1),
        .pool(pool1),
        .cout_done(cout1_done),
        .out_c(out_c1),
        .w_addr(address1),
        .bias(bias1),
        .value(result1),
        .load(load2),
        .addr1(addr1_1),
        .addr2(addr1_2),
        .data_out(data_out2),
        .pool_done(pool1_done)
    );


    layer #(
        .H(W2),
        .W(W2),
        .OC(OC2),
        .IC(OC1),
        .LOAD_ADDR_LEN(ADDR_LEN1),
        .STORE_ADDR_LEN(ADDR_LEN2),
        .LOOP(W2 - 1)
    ) 
    layer2_inst (
        .clk(clk),
        .rst(rst),
        .store(store2),
        .address(address2),
        .result(result2),
        .bias(bias2),
        .pool(pool2),
        .start(pool1_done),
        .pool_done(pool2_done),
        .cout_done(cout2_done),
        .load(load2),
        .data_out(data_out2),
        .addr1(addr1_1), .addr2(addr1_2),
        .out_c(out_c2)
    );

    layer_mem #( 
        .CHANNEL_SIZE(CHANNEL_SIZE2), 
        .LOAD_ADDR_LEN(ADDR_LEN2),
        .STORE_ADDR_LEN(ADDR_LEN2),
        .W(W2),
        .OC(OC2)
    )
    layer2_mem_inst (.clk(clk), .rst(rst), .load(load3), .out_c(out_c2), .store(store2), .pool(pool2), .pool_done(pool2_done),
            .bias(bias2),.w_addr(address2),.cout_done(cout2_done), .value(result2), .data_out(data_out3), .addr1(addr2_1), .addr2(addr2_2));
            
    assign addr2_1 = row*4'd14 + col;
    assign addr2_2 = addr2_1 + 2;        
    
    dense #(.NC(CLASSES), .WEIGHT_ADDR_LEN(10), .OC(OC2), .MAX_COL(12)) 
    dense(.clk(clk), .rst(rst), .row(row), .dense(pool2_done),
    .col(col), .channelCount(channel), .dataOut(data_out3), .donePending(dense_done), .result(outputs));    

endmodule
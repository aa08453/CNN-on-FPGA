


module top
#(
    parameter CHANNEL_SIZE = 783,
    parameter H = 28,
    parameter W = 28,
    parameter OC = 7,
    parameter IC = 0
)
(
    input wire clk,
    input wire rst
);

    wire cout, c_load, conv, store, pool;

    wire cout_done; 


    reg signed [7:0] bias;

    wire [3:0] out_c;
    wire [9:0] address;
    wire [7:0] result;

    wire signed [7:0] mem_data1, mem_data2;
    wire [9:0] mem_addr1, mem_addr2;

    image_mem mem_inst (
        .clk(clk),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .data_out1(mem_data1),
        .data_out2(mem_data2)
    );

    layer layer1_inst (
        .clk(clk),
        .rst(rst),
        .store(store),
        .address(address),
        .result(result),
        .bias(bias),
        .pool(pool),
        .pool_done(pool_done),
        .cout_done(cout_done),
        .data1(mem_data1),
        .data2(mem_data2),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .out_c(out_c)
    );


    layer1_mem #( .CHANNEL_SIZE(CHANNEL_SIZE))
    l1_mem_inst (.clk(clk), .rst(rst), .out_c(out_c), .store(store), .pool(pool), .pool_done(pool_done),
            .bias(bias),.w_addr(address),.cout_done(cout_done), .value(result),
            .load(load),.addr1(addr1), .addr2(addr2),
            .data01(data01), .data02(data02),
            .data11(data11), .data12(data12),
            .data21(data21), .data22(data22),
            .data31(data31), .data32(data32),
            .data41(data41), .data42(data42),
            .data51(data51), .data52(data52),
            .data61(data61), .data62(data62),
            .data71(data71), .data72(data72)        
        );

    layer layer2_inst (
        .clk(clk),
        .rst(rst),
        .store(store),
        .address(address),
        .result(result),
        .bias(bias),
        .pool(pool),
        .pool_done(pool_done),
        .cout_done(cout_done),
        .data1(mem_data1),
        .data2(mem_data2),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .out_c(out_c)
    );
    // result of layer 2 here - memory for FC




endmodule
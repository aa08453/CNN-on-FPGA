


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

    wire store1, store2, pool1, pool2;

    wire cout1_done, cout2_done, pool1_done, pool2_done; 


    reg signed [7:0] bias;

    wire [3:0] out_c1, out_c2;
    wire [9:0] address1;
    wire [7:0] address2;
    wire [7:0] result1 , result2;

    wire signed [7:0] mem_data1, mem_data2;
    wire [9:0] mem_addr1, mem_addr2;

    wire signed [7:0] data01, data02;
    wire signed [7:0] data11, data12;
    wire signed [7:0] data21, data22;
    wire signed [7:0] data31, data32;
    wire signed [7:0] data41, data42;
    wire signed [7:0] data51, data52;
    wire signed [7:0] data61, data62;
    wire signed [7:0] data71, data72;
    wire [9:0] addr1, addr2;

    image_mem mem_inst (
        .clk(clk),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .data_out1(mem_data1),
        .data_out2(mem_data2)
    );

    layer #(
        .H(28),
        .W(28),
        .OC(7),
        .IC(0),
        .ADDR_LEN(9)
    )
    layer1_inst (
        .clk(clk),
        .rst(rst),
        .store(store1),
        .address(address1),
        .result(result1),
        .bias(bias1),
        .pool(pool1),
        .pool_done(pool1_done),
        .cout_done(cout1_done),
        .data1(mem_data1),
        .data2(mem_data2),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .out_c(out_c1)
    );


    layer1_mem #( .CHANNEL_SIZE(783))
    l1_mem_inst (.clk(clk), .rst(rst), .out_c(out_c1), .store(store1), .pool(pool1), .pool_done(pool1_done),
            .bias(bias),.w_addr(address),.cout_done(cout1_done), .value(result),
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

    layer #(
        .H(14),
        .W(14),
        .OC(15),
        .IC(7),
        .ADDR_LEN(7)
    ) 
    layer2_inst (
        .clk(clk),
        .rst(rst),
        .store(store2),
        .address(address2),
        .result(result2),
        .bias(bias2),
        .pool(pool2),
        .pool_done(pool2_done),
        .cout_done(cout2_done),
        .data01(data01), .data02(data02),
        .data11(data11), .data12(data12),
        .data21(data21), .data22(data22),
        .data31(data31), .data32(data32),
        .data41(data41), .data42(data42),
        .data51(data51), .data52(data52),
        .data61(data61), .data62(data62),
        .data71(data71), .data72(data72),
        .addr1(addr1), .addr2(addr2),
        .out_c(out_c2)
    );

    layer2_mem #( .CHANNEL_SIZE(195))
    l1_mem_inst (.clk(clk), .rst(rst), .out_c(out_c2), .store(store2), .pool(pool2), .pool_done(pool2_done),
            .bias(bias2),.w_addr(address2),.cout_done(cout2_done), .value(result2)       
        );
    
    




endmodule
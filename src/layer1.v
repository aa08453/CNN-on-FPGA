
module layer1
#(
    parameter H = 28,
    parameter W = 28,
    parameter OC = 7,
    parameter IC = 0,
    parameter ADDR_LEN = 9, // 10 - 1
    parameter LOOP = 27
)
(
    input wire clk,
    input wire rst,
    output wire store,
    input wire pool_done,
    output wire pool,
    input wire start,
    output wire load,
    output wire [ADDR_LEN:0] address,
    output wire signed [7:0] result,
    output wire signed [7:0] bias,
    output wire cout_done,

    input wire signed [7:0] data1,
    input wire signed [7:0] data2,
    output wire [9:0] addr1,
    output wire [9:0] addr2,
    output wire [3:0] out_c
);

    wire cout, c_load, conv, tree;

    wire conv_done; 

    wire signed [7:0] kernel0, kernel1, kernel2,
                     kernel3, kernel4, kernel5,
                     kernel6, kernel7, kernel8;

    layer_control #(.IC(IC)) layer_control_inst( .start(start),
    .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), .pool(pool), 
    .conv(conv), .pool_done(pool_done), .tree(tree),
    .conv_done(conv_done), .cout_done(cout_done));
    
    channel_counter #(.CHANNELS(OC)) 
    out_counter(
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done));

    // Load kernels
    load_kernel load_kernel_inst 
    (
        .clk(clk), .rst(rst), .cout(out_c), .c_load(c_load),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
    );

    // Load bias
    load_bias #(.OC(OC)) 
    load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load),
        .out_c(out_c), .bias(bias)
    );

    // Convolution
    conv #(.H(H), .W(W), .IC(IC), .ADDR_LEN(ADDR_LEN), .LOOP(LOOP)) 
    conv_inst (
        .clk(clk), .rst(rst), .conv(conv), .load(load),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8),
        .result(result), .address(address),
        .store(store), .done(conv_done),

        // Memory interface pass-through
        .addr1(addr1), .addr2(addr2),
        .data1(data1), .data2(data2)
    );
    





endmodule


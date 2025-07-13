`define CONV_INST(idx) \
    conv #(.H(H), .W(W), .IC(IC)) conv_inst_``idx`` ( \
        .clk(clk), .rst(rst), .conv(conv), \
        .kernel0(kernel``idx``0), .kernel1(kernel``idx``1), .kernel2(kernel``idx``2), \
        .kernel3(kernel``idx``3), .kernel4(kernel``idx``4), .kernel5(kernel``idx``5), \
        .kernel6(kernel``idx``6), .kernel7(kernel``idx``7), .kernel8(kernel``idx``8), \
        .result(result_``idx``), .address(address), .store(store_``idx``), .done(done_``idx``), \
        .data1(data1), .data2(data2), \
        .addr1(addr1), .addr2(addr2));

`define DECL_KERNELS(idx) \
    wire signed [7:0] \
        kernel``idx``0, kernel``idx``1, kernel``idx``2, \
        kernel``idx``3, kernel``idx``4, kernel``idx``5, \
        kernel``idx``6, kernel``idx``7, kernel``idx``8;

module layer1
#(
    parameter H = 28,
    parameter W = 28,
    parameter OC = 7,
    parameter IC = 0
)
(
    input wire clk,
    input wire rst,
    output wire store,
    input wire pool_done,
    output wire pool,
    output wire [9:0] address,
    output wire signed [7:0] result,
    output reg signed [7:0] bias,
    output wire cout_done,

    input wire signed [7:0] data1,
    input wire signed [7:0] data2,
    output wire [9:0] addr1,
    output wire [9:0] addr2,
    output wire [3:0] out_c
);

    wire cout, c_load, conv, tree;

    wire conv_done; 

    layer_control #(.IC(IC)) layer_control_inst(
    .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), .pool(pool), 
    .conv(conv), .pool_done(pool_done), .tree(tree),
    .conv_done(conv_done), .cout_done(cout_done));
    
    channel_counter #(.CHANNELS(OC)) 
    out_counter(
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done));


    reg signed [7:0] kernel0, kernel1, kernel2,
        kernel3, kernel4, kernel5,
        kernel6, kernel7, kernel8;
    // Load kernels
    load_kernel load_kernel_inst 
    (
        .clk(clk), .rst(rst), .cout(out_c), .c_load(c_load),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
    );

    // Load bias
    load_bias #(.OC(OC), .BIAS_FILE("mem_files/conv1_bias.mem")) 
    load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load),
        .out_c(out_c), .bias(bias)
    );

    // Convolution
    conv #(.H(28), .W(28), .IC(IC)) 
    conv_inst (
        .clk(clk), .rst(rst), .conv(conv),
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


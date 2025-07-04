

module top
#(
    parameter H = 28,
    parameter W = 28,
    parameter OC = 7
)
(
    input wire clk,
    input wire rst
);

    wire cout, c_load, bias_init, cin, conv, result_store, relu, output_store;

    wire conv_done, cin_done, cout_done; 

    reg [7:0] kernel0, kernel1, kernel2,
              kernel3, kernel4, kernel5,
              kernel6, kernel7, kernel8;

    reg [7:0] bias;

    wire [2:0] out_c;
    // wire [2:0] in_c;

    
    load_kernel load_kernel_inst (
        .clk(clk), .rst(rst), .cout(out_c), .c_load(c_load),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
        );

    load_bias #(.OC(OC)) load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load), .bias(bias)
    )

    result_registerFile #( .W(W))
    result_inst (.clk(clk), .rst(rst), .store(bias_init), .result(bias),.addr(0),.done(0));

    control control_inst(
        .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), .relu(relu), .cin(cin), 
        .result_store(result_store), .output_store(output_store), .conv(conv), .bias_init(bias_init)
    );

    counter out_counter(
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done)
    );

    conv conv_inst (.clk(clk), .rst(rst), .conv(conv),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8),
        .conv_done(conv_done), 
    );

    

endmodule
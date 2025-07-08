

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

    wire cout, c_load, cin, conv, is_single_input_channel, store, first_write;

    wire conv_done, cin_done, cout_done; 

    reg [7:0] kernel0, kernel1, kernel2,
              kernel3, kernel4, kernel5,
              kernel6, kernel7, kernel8;

    reg [7:0] bias;

    wire [3:0] out_c;
    wire [2:0] in_c;
    wire [9:0] addr;  // Adjust width as needed
    wire [7:0] result;
    
    load_kernel load_kernel_inst (
        .clk(clk), .rst(rst), .cout(out_c), .c_load(c_load),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8)
        );

    load_bias #(.OC(OC)) load_bias_inst ( .cout(out_c),
        .clk(clk), .rst(rst), .c_load(c_load), .bias(bias));

    result_registerFile #( .CHANNEL_SIZE(CHANNEL_SIZE))
    result_inst (.clk(clk), .rst(rst), .out_c(out_c), .store(store), //.relu(relu), 
            .bias(bias),.addr(addr),.cout_done(cout_done), .value(result), .first_write(in_c == 3'b1));

    top_control control_inst(
        .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), //.relu(relu), 
        .cin(cin), .conv(conv), .is_single_input_channel(IC == 0), //.pool_done(pool_done),
        .conv_done(conv_done), .cin_done(cin_done), .cout_done(cout_done));

    channel_counter #(.CHANNELS(OC)) 
    out_counter(
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done));

    generate
    if (IC > 0) 
    begin : gen_input_counter
        channel_counter #(.CHANNELS(IC)) 
        in_counter (.clk(clk), .rst_n(rst), .signal(cin),.count(in_c),.complete(cin_done));
    end 
    else 
    begin : no_gen
        assign cin_done = 1'b1;
        assign in_c = 3'd0;
    end
    endgenerate

    conv conv_inst (.clk(clk), .rst(rst), .conv(conv), .store(store),
        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8),
        .done(conv_done), .result(result), .address(addr));


endmodule
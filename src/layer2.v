module layer2
#(
    parameter H = 14,
    parameter W = 14,
    parameter OC = 15,
    parameter IC = 7,
    parameter ADDR_LEN = 7,
    parameter LOOP = 13
)
(
    input wire clk,
    input wire rst,
    output wire store,
    input wire pool_done,
    output wire pool,
    input wire start,
    
    output wire [ADDR_LEN:0] address,
    output wire signed [7:0] result,
    output wire signed [7:0] bias,
    output wire cout_done,
    output wire load,
    input wire signed [7:0] data_out [0:IC][0:1],
    output wire [ADDR_LEN:0] addr1,
    output wire [ADDR_LEN:0] addr2,
    output wire [3:0] out_c
);

    wire cout, c_load, conv, tree;

    wire conv_done;    

    layer_control #(.IC(IC)) layer_control_inst( .start(start),
    .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), .pool(pool), 
    .conv(conv), .pool_done(pool_done), .tree(tree),
    .conv_done(conv_done), .cout_done(cout_done));
    
    channel_counter #(.CHANNELS(OC)) 
    out_counter(
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done));

    // Declare result wires
    wire signed [7:0] result_arr [0:OC];
    wire load_arr  [0:OC];
    wire done_arr  [0:OC];
    wire store_arr [0:OC];

    // Declare kernel wires
    wire signed [7:0] kernel [0:OC][0:8];


    load_kernels #(.VAL(1151), .OC(OC)) 
    load_kernels_inst (
    .clk(clk), .rst(rst), .c_load(c_load), .out_c(out_c),
    .kernel(kernel));


    load_bias #(.OC(OC)) 
    load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load),
        .out_c(out_c), .bias(bias)
    );

    // Instantiate 8 conv blocks 
    genvar i;
    generate
        for (i = 0; i <= OC; i = i + 1) 
        begin : conv_blocks
            conv #(.H(H), .W(W), .IC(IC), .ADDR_LEN(ADDR_LEN), .LOOP(LOOP)) 
            conv_inst (
                .clk(clk), .rst(rst), .conv(conv), .load(load_arr[i]),
                .kernel0(kernel[i][0]), .kernel1(kernel[i][1]), .kernel2(kernel[i][2]),
                .kernel3(kernel[i][3]), .kernel4(kernel[i][4]), .kernel5(kernel[i][5]),
                .kernel6(kernel[i][6]), .kernel7(kernel[i][7]), .kernel8(kernel[i][8]),
                .result(result_arr[i]), .address(address), .store(store_arr[i]), .done(done_arr[i]),
                .data1(data_out[i][0]), .data2(data_out[i][1]),
                .addr1(addr1), .addr2(addr2)
            );
        end
    endgenerate

    // Add results manually (adder tree)
    adder_tree adder_inst(.clk(clk), .rst(rst), .tree(tree),
        .result_0(result_arr[0]), .result_1(result_arr[1]), .result_2(result_arr[2]),
        .result_3(result_arr[3]), .result_4(result_arr[4]), .result_5(result_arr[5]), 
        .result_6(result_arr[6]), .result_7(result_arr[7]), .result_8(8'sd0), .result(result));

    // Single store after all convs are done
    reg store_tmp, load_tmp, done_tmp;
    
    integer j;
    always @(*) begin
        store_tmp = 1'b1;
        load_tmp = 1'b1;
        done_tmp = 1'b1;
        for (j = 0; j <= OC; j = j + 1) 
        begin
            store_tmp = store_tmp & store_arr[j];
            load_tmp  = load_tmp & load_arr[j];
            done_tmp  = done_tmp & done_arr[j];
        end
    end
    
    assign store = store_tmp;
    assign load  = load_tmp;
    assign conv_done = done_tmp;

endmodule


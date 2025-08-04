`timescale 1ns / 1ps

module layer #(
    parameter H = 28,
    parameter W = 28,
    parameter OC = 7,
    parameter IC = 0,
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 9,
    parameter LOOP = 27
)(
    input wire clk,
    input wire rst,
    output wire store,
    input wire pool_done,
    output wire pool,
    input wire start,
    output wire load,
    output wire [STORE_ADDR_LEN:0] address,
    output wire signed [7:0] result,
    output wire signed [7:0] bias,
    output wire cout_done,
    input wire signed [7:0] data_out [0:IC][0:1],
    output wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output wire [3:0] out_c
);

    wire cout, c_load, conv, tree;
    wire conv_done, c_load_done;

    wire signed [7:0] kernel [0:IC][0:8];

    wire signed [7:0] result_arr [0:IC] ;
    wire load_arr [0:IC];
    wire done_arr [0:IC];
    wire store_arr [0:IC];
    wire tree_arr [0:IC];
    wire [LOAD_ADDR_LEN:0] addr1_arr [0:IC];
    wire [LOAD_ADDR_LEN:0] addr2_arr [0:IC];
    wire [STORE_ADDR_LEN:0] addr_arr [0:OC];

    layer_control #(.IC(IC)) layer_control_inst (
        .start(start), .clk(clk), .rst_n(rst),
        .cout(cout), .c_load(c_load), .pool(pool),
        .conv(conv), .pool_done(pool_done), 
        .conv_done(conv_done), .cout_done(cout_done), .c_load_done(c_load_done)
    );

    channel_counter #(.CHANNELS(OC)) out_counter (
        .clk(clk), .rst_n(rst), .signal(cout),
        .count(out_c), .complete(cout_done)
    );

    generate
        if (IC == 0) 
        begin : single_kernel
            load_kernels #(.VAL(71), .IC(IC)) load_kernel_inst (
                .clk(clk), .rst(rst), .out_c(out_c), .c_load(c_load),
                .kernel(kernel), .c_load_done(c_load_done));
        end 
        else 
        begin : multiple_kernels
            load_kernels #(.VAL(1151),.IC(IC)) load_kernels_inst (
                .clk(clk), .rst(rst), .c_load(c_load), .out_c(out_c),
                .kernel(kernel), .c_load_done(c_load_done)
            );
        end
    endgenerate

    load_bias #(.OC(OC)) load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load), .out_c(out_c), .bias(bias)
    );

    generate
        if (IC == 0) begin : conv_single
            conv #(.H(H), .W(W), .IC(IC), .LOAD_ADDR_LEN(LOAD_ADDR_LEN),
                   .STORE_ADDR_LEN(STORE_ADDR_LEN), .LOOP(LOOP)) conv_inst (
                .clk(clk), .rst(rst), .conv(conv), .load(load_arr[0]),
                .kernel(kernel[0]), .tree(tree_arr[0]),
                .result(result_arr[0]), .address(addr_arr[0]), .store(store_arr[0]), .done(done_arr[0]),
                .data1(data_out[0][0]), .data2(data_out[0][1]),
                .addr1(addr1_arr[0]), .addr2(addr2_arr[0])
            );
        end 
        else begin : conv_multi
            genvar i;
            for (i = 0; i <= IC; i = i + 1) begin : conv_blocks
                conv #(.H(H), .W(W), .IC(IC), .LOAD_ADDR_LEN(LOAD_ADDR_LEN),
                       .STORE_ADDR_LEN(STORE_ADDR_LEN), .LOOP(LOOP)) conv_inst (
                    .clk(clk), .rst(rst), .conv(conv), .load(load_arr[i]),
                    .kernel(kernel[i]), .tree(tree_arr[i]),
                    .result(result_arr[i]), .address(addr_arr[i]), .store(store_arr[i]), .done(done_arr[i]),
                    .data1(data_out[i][0]), .data2(data_out[i][1]),
                    .addr1(addr1_arr[i]), .addr2(addr2_arr[i])
                );
            end
        end
    endgenerate
    

    generate
        if (IC == 0) begin : single_result
            assign result = result_arr[0];
        end 
        else begin : summed_result
            adder_tree adder_inst (
                .clk(clk), .rst(rst), .tree(tree),
                .results(result_arr), .result(result));
        end
    endgenerate

    reg store_tmp, load_tmp, done_tmp, tree_tmp;
    integer j;
    always @(*) 
    begin
        store_tmp = 1'b1;
        load_tmp = 1'b1;
        done_tmp = 1'b1;
        tree_tmp = 1'b1;
        for (j = 0; j <= IC; j = j + 1) 
        begin
            store_tmp = store_tmp & store_arr[j];
            load_tmp  = load_tmp & load_arr[j];
            done_tmp  = done_tmp & done_arr[j];
            tree_tmp = tree_tmp & tree_arr[j];
        end
    end

    assign store = store_tmp;
    assign load  = load_tmp;
    assign conv_done = done_tmp;
    assign addr1 = addr1_arr[0];
    assign addr2 = addr2_arr[0];
    assign tree = tree_tmp;
    assign address = addr_arr[0];

endmodule

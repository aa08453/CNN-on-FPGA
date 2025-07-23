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

    wire signed [7:0] result_arr [0:IC];
    wire load_arr [0:IC];
    wire done_arr [0:IC];
    wire store_arr [0:IC];
    wire [LOAD_ADDR_LEN:0] addr1_arr [0:IC];
    wire [LOAD_ADDR_LEN:0] addr2_arr [0:IC];

    layer_control #(.IC(IC)) layer_control_inst (
        .start(start), .clk(clk), .rst_n(rst),
        .cout(cout), .c_load(c_load), .pool(pool), 
        .conv(conv), .pool_done(pool_done), .tree(tree),
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
                .kernel0(kernel[0][0]), .kernel1(kernel[0][1]), .kernel2(kernel[0][2]),
                .kernel3(kernel[0][3]), .kernel4(kernel[0][4]), .kernel5(kernel[0][5]),
                .kernel6(kernel[0][6]), .kernel7(kernel[0][7]), .kernel8(kernel[0][8]),
                .result(result_arr[0]), .address(address), .store(store_arr[0]), .done(done_arr[0]),
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
                    .kernel0(kernel[i][0]), .kernel1(kernel[i][1]), .kernel2(kernel[i][2]),
                    .kernel3(kernel[i][3]), .kernel4(kernel[i][4]), .kernel5(kernel[i][5]),
                    .kernel6(kernel[i][6]), .kernel7(kernel[i][7]), .kernel8(kernel[i][8]),
                    .result(result_arr[i]), .address(address), .store(store_arr[i]), .done(done_arr[i]),
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
                .result_0(result_arr[0]), .result_1(result_arr[1]),
                .result_2(result_arr[2]), .result_3(result_arr[3]),
                .result_4(result_arr[4]), .result_5(result_arr[5]),
                .result_6(result_arr[6]), .result_7(result_arr[7]),
                .result_8(8'sd0), .result(result)
            );
        end
    endgenerate

    reg store_tmp, load_tmp, done_tmp;
    integer j;
    always @(*) 
    begin
        store_tmp = 1'b1;
        load_tmp = 1'b1;
        done_tmp = 1'b1;
        for (j = 0; j <= IC; j = j + 1) 
        begin
            store_tmp = store_tmp & store_arr[j];
            load_tmp  = load_tmp & load_arr[j];
            done_tmp  = done_tmp & done_arr[j];
        end
    end

    assign store = store_tmp;
    assign load  = load_tmp;
    assign conv_done = done_tmp;
    assign addr1 = addr1_arr[0];
    assign addr2 = addr2_arr[0];

endmodule

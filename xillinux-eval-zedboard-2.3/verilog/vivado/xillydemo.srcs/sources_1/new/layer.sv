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
    input wire signed [7:0] data_out [0:IC][0:1],
    output wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output wire [3:0] out_c
);

    wire cout, c_load, conv, tree;
    wire conv_done, c_load_done;
    wire cout_done;

    wire signed [7:0] kernel [0:IC][0:8];

    wire signed [7:0] result_arr [0:IC] ;
    wire load_done_arr [0:IC];
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

    load_kernels #(.VAL((IC+1)*(OC+1)*9 - 1), .IC(IC)) load_kernel_inst (
        .clk(clk), .rst(rst), .out_c(out_c), .c_load(c_load),
        .kernel(kernel), .c_load_done(c_load_done));

    load_bias #(.OC(OC)) load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load), .out_c(out_c), .bias(bias)
    );
    
    wire addr_gen, count_enable, add, load_done, load_full_patch;
    wire [LOAD_ADDR_LEN:0] pixel_addr [0:8];
    wire [4:0] i, j;
    
    conv_control #(.IC(IC)) control_inst(
    .clk(clk), .rst_n(rst), .done(conv_done), .load(load), .tree(tree),
    .conv(conv), .add(add), .load_done(load_done),
        .counter_enable(count_enable), .addr_gen(addr_gen), .store(store)
    );
    
    counters #(.LOOP(LOOP)) counters_inst(
       .clk(clk), .rst_n(rst), .count_enable(count_enable),
       .i(i), .j(j), .done(conv_done), .conv(conv), .load_full_patch(load_full_patch)
    );

    patch_addr_gen #(.IC(IC), .ADDR_LEN(LOAD_ADDR_LEN)) patch_addr_inst (
        .clk(clk), .rst(rst), .addr_gen(addr_gen), .i(i), .j(j),
        .pixel_addr(pixel_addr), .load_full_patch(load_full_patch)
    );
    
    assign address = i*W + j;

    generate
        if (IC == 0) begin : conv_single
            conv #(.LOAD_ADDR_LEN(LOAD_ADDR_LEN),
                   .STORE_ADDR_LEN(STORE_ADDR_LEN)) conv_inst (
                .clk(clk), .rst(rst),
                .load(load), 
                .add(add),
                .load_full_patch(load_full_patch), .load_done(load_done_arr[0]),
                .pixel_addr(pixel_addr), 
                .kernel(kernel[0]), 
                .result(result_arr[0]), 
                .data1(data_out[0][0]), .data2(data_out[0][1]),
                .addr1(addr1_arr[0]), .addr2(addr2_arr[0])
            );
        end 
        else begin : conv_multi
            genvar i;
            for (i = 0; i <= IC; i = i + 1) begin : conv_blocks
                conv #(.LOAD_ADDR_LEN(LOAD_ADDR_LEN),
                       .STORE_ADDR_LEN(STORE_ADDR_LEN)) conv_inst (
                    .clk(clk), .rst(rst),
                    .load(load), 
                    .add(add),
                    .kernel(kernel[i]), .pixel_addr(pixel_addr), .load_done(load_done_arr[i]),
                    .load_full_patch(load_full_patch),
                    .result(result_arr[i]), 
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

    reg load_done_tmp;
    integer p;
    always @(*) 
    begin
        load_done_tmp = 1'b1;
        for (p = 0; p <= IC; p = p + 1) 
        begin
            load_done_tmp = load_done_tmp & load_done_arr[p];
        end
    end

    assign load_done  = load_done_tmp;
    assign addr1 = addr1_arr[0];
    assign addr2 = addr2_arr[0];

endmodule

`define CONV_INST(idx) \
    conv #(.H(H), .W(W), .IC(IC), .ADDR_LEN(ADDR_LEN)) conv_inst_``idx`` ( \
        .clk(clk), .rst(rst), .conv(conv), .load(load``idx``),\
        .kernel0(kernel``idx``0), .kernel1(kernel``idx``1), .kernel2(kernel``idx``2), \
        .kernel3(kernel``idx``3), .kernel4(kernel``idx``4), .kernel5(kernel``idx``5), \
        .kernel6(kernel``idx``6), .kernel7(kernel``idx``7), .kernel8(kernel``idx``8), \
        .result(result_``idx``), .address(address), .store(store_``idx``), .done(done``idx``), \
        .data1(data``idx``1), .data2(data``idx``2), \
        .addr1(addr1), .addr2(addr2));

`define DECL_KERNELS(idx) \
    wire signed [7:0] \
        kernel``idx``0, kernel``idx``1, kernel``idx``2, \
        kernel``idx``3, kernel``idx``4, kernel``idx``5, \
        kernel``idx``6, kernel``idx``7, kernel``idx``8;

module layer2
#(
    parameter H = 14,
    parameter W = 14,
    parameter OC = 15,
    parameter IC = 7,
    parameter ADDR_LEN = 7
)
(
    input wire clk,
    input wire rst,
    output wire store,
    input wire pool_done,
    output wire pool,
    input wire start,
    output wire load0, load1, load2, load3, load4, load5, load6, load7,
    output wire [ADDR_LEN:0] address,
    output wire signed [7:0] result,
    output wire signed [7:0] bias,
    output wire cout_done,

    input wire signed [7:0] data01, data02,
    input wire signed [7:0] data11, data12,
    input wire signed [7:0] data21, data22,
    input wire signed [7:0] data31, data32,
    input wire signed [7:0] data41, data42,
    input wire signed [7:0] data51, data52,
    input wire signed [7:0] data61, data62,
    input wire signed [7:0] data71, data72,
    output wire [9:0] addr1,
    output wire [9:0] addr2,
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
    wire signed [7:0] result_0, result_1, result_2, result_3;
    wire signed [7:0] result_4, result_5, result_6, result_7;
    wire done0, done1, don2, done3, done4, done5, done6, done7;
    wire store_0, store_1, store_2, store_3, store_4, store_5, store_6, store_7;

    // Declare kernel wires
    `DECL_KERNELS(0)
    `DECL_KERNELS(1)
    `DECL_KERNELS(2)
    `DECL_KERNELS(3)
    `DECL_KERNELS(4)
    `DECL_KERNELS(5)
    `DECL_KERNELS(6)
    `DECL_KERNELS(7)

    load_kernels #(.VAL(1151)) 
    load_kernels_inst (
    .clk(clk), .rst(rst), .c_load(c_load), .out_c(out_c),
    .kernel00(kernel00), .kernel01(kernel01), .kernel02(kernel02),
    .kernel03(kernel03), .kernel04(kernel04), .kernel05(kernel05),
    .kernel06(kernel06), .kernel07(kernel07), .kernel08(kernel08),
    .kernel10(kernel10), .kernel11(kernel11), .kernel12(kernel12),
    .kernel13(kernel13), .kernel14(kernel14), .kernel15(kernel15),
    .kernel16(kernel16), .kernel17(kernel17), .kernel18(kernel18),
    .kernel20(kernel20), .kernel21(kernel21), .kernel22(kernel22),
    .kernel23(kernel23), .kernel24(kernel24), .kernel25(kernel25),
    .kernel26(kernel26), .kernel27(kernel27), .kernel28(kernel28),
    .kernel30(kernel30), .kernel31(kernel31), .kernel32(kernel32),
    .kernel33(kernel33), .kernel34(kernel34), .kernel35(kernel35),
    .kernel36(kernel36), .kernel37(kernel37), .kernel38(kernel38),
    .kernel40(kernel40), .kernel41(kernel41), .kernel42(kernel42),
    .kernel43(kernel43), .kernel44(kernel44), .kernel45(kernel45),
    .kernel46(kernel46), .kernel47(kernel47), .kernel48(kernel48),
    .kernel50(kernel50), .kernel51(kernel51), .kernel52(kernel52),
    .kernel53(kernel53), .kernel54(kernel54), .kernel55(kernel55),
    .kernel56(kernel56), .kernel57(kernel57), .kernel58(kernel58),
    .kernel60(kernel60), .kernel61(kernel61), .kernel62(kernel62),
    .kernel63(kernel63), .kernel64(kernel64), .kernel65(kernel65),
    .kernel66(kernel66), .kernel67(kernel67), .kernel68(kernel68),
    .kernel70(kernel70), .kernel71(kernel71), .kernel72(kernel72),
    .kernel73(kernel73), .kernel74(kernel74), .kernel75(kernel75),
    .kernel76(kernel76), .kernel77(kernel77), .kernel78(kernel78)
    );


    load_bias #(.OC(OC)) 
    load_bias_inst (
        .clk(clk), .rst(rst), .c_load(c_load),
        .out_c(out_c), .bias(bias)
    );

    // Instantiate 8 conv blocks using macro
    `CONV_INST(0)
    `CONV_INST(1)
    `CONV_INST(2)
    `CONV_INST(3)
    `CONV_INST(4)
    `CONV_INST(5)
    `CONV_INST(6)
    `CONV_INST(7)

    // Add results manually (adder tree)
    adder_tree adder_inst(.clk(clk), .rst(rst), .tree(tree),
        .result_0(result_0), .result_1(result_1), .result_2(result_2),
        .result_3(result_3), .result_4(result_4), .result_5(result_5), 
        .result_6(result_6), .result_7(result_7), .result(result));

    // Single store after all convs are done
    assign store = store_0 & store_1 & store_2 & store_3 & store_4 & store_5 & store_6 & store_7;
    assign conv_done = done0 & done1 & done2 & done3 & done4 & done5 & done6 & done7;


endmodule


module conv
#(
    parameter H = 28,
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire conv,
    
    input wire [7:0] kernel00, kernel01, kernel02,
                     kernel03, kernel04, kernel05,
                     kernel06, kernel07, kernel08,

    input wire [7:0] kernel10, kernel11, kernel12,
                     kernel13, kernel14, kernel15,
                     kernel16, kernel17, kernel18,

    input wire [7:0] kernel30, kernel31, kernel32,
                     kernel33, kernel34, kernel35,
                     kernel36, kernel37, kernel38,

    input wire [7:0] kernel40, kernel41, kernel42,
                     kernel43, kernel44, kernel45,
                     kernel46, kernel47, kernel48,

    input wire [7:0] kernel50, kernel51, kernel52,
                     kernel53, kernel54, kernel55,
                     kernel56, kernel57, kernel58,

    input wire [7:0] kernel60, kernel61, kernel62,
                     kernel63, kernel64, kernel65,
                     kernel66, kernel67, kernel68,

    input wire [7:0] kernel70, kernel71, kernel72,
                     kernel73, kernel74, kernel75,
                     kernel76, kernel77, kernel78,

    output [7:0] result0, result1, result2, result3, result4, result5, result6, result7,
    output [9:0] address,
    output wire store,
    output wire done
);

    wire add, load, acc_enable, count_enable;
    wire [1:0] mux_sel;

    wire load_full_patch; 

    wire [9:0] pixel_addr0, pixel_addr1, pixel_addr2,
               pixel_addr3, pixel_addr4, pixel_addr5,
               pixel_addr6, pixel_addr7, pixel_addr8;

    wire [7:0] pixel00,pixel10,pixel20,pixel30,pixel40,pixel50,pixel60,pixel70,
    wire [7:0] pixel01,pixel11,pixel21,pixel31,pixel41,pixel51,pixel61,pixel71,
    wire [7:0] pixel02,pixel12,pixel22,pixel32,pixel42,pixel52,pixel62,pixel72,
    wire [7:0] pixel03,pixel13,pixel23,pixel33,pixel43,pixel53,pixel63,pixel73,
    wire [7:0] pixel04,pixel14,pixel24,pixel34,pixel44,pixel54,pixel64,pixel74,
    wire [7:0] pixel05,pixel15,pixel25,pixel35,pixel45,pixel55,pixel65,pixel75,
    wire [7:0] pixel06,pixel16,pixel26,pixel36,pixel46,pixel56,pixel66,pixel76,
    wire [7:0] pixel07,pixel17,pixel27,pixel37,pixel47,pixel57,pixel67,pixel77,
    wire [7:0] pixel08,pixel18,pixel28,pixel38,pixel48,pixel58,pixel68,pixel78,

    wire [7:0] sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7, sum8;
    wire [4:0] i, j;

    conv_control control_inst(
        .clk(clk), .rst_n(rst), .done(done), .load(load), .mux_sel(mux_sel), .conv(conv),
        .acc_enable(acc_enable), .counter_enable(count_enable), .addr(add), .store(store)
    );

    counters counters_inst(
        .clk(clk), .rst_n(rst), .count_enable(count_enable),
        .i(i), .j(j), .done(done), .conv(conv)
    );

    patch_addr_gen #(.H(H), .W(W)) patch_addr_inst (
        .clk(clk), .rst(rst), .addr(add), .i(i), .j(j),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
        .load_full_patch(load_full_patch)
    );

    patch_data_latch patch_data_inst (
        .clk(clk), .rst(rst), .load(load), .load_full_patch(load_full_patch),
        .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
        .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
        .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),

        .pixel00(pixel00), .pixel01(pixel01), .pixel02(pixel02),
        .pixel03(pixel03), .pixel04(pixel04), .pixel05(pixel05),
        .pixel06(pixel06), .pixel07(pixel07), .pixel08(pixel08),

        .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12),
        .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
        .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18),

        .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22),
        .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
        .pixel26(pixel26), .pixel27(pixel27), .pixel28(pixel28),

        .pixel30(pixel30), .pixel31(pixel31), .pixel32(pixel32),
        .pixel33(pixel33), .pixel34(pixel34), .pixel35(pixel35),
        .pixel36(pixel36), .pixel37(pixel37), .pixel38(pixel38),

        .pixel40(pixel40), .pixel41(pixel41), .pixel42(pixel42),
        .pixel43(pixel43), .pixel44(pixel44), .pixel45(pixel45),
        .pixel46(pixel46), .pixel47(pixel47), .pixel48(pixel48),

        .pixel50(pixel50), .pixel51(pixel51), .pixel52(pixel52),
        .pixel53(pixel53), .pixel54(pixel54), .pixel55(pixel55),
        .pixel56(pixel56), .pixel57(pixel57), .pixel58(pixel58),

        .pixel60(pixel60), .pixel61(pixel61), .pixel62(pixel62),
        .pixel63(pixel63), .pixel64(pixel64), .pixel65(pixel65),
        .pixel66(pixel66), .pixel67(pixel67), .pixel68(pixel68),

        .pixel70(pixel70), .pixel71(pixel71), .pixel72(pixel72),
        .pixel73(pixel73), .pixel74(pixel74), .pixel75(pixel75),
        .pixel76(pixel76), .pixel77(pixel77), .pixel78(pixel78)
    );

    comp comp0 (
        .clk(clk), .select(mux_sel), .sum(sum0), .rst(rst),
        .image_data0(pixel00), .image_data1(pixel01), .image_data2(pixel02),
        .image_data3(pixel03), .image_data4(pixel04), .image_data5(pixel05),
        .image_data6(pixel06), .image_data7(pixel07), .image_data8(pixel08),
        .kernel_data0(kernel00), .kernel_data1(kernel01), .kernel_data2(kernel02),
        .kernel_data3(kernel03), .kernel_data4(kernel04), .kernel_data5(kernel05),
        .kernel_data6(kernel06), .kernel_data7(kernel07), .kernel_data8(kernel08)
    );

    comp comp1 (
        .clk(clk), .select(mux_sel), .sum(sum1), .rst(rst),
        .image_data0(pixel10), .image_data1(pixel11), .image_data2(pixel12),
        .image_data3(pixel13), .image_data4(pixel14), .image_data5(pixel15),
        .image_data6(pixel16), .image_data7(pixel17), .image_data8(pixel18),
        .kernel_data0(kernel10), .kernel_data1(kernel11), .kernel_data2(kernel12),
        .kernel_data3(kernel13), .kernel_data4(kernel14), .kernel_data5(kernel15),
        .kernel_data6(kernel16), .kernel_data7(kernel17), .kernel_data8(kernel18)
    );

    comp comp2 (
        .clk(clk), .select(mux_sel), .sum(sum2), .rst(rst),
        .image_data0(pixel20), .image_data1(pixel21), .image_data2(pixel22),
        .image_data3(pixel23), .image_data4(pixel24), .image_data5(pixel25),
        .image_data6(pixel26), .image_data7(pixel27), .image_data8(pixel28),
        .kernel_data0(kernel20), .kernel_data1(kernel21), .kernel_data2(kernel22),
        .kernel_data3(kernel23), .kernel_data4(kernel24), .kernel_data5(kernel25),
        .kernel_data6(kernel26), .kernel_data7(kernel27), .kernel_data8(kernel28)
    );

    comp comp3 (
        .clk(clk), .select(mux_sel), .sum(sum3), .rst(rst),
        .image_data0(pixel30), .image_data1(pixel31), .image_data2(pixel32),
        .image_data3(pixel33), .image_data4(pixel34), .image_data5(pixel35),
        .image_data6(pixel36), .image_data7(pixel37), .image_data8(pixel38),
        .kernel_data0(kernel30), .kernel_data1(kernel31), .kernel_data2(kernel32),
        .kernel_data3(kernel33), .kernel_data4(kernel34), .kernel_data5(kernel35),
        .kernel_data6(kernel36), .kernel_data7(kernel37), .kernel_data8(kernel38)
    );

    comp comp4 (
        .clk(clk), .select(mux_sel), .sum(sum4), .rst(rst),
        .image_data0(pixel40), .image_data1(pixel41), .image_data2(pixel42),
        .image_data3(pixel43), .image_data4(pixel44), .image_data5(pixel45),
        .image_data6(pixel46), .image_data7(pixel47), .image_data8(pixel48),
        .kernel_data0(kernel40), .kernel_data1(kernel41), .kernel_data2(kernel42),
        .kernel_data3(kernel43), .kernel_data4(kernel44), .kernel_data5(kernel45),
        .kernel_data6(kernel46), .kernel_data7(kernel47), .kernel_data8(kernel48)
    );

    comp comp5 (
        .clk(clk), .select(mux_sel), .sum(sum5), .rst(rst),
        .image_data0(pixel50), .image_data1(pixel51), .image_data2(pixel52),
        .image_data3(pixel53), .image_data4(pixel54), .image_data5(pixel55),
        .image_data6(pixel56), .image_data7(pixel57), .image_data8(pixel58),
        .kernel_data0(kernel50), .kernel_data1(kernel51), .kernel_data2(kernel52),
        .kernel_data3(kernel53), .kernel_data4(kernel54), .kernel_data5(kernel55),
        .kernel_data6(kernel56), .kernel_data7(kernel57), .kernel_data8(kernel58)
    );

    comp comp6 (
        .clk(clk), .select(mux_sel), .sum(sum6), .rst(rst),
        .image_data0(pixel60), .image_data1(pixel61), .image_data2(pixel62),
        .image_data3(pixel63), .image_data4(pixel64), .image_data5(pixel65),
        .image_data6(pixel66), .image_data7(pixel67), .image_data8(pixel68),
        .kernel_data0(kernel60), .kernel_data1(kernel61), .kernel_data2(kernel62),
        .kernel_data3(kernel63), .kernel_data4(kernel64), .kernel_data5(kernel65),
        .kernel_data6(kernel66), .kernel_data7(kernel67), .kernel_data8(kernel68)
    );

    comp comp7 (
        .clk(clk), .select(mux_sel), .sum(sum7), .rst(rst),
        .image_data0(pixel70), .image_data1(pixel71), .image_data2(pixel72),
        .image_data3(pixel73), .image_data4(pixel74), .image_data5(pixel75),
        .image_data6(pixel76), .image_data7(pixel77), .image_data8(pixel78),
        .kernel_data0(kernel70), .kernel_data1(kernel71), .kernel_data2(kernel72),
        .kernel_data3(kernel73), .kernel_data4(kernel74), .kernel_data5(kernel75),
        .kernel_data6(kernel76), .kernel_data7(kernel77), .kernel_data8(kernel78)
    );

    products_reg products_reg0 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum0), .result(result0), .addr(address)
    );
    products_reg products_reg1 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum1), .result(result1), .addr(address)
    );

    products_reg products_reg2 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum2), .result(result2), .addr(address)
    );

    products_reg products_reg3 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum3), .result(result3), .addr(address)
    );

    products_reg products_reg4 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum4), .result(result4), .addr(address)
    );

    products_reg products_reg5 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum5), .result(result5), .addr(address)
    );

    products_reg products_reg6 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum6), .result(result6), .addr(address)
    );

    products_reg products_reg7 (
        .clk(clk), .rst(rst), .i(i), .j(j),
        .acc_enable(acc_enable), .sum(sum7), .result(result7), .addr(address)
    );
endmodule








// module conv
// #(
//     parameter H = 28,
//     parameter W = 28,
//     parameter NUM_CHANNELS = 1
// )
// (
//     input wire clk,
//     input wire rst,
//     input wire conv,

//     // Flattened kernel inputs: each channel has 9 values
//     input wire [NUM_CHANNELS*8*9-1:0] kernels, // [kernel0_c0, ..., kernel8_c0, kernel0_c1, ..., kernel8_cN]

//     output wire [NUM_CHANNELS*8-1:0] results,
//     output wire [9:0] address,
//     output wire store,
//     output wire done
// );

//     wire add, load, acc_enable, count_enable;
//     wire [1:0] mux_sel;

//     wire load_full_patch; 
//     wire [4:0] i, j;
//     wire [7:0] sum[NUM_CHANNELS-1:0];

//     // Controller and counters (shared)
//     conv_control control_inst(
//         .clk(clk), .rst_n(rst), .done(done), .load(load), .mux_sel(mux_sel), .conv(conv),
//         .acc_enable(acc_enable), .counter_enable(count_enable), .addr(add), .store(store)
//     );

//     counters counters_inst(
//         .clk(clk), .rst_n(rst), .count_enable(count_enable),
//         .i(i), .j(j), .done(done), .conv(conv)
//     );

//     // Patch address generator (shared)
//     wire [9:0] pixel_addr0, pixel_addr1, pixel_addr2,
//             pixel_addr3, pixel_addr4, pixel_addr5,
//             pixel_addr6, pixel_addr7, pixel_addr8;

//     patch_addr_gen #(.H(H), .W(W)) patch_addr_inst (
//         .clk(clk), .rst(rst), .addr(add), .i(i), .j(j),
//         .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
//         .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
//         .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
//         .load_full_patch(load_full_patch)
//     );

//     // Per-channel instances using generate
//     genvar ch;
//     generate
//         for (ch = 0; ch < NUM_CHANNELS; ch = ch + 1) begin : per_channel

//             wire [7:0] pixels[8:0];
//             wire [7:0] kernels_local[8:0];

//             // Extract 9 kernel values for this channel
//             for (genvar k = 0; k < 9; k = k + 1) begin : kernel_extraction
//                 assign kernels_local[k] = kernels[ch*72 + k*8 +: 8];
//             end

//             patch_data_latch patch_data_inst (
//                 .clk(clk), .rst(rst), .load(load), .load_full_patch(load_full_patch),
//                 .pixel_addr0(pixel_addr0), .pixel_addr1(pixel_addr1), .pixel_addr2(pixel_addr2),
//                 .pixel_addr3(pixel_addr3), .pixel_addr4(pixel_addr4), .pixel_addr5(pixel_addr5),
//                 .pixel_addr6(pixel_addr6), .pixel_addr7(pixel_addr7), .pixel_addr8(pixel_addr8),
//                 .pixel0(pixels[0]), .pixel1(pixels[1]), .pixel2(pixels[2]),
//                 .pixel3(pixels[3]), .pixel4(pixels[4]), .pixel5(pixels[5]),
//                 .pixel6(pixels[6]), .pixel7(pixels[7]), .pixel8(pixels[8])
//             );

//             comp comp_inst (
//                 .clk(clk), .select(mux_sel), .sum(sum[ch]), .rst(rst),
//                 .image_data0(pixels[0]), .image_data1(pixels[1]), .image_data2(pixels[2]),
//                 .image_data3(pixels[3]), .image_data4(pixels[4]), .image_data5(pixels[5]),
//                 .image_data6(pixels[6]), .image_data7(pixels[7]), .image_data8(pixels[8]),
//                 .kernel_data0(kernels_local[0]), .kernel_data1(kernels_local[1]), .kernel_data2(kernels_local[2]),
//                 .kernel_data3(kernels_local[3]), .kernel_data4(kernels_local[4]), .kernel_data5(kernels_local[5]),
//                 .kernel_data6(kernels_local[6]), .kernel_data7(kernels_local[7]), .kernel_data8(kernels_local[8])
//             );

//             products_reg products_reg_inst (
//                 .clk(clk), .rst(rst), .i(i), .j(j),
//                 .acc_enable(acc_enable), .sum(sum[ch]), 
//                 .result(results[ch*8 +: 8]), .addr(address)  // All share same address
//             );
//         end
//     endgenerate

// endmodule

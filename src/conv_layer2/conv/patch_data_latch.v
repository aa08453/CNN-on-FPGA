`define RESULT(name, pixel0, pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, addr)\
    wire first_write = (in_c == 3'b001); \
    result_registerFile #( \
        .CHANNEL_SIZE(CHANNEL_SIZE) \
        )
    name (
        .clk(clk), \
        .rst(rst), \
        .out_c(0), \
        .store(store), \
        .pool(pool), \
        .pool_done(pool_done), \
        .y(y), \
        .bias(bias), \
        .addr(addr),                    \
        .cout_done(cout_done), \
        .value(result), \
        .first_write(first_write), \
        .pixel0(pixel0),\
        .pixel1(pixel1),\
        .pixel2(pixel2),\
        .pixel3(pixel3),\
        .pixel4(pixel4),\
        .pixel5(pixel5),\
        .pixel6(pixel6),\
        .pixel7(pixel7),\
        .pixel8(pixel8)\
    ); 


module patch_data_latch
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire load_full_patch,
    
    input wire [9:0] pixel_addr0,
    input wire [9:0] pixel_addr1,
    input wire [9:0] pixel_addr2,
    input wire [9:0] pixel_addr3,
    input wire [9:0] pixel_addr4,
    input wire [9:0] pixel_addr5,
    input wire [9:0] pixel_addr6,
    input wire [9:0] pixel_addr7,
    input wire [9:0] pixel_addr8,

    // pixelij = ith channel, jth pixel
    output reg [7:0] pixel00,pixel10,pixel20,pixel30,pixel40,pixel50,pixel60,pixel70,
    output reg [7:0] pixel01,pixel11,pixel21,pixel31,pixel41,pixel51,pixel61,pixel71,
    output reg [7:0] pixel02,pixel12,pixel22,pixel32,pixel42,pixel52,pixel62,pixel72,
    output reg [7:0] pixel03,pixel13,pixel23,pixel33,pixel43,pixel53,pixel63,pixel73,
    output reg [7:0] pixel04,pixel14,pixel24,pixel34,pixel44,pixel54,pixel64,pixel74,
    output reg [7:0] pixel05,pixel15,pixel25,pixel35,pixel45,pixel55,pixel65,pixel75,
    output reg [7:0] pixel06,pixel16,pixel26,pixel36,pixel46,pixel56,pixel66,pixel76,
    output reg [7:0] pixel07,pixel17,pixel27,pixel37,pixel47,pixel57,pixel67,pixel77,
    output reg [7:0] pixel08,pixel18,pixel28,pixel38,pixel48,pixel58,pixel68,pixel78,
);

    wire [7:0] data0, data1, data2, data3, data4, data5, data6, data7, data8;

    `RESULT(pixel_0, pixel00, pixel10, pixel20, pixel30, pixel40, pixel50, pixel60, pixel70, pixel80, pixel_addr0);
    `RESULT(pixel_1, pixel01, pixel11, pixel21, pixel31, pixel41, pixel51, pixel61, pixel71, pixel81, pixel_addr1);
    `RESULT(pixel_2, pixel02, pixel12, pixel22, pixel32, pixel42, pixel52, pixel62, pixel72, pixel82, pixel_addr2);
    `RESULT(pixel_3, pixel03, pixel13, pixel23, pixel33, pixel43, pixel53, pixel63, pixel73, pixel83, pixel_addr3);
    `RESULT(pixel_4, pixel04, pixel14, pixel24, pixel34, pixel44, pixel54, pixel64, pixel74, pixel84, pixel_addr4);
    `RESULT(pixel_5, pixel05, pixel15, pixel25, pixel35, pixel45, pixel55, pixel65, pixel75, pixel85, pixel_addr5);
    `RESULT(pixel_6, pixel06, pixel16, pixel26, pixel36, pixel46, pixel56, pixel66, pixel76, pixel86, pixel_addr6);
    `RESULT(pixel_7, pixel07, pixel17, pixel27, pixel37, pixel47, pixel57, pixel67, pixel77, pixel87, pixel_addr7);
    `RESULT(pixel_8, pixel08, pixel18, pixel28, pixel38, pixel48, pixel58, pixel68, pixel78, pixel88, pixel_addr8);

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            pixel00 <= 8'd0; pixel10 <= 8'd0; pixel20 <= 8'd0; pixel30 <= 8'd0; pixel40 <= 8'd0; pixel50 <= 8'd0; pixel60 <= 8'd0; pixel70 <= 8'd0; 
            pixel01 <= 8'd0; pixel11 <= 8'd0; pixel21 <= 8'd0; pixel31 <= 8'd0; pixel41 <= 8'd0; pixel51 <= 8'd0; pixel61 <= 8'd0; pixel71 <= 8'd0; 
            pixel02 <= 8'd0; pixel12 <= 8'd0; pixel22 <= 8'd0; pixel32 <= 8'd0; pixel42 <= 8'd0; pixel52 <= 8'd0; pixel62 <= 8'd0; pixel72 <= 8'd0; 
            pixel03 <= 8'd0; pixel13 <= 8'd0; pixel23 <= 8'd0; pixel33 <= 8'd0; pixel43 <= 8'd0; pixel53 <= 8'd0; pixel63 <= 8'd0; pixel73 <= 8'd0; 
            pixel04 <= 8'd0; pixel14 <= 8'd0; pixel24 <= 8'd0; pixel34 <= 8'd0; pixel44 <= 8'd0; pixel54 <= 8'd0; pixel64 <= 8'd0; pixel74 <= 8'd0; 
            pixel05 <= 8'd0; pixel15 <= 8'd0; pixel25 <= 8'd0; pixel35 <= 8'd0; pixel45 <= 8'd0; pixel55 <= 8'd0; pixel65 <= 8'd0; pixel75 <= 8'd0; 
            pixel06 <= 8'd0; pixel16 <= 8'd0; pixel26 <= 8'd0; pixel36 <= 8'd0; pixel46 <= 8'd0; pixel56 <= 8'd0; pixel66 <= 8'd0; pixel76 <= 8'd0; 
            pixel07 <= 8'd0; pixel17 <= 8'd0; pixel27 <= 8'd0; pixel37 <= 8'd0; pixel47 <= 8'd0; pixel57 <= 8'd0; pixel67 <= 8'd0; pixel77 <= 8'd0; 
            pixel08 <= 8'd0; pixel18 <= 8'd0; pixel28 <= 8'd0; pixel38 <= 8'd0; pixel48 <= 8'd0; pixel58 <= 8'd0; pixel68 <= 8'd0; pixel78 <= 8'd0; 
        end 
        else if (load && load_full_patch) 
        begin
            
            pixel00 <= data0;  pixel10 <= data0;  pixel20 <= data0;  pixel30 <= data0;  
            pixel01 <= data1;  pixel11 <= data1;  pixel21 <= data1;  pixel31 <= data1; 
            pixel02 <= data2;  pixel12 <= data2;  pixel22 <= data2;  pixel32 <= data2; 
            pixel03 <= data3;  pixel13 <= data3;  pixel23 <= data3;  pixel33 <= data3; 
            pixel04 <= data4;  pixel14 <= data4;  pixel24 <= data4;  pixel34 <= data4; 
            pixel05 <= data5;  pixel15 <= data5;  pixel25 <= data5;  pixel35 <= data5; 
            pixel06 <= data6;  pixel16 <= data6;  pixel26 <= data6;  pixel36 <= data6; 
            pixel07 <= data7;  pixel17 <= data7;  pixel27 <= data7;  pixel37 <= data7; 
            pixel08 <= data8;  pixel18 <= data8;  pixel28 <= data8;  pixel38 <= data8;

            pixel40 <= data0;  pixel50 <= data0;  pixel60 <= data0;  pixel70 <= data0; 
            pixel41 <= data1;  pixel51 <= data1;  pixel61 <= data1;  pixel71 <= data1;
            pixel42 <= data2;  pixel52 <= data2;  pixel62 <= data2;  pixel72 <= data2;
            pixel43 <= data3;  pixel53 <= data3;  pixel63 <= data3;  pixel73 <= data3;
            pixel44 <= data4;  pixel54 <= data4;  pixel64 <= data4;  pixel74 <= data4;
            pixel45 <= data5;  pixel55 <= data5;  pixel65 <= data5;  pixel75 <= data5;
            pixel46 <= data6;  pixel56 <= data6;  pixel66 <= data6;  pixel76 <= data6;
            pixel47 <= data7;  pixel57 <= data7;  pixel67 <= data7;  pixel77 <= data7;
            pixel48 <= data8;  pixel58 <= data8;  pixel68 <= data8;  pixel78 <= data8;


        end
        else if (load && !load_full_patch)
        begin
            pixel00 <= pixel03; pixel10 <= pixel13; pixel20 <= pixel23; pixel30 <= pixel33;
            pixel01 <= pixel04; pixel11 <= pixel14; pixel21 <= pixel24; pixel31 <= pixel34;
            pixel02 <= pixel05; pixel12 <= pixel15; pixel22 <= pixel25; pixel32 <= pixel35;
            pixel03 <= pixel06; pixel13 <= pixel16; pixel23 <= pixel26; pixel33 <= pixel36;
            pixel04 <= pixel07; pixel14 <= pixel17; pixel24 <= pixel27; pixel34 <= pixel37;
            pixel05 <= pixel08; pixel15 <= pixel18; pixel25 <= pixel28; pixel35 <= pixel38;
            pixel06 <=  data6; pixel16 <=  data6; pixel26 <=  data6; pixel36 <=  data6;
            pixel07 <=  data7; pixel17 <=  data7; pixel27 <=  data7; pixel37 <=  data7;
            pixel08 <=  data8; pixel18 <=  data8; pixel28 <=  data8; pixel38 <=  data8;
            
            pixel40 <= pixel43; pixel50 <= pixel53; pixel60 <= pixel63; pixel70 <= pixel73;
            pixel41 <= pixel44; pixel51 <= pixel54; pixel61 <= pixel64; pixel71 <= pixel74;
            pixel42 <= pixel45; pixel52 <= pixel55; pixel62 <= pixel65; pixel72 <= pixel75;
            pixel43 <= pixel46; pixel53 <= pixel56; pixel63 <= pixel66; pixel73 <= pixel76;
            pixel44 <= pixel47; pixel54 <= pixel57; pixel64 <= pixel67; pixel74 <= pixel77;
            pixel45 <= pixel48; pixel55 <= pixel58; pixel65 <= pixel68; pixel75 <= pixel78;
            pixel46 <=  data6; pixel56 <=  data6; pixel66 <=  data6; pixel76 <=  data6;
            pixel47 <=  data7; pixel57 <=  data7; pixel67 <=  data7; pixel77 <=  data7;
            pixel48 <=  data8; pixel58 <=  data8; pixel68 <=  data8; pixel78 <=  data8;

        end
    end
    

endmodule


// `define RESULT(name, p0, p1, p2, p3, p4, p5, p6, p7, p8, addr) \
//     wire first_write_``name = (in_c == 3'b001); \
//     result_registerFile #( \
//         .CHANNEL_SIZE(CHANNEL_SIZE) \
//     ) name ( \
//         .clk(clk), \
//         .rst(rst), \
//         .out_c(0), \
//         .store(store), \
//         .pool(pool), \
//         .pool_done(pool_done), \
//         .y(y), \
//         .bias(bias), \
//         .addr(addr), \
//         .cout_done(cout_done), \
//         .value(result), \
//         .first_write(first_write_``name), \
//         .pixel0(p0), .pixel1(p1), .pixel2(p2), .pixel3(p3), .pixel4(p4), \
//         .pixel5(p5), .pixel6(p6), .pixel7(p7), .pixel8(p8) \
//     );

// module patch_data_latch 
// #(
//     parameter DATA_WIDTH = 8,
//     parameter NUM_PATCH = 9
// )(
//     input wire clk,
//     input wire rst,
//     input wire load,
//     input wire load_full_patch,

//     input wire [9:0] pixel_addr [0:NUM_PATCH-1], // pixel_addr0 to pixel_addr8
//     output reg [DATA_WIDTH-1:0] pixel [0:8][0:8]  // 9x9 patch pixels
// );

//     wire [DATA_WIDTH-1:0] data [0:NUM_PATCH-1];

//     genvar i;
//     generate
//         for (i = 0; i < NUM_PATCH; i = i + 1) 
//         begin : gen_results
//             `RESULT(pixel_result_inst[i],
//                     pixel[i][0], pixel[i][1], pixel[i][2],
//                     pixel[i][3], pixel[i][4], pixel[i][5],
//                     pixel[i][6], pixel[i][7], pixel[i][8],
//                     pixel_addr[i])
//         end
//     endgenerate

//     integer x, y;
//     always @(posedge clk or negedge rst) 
//     begin
//         if (!rst) 
//         begin
//             for (x = 0; x < 9; x = x + 1)
//                 for (y = 0; y < 9; y = y + 1)
//                     pixel[x][y] <= 0;
//         end else if (load && load_full_patch) 
//         begin
//             for (x = 0; x < 9; x = x + 1) 
//             begin
//                 for (y = 0; y < 4; y = y + 1)
//                     pixel[x][y] <= data[x]; // fill top half
//                 for (y = 4; y < 9; y = y + 1)
//                     pixel[x][y] <= data[x]; // mirror fill
//             end
//         end 
//         else if (load && !load_full_patch) 
//         begin
//             // Shift patch left
//             for (x = 0; x < 9; x = x + 1) 
//             begin
//                 for (y = 0; y < 6; y = y + 1)
//                     pixel[x][y] <= pixel[x][y + 3];
//                 for (y = 6; y < 9; y = y + 1)
//                     pixel[x][y] <= data[x];
//             end
//         end
//     end
// endmodule

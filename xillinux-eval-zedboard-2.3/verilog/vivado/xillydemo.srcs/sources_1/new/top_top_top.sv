

module top_top_top # (
    parameter ADDR_LEN1 = 9
)
 (
    input clk, rst,
        input wire signed [7:0] mem_data1, mem_data2,
        output wire [ADDR_LEN1:0] mem_addr1, mem_addr2,
        output wire load1, 
        output wire [3:0] leds,
        input wire init, disp
        
//       output wire oled_spi_clk, 
//       output wire oled_spi_data,
//       output wire oled_vdd,     
//       output wire oled_vbat,    
//       output wire oled_reset_n, 
//       output wire oled_dc_n     

    );
     
    wire done, btn, set;
    wire [3:0] number;
    
//    wire [2:0] led;
    
    assign leds = number;
//    wire [ADDR_LEN1:0] mem_addr1, mem_addr2;
//    wire signed [7:0] mem_data1, mem_data2;
    
 top_control control_inst
(
    .clk(clk),.rst(rst), 
    .done(done), .init(init), .rst_btn(btn), .set(set), .disp(disp)
 );
 
     cnn cnn_inst (
        .clk(clk),
        .rst(set),
        .number(number),
        .done(done),
        .load1(load1),
        .mem_addr1(mem_addr1),
        .mem_addr2(mem_addr2),
        .mem_data1(mem_data1),
        .mem_data2(mem_data2)
    );
    
    
    
//    display display_inst( .clock(clk), .reset(disp), .cnn_output(number), 
//    .oled_spi_clk(oled_spi_clk),
//    .oled_spi_data(oled_spi_data),
//    .oled_vdd(oled_vdd),
//    .oled_vbat(oled_vbat),
//    .oled_reset_n(oled_reset_n),
//    .oled_dc_n(oled_dc_n)
//);

    
//        image_mem mem_inst (
//        .clk(clk), .rst(rst), 
//        .load(load1),
//        .addr1(mem_addr1),
//        .addr2(mem_addr2),
//        .data_out1(mem_data1),
//        .data_out2(mem_data2)
//    );
//    leds ledsInst(
//    .clk(clk), .rst(rst),
//    .number(number), .disp(disp), .leds(leds), .set(set), .disp(disp));
    
endmodule

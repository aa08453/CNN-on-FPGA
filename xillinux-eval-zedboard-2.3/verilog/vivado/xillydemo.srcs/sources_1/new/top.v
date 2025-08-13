module display(
    input  clock, // 100MHz onboard clock
    input  reset,
    input [3:0] cnn_output,
    // OLED interface
    output oled_spi_clk,
    output oled_spi_data,
    output oled_vdd,
    output oled_vbat,
    output oled_reset_n,
    output oled_dc_n
);

    // Local parameters for string length
    localparam StringLen = 11;

    // CNN output (for testing, hardcoded to digit 0)
//    reg [3:0] digit_index = 4'd0; // CNN predicted number (0-9)

    // String selection logic
    reg [87:0] myString; // 11 characters × 8 bits = 88 bits
    

    always @(*) begin
        case (cnn_output)
            4'd0: myString = "    Zero   "; // 11 characters (padded with spaces)
            4'd1: myString = "    One    ";
            4'd2: myString = "    Two    ";
            4'd3: myString = "    Three  ";
            4'd4: myString = "    Four   ";
            4'd5: myString = "    Five   ";
            4'd6: myString = "    Six    ";
            4'd7: myString = "    Seven  ";
            4'd8: myString = "    Eight  ";
            4'd9: myString = "    Nine   ";
            default: myString = " UNKNOWN   "; // Default empty string
        endcase
    end

     reg [1:0] state;
     reg [7:0] sendData;
     reg sendDataValid;
     integer byteCounter;
     wire sendDone;
 
 localparam IDLE = 'd0,
            SEND = 'd1,
            DONE = 'd2;
 
 always @(posedge clock)
 begin
    if(reset)
    begin
        state <= IDLE;
        byteCounter <= StringLen;
        sendDataValid <= 1'b0;
    end
    else
    begin
        case(state)
            IDLE:begin
                if(!sendDone)
                begin
                    sendData <= myString[(byteCounter*8-1)-:8];
                    sendDataValid <= 1'b1;
                    state <= SEND;
                end
            end
            SEND:begin
                if(sendDone)
                begin
                    sendDataValid <= 1'b0;
                    byteCounter <= byteCounter-1;
                    if(byteCounter != 1)
                        state <= IDLE;
                    else
                        state <= DONE;
                end
            end
            DONE:begin
                state <= DONE;
            end
        endcase
    end
 end
 
    
    
OLED_control OC(
    .clock(clock), //100MHz onboard clock
    .reset(reset),
    //oled interface
    .oled_spi_clk(oled_spi_clk),
    .oled_spi_data(oled_spi_data),
    .oled_vdd(oled_vdd),
    .oled_vbat(oled_vbat),
    .oled_reset_n(oled_reset_n),
    .oled_dc_n(oled_dc_n),
    //
    .sendData(sendData),
    .sendDataValid(sendDataValid),
    .sendDone(sendDone)
        );    
    
endmodule
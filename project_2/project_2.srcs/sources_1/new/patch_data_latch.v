`timescale 1ns / 1ps

module patch_data_latch 
#(
    parameter ADDR_LEN = 9
)
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire load_full_patch,

    input wire [ADDR_LEN:0] pixel_addr [0:8],

    input wire signed [7:0] data1, data2,
    output reg [ADDR_LEN:0] addr1, addr2,

    output reg signed [7:0] pixel [0:8],

    output reg load_done
);


    reg [3:0] state;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            load_done <= 0;
            state <= 0;
            addr1 <= 0;
            addr2 <= 0;

        end 
        else if (load && !load_done)
        begin
            case (state)
                0: begin
                    if (load_full_patch) 
                    begin
                        addr1 <= pixel_addr[0];
                        addr2 <= pixel_addr[1];
                        state <= 1;
                        load_done <= 0;
                    end 
                    else if (!load_full_patch) 
                    begin
                        addr1 <= pixel_addr[6];
                        addr2 <= pixel_addr[7];

                        pixel[0] <= pixel[3];
                        pixel[1] <= pixel[4];
                        pixel[2] <= pixel[5];
                        pixel[3] <= pixel[6];
                        pixel[4] <= pixel[7];
                        pixel[5] <= pixel[8];

                        state <= 7;
                        load_done <= 0;
                    end
                end
                
                1: state <= 2;

                2: begin // Read pixel0 and pixel1
                    pixel[0] <= data1;
                    pixel[1] <= data2;
                    addr1 <= pixel_addr[2];
                    addr2 <= pixel_addr[3];
                    state <= 3;
                end
                
                3: state <= 4;

                4: begin // Read pixel2 and pixel3
                    pixel[2] <= data1;
                    pixel[3] <= data2;
                    addr1 <= pixel_addr[4];
                    addr2 <= pixel_addr[5];
                    state <= 5;
                end
                
                5: state <= 6;

                6: begin // Read pixel4 and pixel5
                    pixel[4] <= data1;
                    pixel[5] <= data2;
                    addr1 <= pixel_addr[6];
                    addr2 <= pixel_addr[7];
                    state <= 7;
                end
                
                7: state <= 8;

                8: begin // Read pixel6 and pixel7
                    pixel[6] <= data1;
                    pixel[7] <= data2;
                    addr1 <= pixel_addr[8];
                    addr2 <= 10'd785;
                    state <= 9;
                end
                
                9: state <= 10;

                10: begin // Read pixel8
                    pixel[8] <= data1;
                    load_done <= 1;
                    state <= 0;
                end
                
                default: begin
                state <= 0;
                end

            endcase
        end
        else if (load && load_done)
        begin
            load_done <= 0;
            state <= 0;
        end
    end
endmodule

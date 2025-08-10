`timescale 1ns / 1ps

module pool_data
#(
    parameter W = 28,
    parameter ADDR_LEN = 9
)

(
    input wire clk,
    input wire rst,
    input wire pool_load,
    input wire [4:0] i, j,
    input wire signed [7:0] data1, data2,
    output reg [ADDR_LEN:0] addr1, addr2,
    output reg [7:0] max,
    output reg [ADDR_LEN:0] new_addr,
    output reg max_done
);

    reg signed [7:0] pixel [0:3];
    reg [3:0] state;
    reg signed [7:0] max1, max2;







    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            state <= 0;
            max <= 0;
            max_done <= 0;
            pixel[0] <= 0;
            pixel[1] <= 0;
            pixel[2] <= 0;
            pixel[3] <= 0;
            new_addr <= 0;



            addr1 <= 0;
            addr2 <= 0;
        end 
        else begin
        if (pool_load)
        begin
            max_done <= 0;  // default low unless asserted
            case (state)
                0: begin
                    addr1 <= i*W + j;
                    addr2 <= i*W + j + 1;
                    state <= 1;
                end
                
                1: state <= 2;

                2: begin
                    pixel[0] <= data1;
                    pixel[1] <= data2;
                    addr1 <= i*W + j + W;
                    addr2 <= i*W + j + W + 1;
                    state <= 3;
                end
                
                3: state <= 4;

                4: begin
                    pixel[2] <= data1;
                    pixel[3] <= data2;
                    state <= 5;
                end

                5: begin
                    max1 <= (pixel[0] > pixel[1]) ? pixel[0] : pixel[1];
                    max2 <= (pixel[2] > pixel[3]) ? pixel[2] : pixel[3];
 
                    state <= 6;
                end
                
                6: begin
                    max <= (max1 > max2) ? max1 : max2;
                    new_addr <= i*W + j;
                    max_done <= 1;
                    state <= 7;
                end
                
                7: state <= 8;
                
                8: state <= 0;
            

                default: state <= 0;
            endcase
        end
    end
end

endmodule

`timescale 1ns / 1ps

module patch_addr_gen
#(
    parameter IC = 0,
    parameter ADDR_LEN = 9
)
(
    input wire clk,
    input wire rst,
    input wire addr_gen,
    input wire [4:0] i, j,

    output reg [ADDR_LEN:0] pixel_addr0,
    output reg [ADDR_LEN:0] pixel_addr1,
    output reg [ADDR_LEN:0] pixel_addr2,
    output reg [ADDR_LEN:0] pixel_addr3,
    output reg [ADDR_LEN:0] pixel_addr4,
    output reg [ADDR_LEN:0] pixel_addr5,
    output reg [ADDR_LEN:0] pixel_addr6,
    output reg [ADDR_LEN:0] pixel_addr7,
    output reg [ADDR_LEN:0] pixel_addr8,

    output reg load_full_patch
);
    `include "../functions.v"
    reg [4:0] prev_i;



    always @(posedge clk or negedge rst) 
    begin
//        integer mv, nv;
        if (!rst) 
        begin
            prev_i <= 5'd28;  // Something invalid 
            load_full_patch <= 1'b1;

            pixel_addr0 <= 0;
            pixel_addr1 <= 0;
            pixel_addr2 <= 0;
            pixel_addr3 <= 0;
            pixel_addr4 <= 0;
            pixel_addr5 <= 0;
            pixel_addr6 <= 0;
            pixel_addr7 <= 0;
            pixel_addr8 <= 0;
        end 
        else if (addr_gen) 
        begin
            if (IC == 0)
            begin
                load_full_patch <= (i != prev_i);
//                mv = i - 1;
//                nv = j - 1;

                pixel_addr6 <= compute_addr(i-1, j+1);
                pixel_addr7 <= compute_addr(i,   j+1);
                pixel_addr8 <= compute_addr(i+1, j+1);


                if (load_full_patch)
                begin
                    pixel_addr0 <= compute_addr(i-1, j-1);
                    pixel_addr1 <= compute_addr(i,   j-1);
                    pixel_addr2 <= compute_addr(i+1, j-1);
                    pixel_addr3 <= compute_addr(i-1, j);
                    pixel_addr4 <= compute_addr(i,   j);
                    pixel_addr5 <= compute_addr(i+2, j);
                end
                
                prev_i <= i;
            end
            else
            begin
                load_full_patch <= ((i << 1) != prev_i);
//                mv = (i << 1) - 2;
//                nv = (j << 1) - 2;

                pixel_addr6 <= compute_addr((i << 1) - 2,   (j << 1) + 2);
                pixel_addr7 <= compute_addr((i << 1), (j << 1) + 2);
                pixel_addr8 <= compute_addr((i << 1) + 2, (j << 1) + 2);

                if (load_full_patch)
                begin
                    pixel_addr0 <= compute_addr((i << 1) - 2,   (j << 1) - 2);
                    pixel_addr1 <= compute_addr((i << 1), (j << 1) - 2);
                    pixel_addr2 <= compute_addr((i << 1) + 2, (j << 1) - 2);
                    
                    pixel_addr3 <= compute_addr((i << 1) - 2,   (j << 1));
                    pixel_addr4 <= compute_addr((i << 1), (j << 1));
                    pixel_addr5 <= compute_addr((i << 1) + 2, (j << 1));
                end
                
                prev_i <= (i << 1);
            end

        end
    end

endmodule

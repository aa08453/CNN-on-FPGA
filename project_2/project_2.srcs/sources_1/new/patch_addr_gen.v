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

    output reg [ADDR_LEN:0] pixel_addr [0:8],

    input wire load_full_patch
);
    `include "functions.v"
//    reg [4:0] prev_i;



    always @(posedge clk or negedge rst) 
    begin
//        integer mv, nv;
        if (!rst) 
        begin
//            prev_i <= 5'd28;  // Something invalid 
//            load_full_patch <= 1'b1;

            pixel_addr[0] <= 10'd785;
            pixel_addr[1] <= 10'd785;
            pixel_addr[2] <= 10'd785;
            pixel_addr[3] <= 10'd785;
            pixel_addr[4] <= 10'd785;
            pixel_addr[5] <= 10'd785;
            pixel_addr[6] <= 10'd785;
            pixel_addr[7] <= 10'd785;
            pixel_addr[8] <= 10'd785;
        end 
        else if (addr_gen) 
        begin
            if (IC == 0)
            begin
//                load_full_patch <= (i != prev_i && (j == 0));
                
                pixel_addr[6] <= compute_addr(i-1, j+1);
                pixel_addr[7] <= compute_addr(i,   j+1);
                pixel_addr[8] <= compute_addr(i+1, j+1);


                if (load_full_patch)
                begin        
                            
                    pixel_addr[2] <= compute_addr(i+1, j-1);
                    pixel_addr[5] <= compute_addr(i+1, j); 
                    
                    if (i == 0)
                    begin
                        pixel_addr[0] <= compute_addr(i-1, j-1);
                        pixel_addr[1] <= compute_addr(i,   j-1);
                        pixel_addr[3] <= compute_addr(i-1, j);
                        pixel_addr[4] <= compute_addr(i,   j); 
                    end
                    else
                    begin
                        pixel_addr[0] <= pixel_addr[1];
                        pixel_addr[1] <= pixel_addr[2];
                        pixel_addr[3] <= pixel_addr[4];
                        pixel_addr[4] <= pixel_addr[5];
                    end

                        
                end
                
//                prev_i <= i;
            end
            else
            begin
//                load_full_patch <= ((i << 1) != prev_i && (j == 0));

                pixel_addr[6] <= compute_addr((i << 1) - 2,   (j << 1) + 2);
                pixel_addr[7] <= compute_addr((i << 1), (j << 1) + 2);
                pixel_addr[8] <= compute_addr((i << 1) + 2, (j << 1) + 2);

                if (load_full_patch)
                begin
                     pixel_addr[2] <= compute_addr((i << 1) + 2, (j << 1) - 2);
                     pixel_addr[5] <= compute_addr((i << 1) + 2, (j << 1));
                     
                     if (i == 0)
                     begin

                        pixel_addr[0] <= compute_addr((i << 1) - 2,   (j << 1) - 2);
                        pixel_addr[1] <= compute_addr((i << 1), (j << 1) - 2);                    
                        pixel_addr[3] <= compute_addr((i << 1) - 2,   (j << 1));                    
                        pixel_addr[4] <= compute_addr((i << 1), (j << 1));
                    end
                    else
                    begin
                        pixel_addr[0] <= pixel_addr[1];
                        pixel_addr[1] <= pixel_addr[2];
                        pixel_addr[3] <= pixel_addr[4];
                        pixel_addr[4] <= pixel_addr[5];
                    end
               end     
 
                
//                prev_i <= (i << 1);
            end

        end
    end

endmodule

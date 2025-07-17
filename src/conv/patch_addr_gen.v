

module patch_addr_gen
#(
    parameter IC = 0 
)
(
    input wire clk,
    input wire rst,
    input wire addr_gen,
    input wire [4:0] i, j,

    output reg [9:0] pixel_addr0,
    output reg [9:0] pixel_addr1,
    output reg [9:0] pixel_addr2,
    output reg [9:0] pixel_addr3,
    output reg [9:0] pixel_addr4,
    output reg [9:0] pixel_addr5,
    output reg [9:0] pixel_addr6,
    output reg [9:0] pixel_addr7,
    output reg [9:0] pixel_addr8,

    output reg load_full_patch
);
    `include "../functions.v"
    reg [4:0] prev_i;

    integer mv, nv;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            prev_i <= 5'd28;  // Something invalid 
            load_full_patch <= 1'b1;

            pixel_addr0 <= 10'd0;
            pixel_addr1 <= 10'd0;
            pixel_addr2 <= 10'd0;
            pixel_addr3 <= 10'd0;
            pixel_addr4 <= 10'd0;
            pixel_addr5 <= 10'd0;
            pixel_addr6 <= 10'd0;
            pixel_addr7 <= 10'd0;
            pixel_addr8 <= 10'd0;
        end 
        else if (addr_gen) 
        begin
            if (IC == 0)
            begin
                load_full_patch <= (i != prev_i);
                mv = i - 1;
                nv = j - 1;

                pixel_addr6 <= compute_addr(mv,   nv+2);
                pixel_addr7 <= compute_addr(mv+1, nv+2);
                pixel_addr8 <= compute_addr(mv+2, nv+2);

                if (load_full_patch)
                begin
                    pixel_addr0 <= compute_addr(mv,   nv);
                    pixel_addr1 <= compute_addr(mv+1, nv);
                    pixel_addr2 <= compute_addr(mv+2, nv);
                    pixel_addr3 <= compute_addr(mv,   nv+1);
                    pixel_addr4 <= compute_addr(mv+1, nv+1);
                    pixel_addr5 <= compute_addr(mv+2, nv+1);
                end
                
                prev_i <= i;
            end
            else
            begin
                load_full_patch <= ((i << 1) != prev_i);
                mv = (i << 1) - 2;
                nv = (j << 1) - 2;

                pixel_addr6 <= compute_addr(mv,   nv+4);
                pixel_addr7 <= compute_addr(mv+2, nv+4);
                pixel_addr8 <= compute_addr(mv+4, nv+4);

                if (load_full_patch)
                begin
                    pixel_addr0 <= compute_addr(mv,   nv);
                    pixel_addr1 <= compute_addr(mv+2, nv);
                    pixel_addr2 <= compute_addr(mv+4, nv);
                    pixel_addr3 <= compute_addr(mv,   nv+2);
                    pixel_addr4 <= compute_addr(mv+2, nv+2);
                    pixel_addr5 <= compute_addr(mv+4, nv+2);
                end
                
                prev_i <= (i << 1);
            end

        end
    end

endmodule

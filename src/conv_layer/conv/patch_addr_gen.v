function [9:0] compute_addr;
    input integer row, col;
    input integer W, H;
    compute_addr = ((row) >= 0 && (row) < (H) && (col) >= 0 && (col) < (W)) ? ((row) * (W) + (col)) : 10'd0;
endfunction


module patch_addr_gen
#(
    parameter H = 28,
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire addr,
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
        else if (addr) 
        begin
            mv = i - 1; //i*S - P = i*1 - 1
            nv = j - 1; //j*S - P = j*1 - 1

            pixel_addr6 <= compute_addr(mv,nv+2,W,H);
            pixel_addr7 <= compute_addr(mv+1,nv+2,W,H);
            pixel_addr8 <= compute_addr(mv+2,nv+2,W,H);

            load_full_patch <= (i != prev_i);

            if (load_full_patch) 
            begin
                pixel_addr0 <= compute_addr(mv,nv,W,H);
                pixel_addr1 <= compute_addr(mv+1,nv,W,H);
                pixel_addr2 <= compute_addr(mv+2,nv,W,H);
                pixel_addr3 <= compute_addr(mv,nv+1,W,H);
                pixel_addr4 <= compute_addr(mv+1,nv+1,W,H);
                pixel_addr5 <= compute_addr(mv+2,nv+1,W,H);
            end 
            
            prev_i <= i;
        end
    end

endmodule


            // Rightmost column (pixel6,7,8) (-1,1)
            // col = nv + 2; // j*S - P + K - 1 
            // row = mv; // i*S - P + 0 
            // (0, 2)
            // pixel_addr6 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
            // //(1,2)
            // row += 1; // i*S - P + 1
            // pixel_addr7 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
            // //(2,2)
            // row += 1; // i*S - P + 2 = i*S - P + (K - 1)
            // pixel_addr8 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;


                // Load remaining pixels: 0,1,2,3,4,5 
                // row = mv; col = nv; //(0,0)
                // pixel_addr0 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
                // //(1,0)
                // row += 1; 
                // pixel_addr1 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
                // // (2,0)
                // row += 1;
                // pixel_addr2 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
                // // (0,1)
                // row = mv; col += 1; 
                // pixel_addr3 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
                // // (1,1)
                // row += 1;
                // pixel_addr4 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
                // // (2,1)
                // row += 1;
                // pixel_addr5 <= (row >= 0 && row < H && col >= 0 && col < W) ? row * W + col : 10'd0;
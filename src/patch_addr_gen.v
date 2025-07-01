
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
    output reg [9:0] pixel_addrs [0:8],
    output reg load_full_patch
);

    reg [4:0] prev_i;

    integer x, y;
    integer mv, nv;
    integer row, col;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            prev_i <= 28;
            load_full_patch <= 1'b1;
            for (x = 0; x < 9; x = x + 1)
                pixel_addrs[x] <= 10'd0;
        end
        else if (addr) 
        begin
            mv = i - 1;
            nv = j - 1;
            load_full_patch <= (i != prev_i);

            // Rightmost column
            for (x = 0; x < 3; x = x + 1) 
            begin
                row = mv + x;
                col = nv + 2;
                if (row >= 0 && row < H && col >= 0 && col < W)
                    pixel_addrs[x * 3 + 2] <= row * W + col;
                else
                    pixel_addrs[x * 3 + 2] <= 10'd0;
            end

            if (i != prev_i) 
            begin
                for (x = 0; x < 3; x = x + 1)
                    for (y = 0; y < 2; y = y + 1) 
                    begin
                        row = mv + x;
                        col = nv + y;
                        if (row >= 0 && row < H && col >= 0 && col < W)
                            pixel_addrs[x * 3 + y] <= row * W + col;
                        else
                            pixel_addrs[x * 3 + y] <= 10'd0;
                    end
            end
            else 
            begin
                pixel_addrs[0] <= 10'd0;
                pixel_addrs[1] <= 10'd0;
                pixel_addrs[3] <= 10'd0;
                pixel_addrs[4] <= 10'd0;
                pixel_addrs[6] <= 10'd0;
                pixel_addrs[7] <= 10'd0;
            end

            prev_i <= i;
        end
    end
endmodule

module patch #(
    parameter H = 28,
    parameter W = 28
)(
    input wire clk,
    input wire rst,
    input wire load,                   // External trigger signal
    input wire [4:0] i,
    input wire [4:0] j,
    output reg [7:0] pixels [0:8],     // 3x3 patch output
    output reg load_full_patch         // output control
);

    reg [4:0] prev_i;

    // Generate 9 addresses for 9 pixels
    reg [9:0] pixel_addrs [0:8];
    wire [7:0] pixel_data [0:8];

    integer x, y;
    integer mv, nv;
    integer row, col;

    // Instantiate 9 image memory modules (1 per patch pixel)
    genvar idx;
    generate
        for (idx = 0; idx < 9; idx = idx + 1) 
        begin : image_mem_inst
            image_mem mem_inst (.clk(clk), .addr(pixel_addrs[idx]), .data_out(pixel_data[idx]));
        end
    endgenerate

    // Control and patch logic
    always @(posedge clk or posedge rst) 
    begin
        if (rst) 
        begin
            prev_i <= 28;
            load_full_patch <= 1'b1;
            for (x = 0; x < 9; x = x + 1)
                pixels[x] <= 8'd0;
        end 
        else if (load) 
        begin
            mv = i - 1;
            nv = j - 1;

            load_full_patch <= (i != prev_i);  // Determine patch load type

            // Load rightmost column (col = 2)
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
                begin
                    row = mv + x;
                    for (y = 0; y < 2; y = y + 1) 
                    begin
                        col = nv + y;
                        if (row >= 0 && row < H && col >= 0 && col < W)
                            pixel_addrs[x * 3 + y] <= row * W + col;
                        else
                            pixel_addrs[x * 3 + y] <= 10'd0;
                    end
                end
            end 
            else 
            begin
                // Clear unused pixel addresses for consistency
                pixel_addrs[0] <= 10'd0;
                pixel_addrs[1] <= 10'd0;
                pixel_addrs[3] <= 10'd0;
                pixel_addrs[4] <= 10'd0;
                pixel_addrs[6] <= 10'd0;
                pixel_addrs[7] <= 10'd0;
            end

            // Latch pixels one cycle later (data comes 1 clk after addr)
            for (x = 0; x < 9; x = x + 1)
                pixels[x] <= pixel_data[x];

            prev_i <= i;
        end
    end

endmodule

module patch #
(
    parameter H = 5,
    parameter W = 5,
    parameter K = 3,
    parameter I = 0,
    parameter J = 0,
    parameter S = 1,
    parameter P = 1
)
(
    output wire [K*K-1:0] img
);

    localparam MV = I*S - P;
    localparam NV = J*S - P;

    genvar m, n;
    generate
        for (m = 0; m < K; m = m + 1) begin : row_loop
            for (n = 0; n < K; n = n + 1) begin : col_loop

                wire [31:0] x = MV + m;
                wire [31:0] y = NV + n;
                wire [4:0] addr = x * W + y;

                wire pixel_from_mem;
                wire use_mem = (x < H) && (y < W);

                wire pixel;
                assign pixel = use_mem ? pixel_from_mem : 1'b0;

                // Memory instance is always present; input is ignored if out of range
                image_mem mem_inst (
                    .i_addr(addr),
                    .i_pixel(pixel_from_mem)
                );

                assign img[m*K + n] = pixel;

            end
        end
    endgenerate

endmodule

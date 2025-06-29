module conv #
(
    parameter H = 5,     // Input height
    parameter W = 5,     // Input width
    parameter K = 3,     // Kernel size
    parameter S = 1,     // Stride
    parameter P = 1      // Padding
)
(
    output reg [31:0] output_feature [0:((H + 2*P - K)/S + 1)*((W + 2*P - K)/S + 1)-1]
);

    // Output dimensions
    localparam OH = (H + 2*P - K) / S + 1;
    localparam OW = (W + 2*P - K) / S + 1;

    // Flattened image patch
    wire [K*K-1:0] img_patch;

    // MAC output
    wire [31:0] sum;


    // Instantiate patch and mac
    genvar gv_i, gv_j;
    generate
        for (gv_i = 0; gv_i < OH; gv_i = gv_i + 1) begin : row_loop
            for (gv_j = 0; gv_j < OW; gv_j = gv_j + 1) begin : col_loop

                wire [K*K-1:0] patch_img;
                wire [31:0] patch_sum;

                patch #(
                    .H(H),
                    .W(W),
                    .K(K),
                    .I(gv_i),
                    .J(gv_j),
                    .S(S),
                    .P(P)
                ) patch_inst (
                    .img(patch_img)
                );

                mac #(
                    .K(K),
                    .H(H),
                    .W(W)
                ) mac_inst (
                    .img(patch_img),
                    .sum(patch_sum)
                );

                // Save result
                always @(*) begin
                    output_feature[gv_i*OH + gv_j] = patch_sum;
                end
            end
        end
    endgenerate

endmodule

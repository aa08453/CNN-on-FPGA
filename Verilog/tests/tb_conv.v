
`timescale 1ns / 1ps

module tb_conv;

    // Parameters for image, kernel, and convolution
    parameter H = 5;
    parameter W = 5;
    parameter K = 3;
    parameter S = 1;
    parameter P = 1;

    // Output dimensions
    localparam OH = (H + 2*P - K) / S + 1;
    localparam OW = (W + 2*P - K) / S + 1;

    // Output from convolution
    wire [31:0] output_feature [0:((H + 2*P - K)/S + 1)*((W + 2*P - K)/S + 1)-1];

    // Instantiate conv2d
    conv #(
        .H(H),
        .W(W),
        .K(K),
        .S(S),
        .P(P)
    ) dut (
        .output_feature(output_feature)
    );

    integer i, j;

    initial begin
        $dumpfile("w_conv.vcd");
        $dumpvars(0, tb_conv);

        #10;  // Wait for combinational logic to settle

        $display("Convolved Output Feature Map:");
        for (i = 0; i < OH; i = i + 1) begin
            $write("Row %0d: ", i);
            for (j = 0; j < OW; j = j + 1) begin
                $write("%0d ", output_feature[i*OW + j]);
            end
            $write("\n");
        end

        $finish;
    end

endmodule

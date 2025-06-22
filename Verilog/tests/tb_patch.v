
`timescale 1ns / 1ps

module tb_patch;

    // Parameters
    parameter H = 5;
    parameter W = 5;
    parameter K = 3;
    parameter I = 1;
    parameter J = 1;
    parameter S = 1;
    parameter P = 1;

    // Output patch (flattened if needed)
    wire [K*K-1:0] img;

    // Instantiate the patch module
    patch #(
        .H(H),
        .W(W),
        .K(K),
        .I(I),
        .J(J),
        .S(S),
        .P(P)
    ) dut (
        .img(img)
    );

    integer m, n;

    initial 
    begin
            $dumpfile("w_patch.vcd");      // VCD output file
            $dumpvars(0, tb_patch);   
            $display("Extracted %0dx%0d patch at I=%0d, J=%0d:", K, K, I, J);
        #5;

        for (m = 0; m < K; m = m + 1) begin
            $write("Row %0d: ", m);
            for (n = 0; n < K; n = n + 1) begin
                $write("%b ", img[m*K + n]);
            end
            $write("\n");
        end

        $finish;
    end


endmodule

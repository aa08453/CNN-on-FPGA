
`timescale 1ns / 1ps

module tb_mac;

    // Parameters
    parameter K = 3;
    parameter PATCH_BITS = K*K;

    // Inputs
    reg [PATCH_BITS-1:0] img;

    // Output
    wire [31:0] sum;

    // Instantiate MAC
    mac #(
        .K(K)
    ) dut (
        .img(img),
        .sum(sum)
    );

    integer i;

    initial begin
        $dumpfile("w_mac.vcd");
        $dumpvars(0, tb_mac);

        // Test case 1: alternating pattern, matches kernel pattern [1 0 1; 0 1 0; 1 0 1]
        // Flattened row-wise: [1, 0, 1, 0, 1, 0, 1, 0, 1]
        img = 9'b101_010_101;  // Should match kernel perfectly → sum = 5

        #10;
        $display("Test 1: img = %b, sum = %d", img, sum);

        // Test case 2: all ones
        img = 9'b111_111_111;  // Should produce sum = 5 (since kernel has five 1s)

        #10;
        $display("Test 2: img = %b, sum = %d", img, sum);

        // Test case 3: all zeros
        img = 9'b000_000_000;  // sum = 0

        #10;
        $display("Test 3: img = %b, sum = %d", img, sum);

        // Test case 4: only center active
        img = 9'b000_010_000;  // Only center matches → sum = 1

        #10;
        $display("Test 4: img = %b, sum = %d", img, sum);

        $finish;
    end

endmodule

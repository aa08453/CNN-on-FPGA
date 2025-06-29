`timescale 1ns / 1ps

module patch_tb;

    // Parameters
    parameter H = 28;
    parameter W = 28;

    // Testbench signals
    reg clk;
    reg rst;
    reg load;
    wire load_full_patch;
    reg [4:0] i;
    reg [4:0] j;
    wire [7:0] pixels [0:8];

    // Instantiate the patch module
    patch #(
        .H(H),
        .W(W)
    ) uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .i(i),
        .j(j),
        .pixels(pixels),
        .load_full_patch(load_full_patch)
    );

    // Clock generation
    always #10 clk = ~clk;

    // Task to print pixels
    task print_patch;
        integer idx;
        begin
            $display("Patch at i=%0d, j=%0d:", i, j);
            for (idx = 0; idx < 9; idx = idx + 1)
                $write("%0d ", pixels[idx]);
            $display("\n");
        end
    endtask

    initial 
    begin
        $dumpfile("w_patch.vcd");
        $dumpvars(0, patch_tb);

        clk = 0;
        rst = 1;
        load = 0;
        i = 0;
        j = 0;

        #10;
        rst = 0;

        // Wait a cycle
        #30;

        // First full patch load at (0,0)
        load = 1;
        #10 print_patch();

        // Same i, new j: should load only a column
        j = 1;
        load = 1;
        #30 load = 0;
        #10 print_patch();

        // i changes: full patch again
        i = 1;
        j = 0;
        load = 1;
        #30 load = 0;
        #10 print_patch();

        // Same i again, new j
        j = 1;
        load = 1;
        #30 load = 0;
        #10 print_patch();

        // End
        $finish;
    end

endmodule

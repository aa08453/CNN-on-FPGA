
`timescale 1ns / 1ps

module tb_top;

    // Clock and reset
    reg clk;
    reg rst;

    // Instantiate the top module
    top uut (
        .clk(clk),
        .rst(rst)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Stimulus
    initial begin
        $display("----- Starting Top Module Testbench -----");
        $dumpfile("w_top.vcd");
        $dumpvars(0, tb_top);

        // Reset pulse
        rst = 0;
        #20;
        rst = 1;

        // Wait for first layer to complete
        wait(uut.cout1_done);
        $display("Layer 1 computation done at time %0t", $time);
        
        wait(uut.pool1_done);
        $display("pOOLING DONE LAYER1");
//            $finish;

        // Wait for second layer to complete
        wait(uut.cout2_done);
        $display("Layer 2 computation done at time %0t", $time);

        // Optionally: Dump memory or display final result
        wait(uut.pool2_done);
        $display("Final output result: %0d", uut.result2);
        $finish;
    end

    // Optional: preload image memory
    // initial begin
        // $readmemh("image_input.mem", uut.mem_inst.mem); // If you use internal array "mem"
        // Or preload layer memory if needed
        // $readmemh("layer1_output.mem", uut.l1_mem_inst.mem);
    // end

endmodule


module tb_image_mem;

    reg clk;
    reg [9:0] addr;
    wire [7:0] data_out;

    image_mem uut (
        .clk(clk),
        .addr(addr),
        .data_out(data_out)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 100MHz clock (10ns period)

    initial begin
        $dumpfile("w_image_mem.vcd");
        $dumpvars(0, tb_image_mem);
        $display("Starting image_mem testbench...");

        addr = 0;

        // Wait for memory to initialize
        #10;

        // Loop through a few addresses
        for (integer i = 50; i < 80; i = i + 1) begin
            @(posedge clk);
            addr = i;
            @(posedge clk);
            $display("addr = %d, data_out = %h", i, data_out);
        end

        $display("Test complete.");
        $finish;
    end

endmodule

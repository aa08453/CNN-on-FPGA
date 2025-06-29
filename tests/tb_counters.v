
`timescale 1ns/1ps

module counters_tb;

  // Inputs
  reg clk;
  reg rst_n;
  reg start;
  reg count_enable;

  // Outputs
  wire [4:0] i;
  wire [4:0] j;
  wire done;

  // Instantiate the Unit Under Test (UUT)
counters uut (
  .clk(clk),
  .rst_n(rst_n),
  .start(start),
  .count_enable(count_enable),
  .i(i),
  .j(j),
  .done(done)
);

  // Clock generation: 10ns period (100MHz)
  always #5 clk = ~clk;

  initial begin
    $dumpfile("w_counters.vcd");
    $dumpvars(0, counters_tb);
    // Initialize inputs
    clk = 0;
    rst_n = 0;
    start = 0;
    count_enable = 0;

    // Apply reset
    #10;
    rst_n = 1;

    // Start the counter
    #10;
    start = 1;
    count_enable = 1;

    // Hold start high for a cycle
    #10;
    start = 0;

    // Run simulation until done
    wait(done);

    // Stop simulation a few cycles after done
    #20;
    $display("Simulation finished. Final i = %d, j = %d", i, j);
    $finish;
  end

  // Optional: monitor output changes
  always @(posedge clk) begin
    if (count_enable && rst_n && !done) begin
      $display("Time: %0t | i: %d, j: %d", $time, i, j);
    end
  end

endmodule

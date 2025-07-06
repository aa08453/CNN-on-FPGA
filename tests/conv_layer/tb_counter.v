

`timescale 1ns/1ps

module counter_tb;

  // Inputs
  reg clk;
  reg rst_n;
  reg signal;

  // Outputs
  wire [3:0] count;
  wire complete;

  // Instantiate the Unit Under Test (UUT)
channel_counter uut (
  .clk(clk),
  .rst_n(rst_n),
  .signal(signal),
  .count(count),
  .complete(complete)
);

  // Clock generation: 10ns period (100MHz)
  always #5 clk = ~clk;

  initial begin
    $dumpfile("w_counter.vcd");
    $dumpvars(0, counter_tb);
    // Initialize inputs
    clk = 0;
    rst_n = 0;
    signal = 0;

    // Apply reset
    #10;
    rst_n = 1;

    // Start the counter
    #10;
    signal = 1;

    // Hold start high for a cycle

    // Run simulation until done
    wait(complete);

    // Stop simulation a few cycles after done
    #20;
    $display("Simulation finished. Final count = %d", count);
    $finish;
  end

  // Optional: monitor output changes
  always @(posedge clk) begin
    if (signal && rst_n && !complete) begin
      $display("Time: %0t | count: %d", $time, count);
    end
  end

endmodule

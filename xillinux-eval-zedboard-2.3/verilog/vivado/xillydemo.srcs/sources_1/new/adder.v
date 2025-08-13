module simple_adder(
  input  wire        clk,
  input  wire        reset,

  // Xillybus write interface (8-bit input from PS)
  input  wire        user_write_8_wren,
  input  wire [7:0]  user_write_8_data,

  // Xillybus read interface (8-bit output to PS)
  input  wire        user_read_8_rden,
  output reg  [7:0]  user_read_8_data,
  output reg  [3:0] leds 
);

  // Storage for 10 bytes
  reg [7:0] operand_a [0:783];

  // Counters and control
  reg [9:0] write_count = 0;
  reg [3:0] read_count  = 0;
  reg       sending     = 0;  // 0 = receiving, 1 = sending

  integer i;

  always @(posedge clk or posedge reset) 
  begin
    if (reset) 
    begin
      write_count <= 0;
      read_count  <= 0;
      sending     <= 0;
      user_read_8_data <= 0;
    end 
    else 
    begin
      if (!sending) 
      begin
        // Receiving mode
        if (user_write_8_wren) 
        begin
          operand_a[write_count] <= user_write_8_data;

          write_count <= write_count + 1;
          user_read_8_data <= write_count;
          if (write_count == 783) 
          begin
//            for (i = 0; i < 4; i = i + 1)

                leds[0] <= 1;
               
            sending <= 1;       // Switch to send mode
            read_count <= 0;
          end
        end
      end 
//      else 
//      begin
//        // Sending mode
//        if (user_read_8_rden)
//        begin
//          user_read_8_data <= operand_a[read_count];
//          read_count <= read_count + 1;
//          if (read_count == 9) 
//          begin
//            sending <= 0;       // Go back to receive mode
//            write_count <= 0;
//          end
//        end
//      end

    end
  end

endmodule

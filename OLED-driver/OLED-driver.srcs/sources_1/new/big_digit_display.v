`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 04:33:43 PM
// Design Name: 
// Module Name: big_digit_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module big_digit_display #( parameter [2:0] BASE_PAGE = 3'd0, // top page for the 16×16 digit parameter [6:0] 
BASE_COL = 7'd56 // left column for the 16×16 digit 
)( input wire clk, input wire reset, // synchronous reset 
   input wire [3:0] digit_index, // 0..9 from CNN 
   input wire update_digit, // 1-cycle pulse to trigger update 
   input wire oled_ready, // from oled_control
   output reg  [7:0]  oled_data,      // column byte
   output reg  [2:0]  oled_page,      // SSD1306 page address (0..7)
   output reg  [6:0]  oled_column,    // SSD1306 column address (0..127)
   output reg         oled_valid      // data_valid to oled_control
   );
   
   // ROM: digit_rom[digit][page][column] => 8-bit column of one page
reg [7:0] digit_rom [0:9][0:1][0:15];

// Initialize ROM (example bitmap for digit '0'; others zeroed)
integer d,p,c;
initial begin
    // clear
    for (d = 0; d < 10; d = d + 1)
        for (p = 0; p < 2; p = p + 1)
            for (c = 0; c < 16; c = c + 1)
                digit_rom[d][p][c] = 8'h00;

    // Digit 0: 16×16 rectangle outline (simple "0")
    // page 0 (rows 0..7): left/right full, top horizontal on bit0
    digit_rom[0][0][ 0] = 8'hFF;
    for (c = 1; c <= 14; c = c + 1) digit_rom[0][0][c] = 8'h01;
    digit_rom[0][0][15] = 8'hFF;
    // page 1 (rows 8..15): left/right full, bottom horizontal on bit7
    digit_rom[0][1][ 0] = 8'hFF;
    for (c = 1; c <= 14; c = c + 1) digit_rom[0][1][c] = 8'h80;
    digit_rom[0][1][15] = 8'hFF;
end

// State machine
localparam S_IDLE = 2'd0,
           S_SEND = 2'd1,
           S_DONE = 2'd2;

reg [1:0] state;
reg [3:0] col_cnt;     // 0..15
reg       page_cnt;    // 0..1
reg [3:0] digit_q;     // latched digit

// Next indices for convenience
wire last_col  = (col_cnt == 4'd15);
wire last_page = (page_cnt == 1'b1);
wire at_last   = last_col & last_page;

// Sequential control
always @(posedge clk) begin
    if (reset) begin
        state       <= S_IDLE;
        col_cnt     <= 4'd0;
        page_cnt    <= 1'b0;
        digit_q     <= 4'd0;
        oled_valid  <= 1'b0;
        oled_data   <= 8'd0;
        oled_page   <= 3'd0;
        oled_column <= 7'd0;
    end else begin
        case (state)
            S_IDLE: begin
                oled_valid <= 1'b0;
                // Wait for trigger, then prime first byte
                if (update_digit) begin
                    digit_q     <= (digit_index <= 4'd9) ? digit_index : 4'd0;
                    page_cnt    <= 1'b0;
                    col_cnt     <= 4'd0;

                    oled_page   <= BASE_PAGE;             // page 0
                    oled_column <= BASE_COL;              // column 0 of glyph
                    oled_data   <= digit_rom[(digit_index <= 9)?digit_index:0][0][0];
                    oled_valid  <= 1'b1;

                    state       <= S_SEND;
                end
            end

            S_SEND: begin
                // Hold data stable until oled_ready == 1
                if (oled_ready) begin
                    // Advance indices
                    if (at_last) begin
                        oled_valid <= 1'b0;
                        state      <= S_DONE;
                    end else begin
                        if (last_col) begin
                            col_cnt  <= 4'd0;
                            page_cnt <= 1'b1; // next page (only 0 -> 1)
                        end else begin
                            col_cnt  <= col_cnt + 4'd1;
                        end

                        // Compute next addresses
                        // next_page/next_col after increment above
                        // Use temporaries to avoid read-after-write ambiguity
                        begin : advance_outputs
                            reg [3:0] next_col;
                            reg       next_page;
                            next_col  = last_col ? 4'd0 : (col_cnt + 4'd1);
                            next_page = last_col ? (page_cnt + 1'b1) : page_cnt;

                            oled_page   <= BASE_PAGE + {2'b00, next_page};
                            oled_column <= BASE_COL  + {3'b000, next_col};
                            oled_data   <= digit_rom[digit_q][next_page][next_col];
                            oled_valid  <= 1'b1; // keep streaming
                        end
                    end
                end
            end

            S_DONE: begin
                // Wait for next update
                oled_valid <= 1'b0;
                state      <= S_IDLE;
            end

            default: state <= S_IDLE;
        endcase
    end
end
 endmodule

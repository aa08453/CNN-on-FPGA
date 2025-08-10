`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 08/05/2025 10:53:14 AM
//// Design Name: 
//// Module Name: top_control
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module top_control
(
    input wire clk,
    input wire rst,
    input wire done,
    input wire btn, rst_btn,
    output reg set,
    output reg disp
 );



localparam IMAGE       = 2'd0;
localparam CNN         = 2'd1;
localparam DISP        = 2'd2;

reg [1:0] state;
reg [1:0] next_state;


//// Sequential logic: state register
always @(posedge clk or negedge rst) 
begin
    if (!rst)
        state <= IMAGE;
    else
        state <= next_state;
end



//// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs
    set = 1'b0;
    
    case (state)
        IMAGE:
        begin
            next_state = btn ? CNN : IMAGE;
        end

        CNN:
        begin
            set = 1'b1;
            next_state = done ? DISP : CNN;
        end

        DISP:
        begin
            disp = 1'b1;
            next_state =  rst_btn ? IMAGE : DISP;
        end

        default: 
        begin
            next_state = IMAGE;
        end
    endcase
end

endmodule

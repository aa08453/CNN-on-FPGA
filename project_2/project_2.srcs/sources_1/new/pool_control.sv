`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025
// Module Name: pooling
// Description: 2x2 max pooling control unit for one channel
//////////////////////////////////////////////////////////////////////////////////

module pool_control #(
    
)(
    input wire clk,
    input wire rst,
    input wire pool,  // Start signal
    
    input wire max_done,
    input wire channel_done,

    output reg pool_load,
    output reg pool_store,
    output reg pool_count
);

    reg [2:0] state, next_state;
    
    localparam IDLE         = 3'd0;
    localparam LOAD         = 3'd1;
    localparam STORE        = 3'd2;
    localparam COUNT        = 3'd3;
    localparam CHECK_DONE   = 3'd4;

    // Combinational max calculations
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            state <= IDLE;
        else
            state <= next_state;
    end
    
   always @(*)
   begin
           pool_load = 0;
           pool_store = 0; 
           pool_count = 0;
           
           case (state)
           IDLE:
           begin
                next_state = pool ? LOAD : IDLE;
           end
           
           LOAD: 
           begin
                pool_load = 1'b1;
                next_state = (max_done) ? STORE : LOAD;
           end
           
           STORE: 
           begin
                pool_store = 1'b1;
                next_state = COUNT;
           end
           
           COUNT: 
           begin
                pool_count = 1'b1;
                next_state = CHECK_DONE;
           end
           
           CHECK_DONE: 
            begin
                next_state = channel_done ? CHECK_DONE : IDLE;
            end
           
           default:
           begin
            next_state = IDLE;
           end
        endcase
   end

endmodule

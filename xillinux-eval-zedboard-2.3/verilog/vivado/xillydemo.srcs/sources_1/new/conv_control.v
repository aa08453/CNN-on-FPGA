`timescale 1ns / 1ps

module conv_control 
#(
    parameter IC = 0
)
(
    input wire clk,
    input wire rst_n,
    input wire conv,

    input wire done,
    input wire load_done,
//    input wire tree_done,

    output reg addr_gen,
    output reg load,
    output reg add,
    output reg counter_enable,
    output reg store,
    output reg tree
);


localparam IDLE            = 4'd0;
localparam ADDR            = 4'd1;
localparam LOAD            = 4'd2;
localparam MAC0            = 4'd3;
localparam MAC1            = 4'd4;
localparam STORE           = 4'd5;
localparam UPDATE_COUNTERS = 4'd6;
localparam CHECK_DONE      = 4'd7;
localparam IDLE2           = 4'd8;
localparam TREE            = 4'd9;


reg [3:0] state;
reg [3:0] next_state;

// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= IDLE;   
    else
        state <= next_state;     
end

// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs
    addr_gen       = 1'b0;
    load           = 1'b0;
    add            = 1'b0;
    store          = 1'b0;
    counter_enable = 1'b0;
    tree           = 1'b0;

    case (state)
        IDLE: 
        begin
            next_state = conv ? ADDR : IDLE;
        end

        ADDR:
        begin
            addr_gen = 1'b1;
            next_state = LOAD;
        end

        LOAD: 
        begin
            load = 1'b1;
            next_state = load_done ? MAC0 : LOAD;
        end

        MAC0: 
        begin
            add        = 1'b1;
            next_state = MAC1;
        end

        MAC1: 
        begin
            add        = 1'b1;
            next_state = IDLE2;
        end
        
        IDLE2:
        begin
            tree       = 1'b1;
            next_state = (IC > 0) ? TREE : STORE;
        end
        
        TREE:
        begin
            tree = 1'b1;
            next_state = STORE;
        end

        STORE:
        begin
            store = 1'b1;
            next_state = UPDATE_COUNTERS;
        end

        UPDATE_COUNTERS: 
        begin
            counter_enable = 1'b1;
            next_state = CHECK_DONE;
        end

        CHECK_DONE: 
        begin
            next_state = done ? CHECK_DONE : IDLE;
        end

        default: 
        begin
            next_state = IDLE;
        end
    endcase
end

endmodule

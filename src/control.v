module control (
    input wire clk,
    input wire rst_n,
    input wire done,            // Asserted when all patches processed
    output reg addr,
    output reg [1:0] mux_sel,
    output reg acc_enable,
    // output reg bias_enable,
    output reg load,
    output reg flush_acc,
    output reg counter_enable
);

parameter ADDR            = 3'd0;
parameter LOAD            = 3'd1;
parameter MAC0            = 3'd2;
parameter MAC1            = 3'd3;
parameter MAC2            = 3'd4;
parameter ACC             = 3'd5;
parameter UPDATE_COUNTERS = 3'd6;
parameter CHECK_DONE      = 3'd7;

reg [2:0] state;
reg [2:0] next_state;

// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= ADDR;
    else
        state <= next_state;
end

// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs
    load           = 1'b0;
    mux_sel        = 2'b00;
    acc_enable     = 1'b0;
    addr = 1'b0;
    // bias_enable    = 1'b0;
    flush_acc      = 1'b0;
    counter_enable = 1'b0;

    case (state)
        ADDR:
        begin
            addr = 1'b1;
            flush_acc = 1'b1;
            next_state = LOAD;
        end

        LOAD: 
        begin
            load = 1'b1;
            next_state = MAC0;
        end

        MAC0: 
        begin
            mux_sel    = 2'b00;
            // acc_enable = 1'b1;
            next_state = MAC1;
        end

        MAC1: 
        begin
            mux_sel    = 2'b01;
            // acc_enable = 1'b1;
            next_state = MAC2;
        end

        MAC2: 
        begin
            mux_sel    = 2'b10;
            // acc_enable = 1'b1;
            next_state = ACC;
        end

        ACC:
        begin
            acc_enable = 1'b1;
            // next_state = ADD_BIAS;
            next_state = UPDATE_COUNTERS;
        end

        // ADD_BIAS: 
        // begin
        //     bias_enable = 1'b1;
        //     next_state  = UPDATE_COUNTERS;
        // end

        UPDATE_COUNTERS: 
        begin
            counter_enable = 1'b1;
            next_state     = CHECK_DONE;
        end

        CHECK_DONE: 
        begin
            if (done)
                next_state = CHECK_DONE; 
            else
                next_state = ADDR;
        end

        // EXIT:
        // begin
        //     load           = 1'b0;
        //     mux_sel        = 2'b00;
        //     acc_enable     = 1'b0;
        //     // bias_enable    = 1'b0;
        //     flush_acc      = 1'b0;
        //     counter_enable = 1'b0;
        //     next_state = EXIT;
        // end

        default: 
        begin
            next_state = ADDR;
        end
    endcase
end

endmodule

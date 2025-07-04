module conv_control (
    input wire clk,
    input wire rst_n,

    input wire done,

    output reg addr,
    output reg load,
    output reg [1:0] mux_sel,
    output reg acc_enable,
    output reg store,
    output reg counter_enable,
);

parameter ADDR            = 4'd0;
parameter LOAD            = 4'd1;
parameter MAC0            = 4'd2;
parameter MAC1            = 4'd3;
parameter MAC2            = 4'd4;
parameter SUM             = 4'd5;
parameter ACC             = 4'd6;
parameter STORE           = 4'd7;
parameter UPDATE_COUNTERS = 4'd8;
parameter CHECK_DONE      = 4'd9;

reg [3:0] state;
reg [3:0] next_state;

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
    addr           = 1'b0;
    load           = 1'b0;
    mux_sel        = 2'b00;
    acc_enable     = 1'b0;
    store          = 1'b0;
    counter_enable = 1'b0;
    result_store   = 1'b0;


    case (state)
        ADDR:
        begin
            addr = 1'b1;
            next_state = LOAD;
        end

        LOAD: 
        begin
            load = 1'b1;
            next_state = MAC0;
        end

        MAC0: 
        begin
            mux_sel    = 2'b01;
            next_state = MAC1;
        end

        MAC1: 
        begin
            mux_sel    = 2'b10;
            next_state = MAC2;
        end

        MAC2: 
        begin
            mux_sel    = 2'b11;
            next_state = SUM;
        end

        SUM:
        begin
            mux_sel = 2'b00;
            next_state = ACC;
        end

        ACC:
        begin
            acc_enable = 1'b1;
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
            next_state = done ? CHECK_DONE : ADDR;
        end
    endcase
end

endmodule

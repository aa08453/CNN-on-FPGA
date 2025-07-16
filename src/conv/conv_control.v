module conv_control 
(
    input wire clk,
    input wire rst_n,
    input wire conv,

    input wire done,
    input wire load_done,

    output reg addr_gen,
    output reg load,
    output reg [1:0] mux_sel,
    output reg add,
    output reg counter_enable,
    output reg flush_acc,
    output reg store
);


parameter IDLE            = 4'd0;
parameter ADDR            = 4'd1;
parameter LOAD            = 4'd2;
parameter MAC0            = 4'd3;
parameter MAC1            = 4'd4;
parameter MAC2            = 4'd5;
parameter SUM             = 4'd6;
parameter ACC             = 4'd7;
parameter STORE           = 4'd8;
parameter UPDATE_COUNTERS = 4'd9;
parameter CHECK_DONE      = 4'd10;

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
    addr_gen       = 1'b0;
    flush_acc      = 1'b0;
    load           = 1'b0;
    mux_sel        = 2'b00;
    add            = 1'b0;
    store          = 1'b0;
    counter_enable = 1'b0;

    case (state)
        IDLE: 
        begin
            next_state = conv ? ADDR : IDLE;
        end

        ADDR:
        begin
            addr_gen = 1'b1;
            flush_acc = 1'b1;
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
            mux_sel    = 2'b01;
            next_state = MAC1;
        end

        MAC1: 
        begin
            add        = 1'b1;
            mux_sel    = 2'b10;
            next_state = MAC2;
        end

        MAC2: 
        begin
            add        = 1'b1;
            mux_sel    = 2'b11;
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
            next_state = done ? IDLE : ADDR;
        end

        default: 
        begin
            next_state = IDLE;
        end
    endcase
end

endmodule

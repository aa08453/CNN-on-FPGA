module conv_control 
(
    input wire clk,
    input wire rst_n,
    input wire conv,

    input wire done,
    input wire load_done,

    output reg addr_gen,
    output reg load,
//    output reg [1:0] mux_sel,
    output reg add,
    output reg counter_enable,
//    output reg flush_acc,
    output reg store
);


parameter IDLE            = 3'd0;
parameter ADDR            = 3'd1;
parameter LOAD            = 3'd2;
parameter MAC0            = 3'd3;
parameter MAC1            = 3'd4;
//parameter MAC2            = 4'd5;
//parameter SUM             = 4'd6;
//parameter ACC             = 4'd7;
parameter STORE           = 3'd5;
parameter UPDATE_COUNTERS = 3'd6;
parameter CHECK_DONE      = 3'd7;

reg [2:0] state;
reg [2:0] next_state;

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
//    flush_acc      = 1'b0;
    load           = 1'b0;
//    mux_sel        = 2'b00;
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
//            flush_acc = 1'b1;
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
//            mux_sel    = 2'b01;
            next_state = MAC1;
        end

        MAC1: 
        begin
            add        = 1'b1;
//            mux_sel    = 2'b10;
//            next_state = MAC2;
            next_state = STORE;
        end

//        MAC2: 
//        begin
//            add        = 1'b1;
//            mux_sel    = 2'b11;
//            next_state = STORE;
//        end

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

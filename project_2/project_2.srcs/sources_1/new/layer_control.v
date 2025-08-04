`timescale 1ns / 1ps

module layer_control 
#(
    parameter IC = 0
)
(
    input wire clk,
    input wire rst_n,
    
    input wire c_load_done,
    input wire conv_done,
    input wire cout_done,
    input wire pool_done,
    input wire start,

    output reg cout,
    output reg c_load,
    output reg conv,
    output reg pool
);

localparam COUNT_OUT       = 4'd0;
localparam CHANNEL_LOAD    = 4'd1;
localparam CONV            = 4'd2;
localparam POOL            = 4'd3;
localparam IDLE            = 4'd4;
localparam STOP            = 4'd5;
localparam STORE           = 4'd6;
localparam CHECK           = 4'd7;

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
    cout           = 1'b0;
    c_load         = 1'b0;
    conv           = 1'b0;
    pool           = 1'b0;
    
    case (state)
        COUNT_OUT:
        begin
            cout = 1'b1;
            next_state = cout_done ? POOL: CHANNEL_LOAD;
        end

        CHANNEL_LOAD:
        begin
            c_load = 1'b1;
            next_state = c_load_done ? CONV : CHANNEL_LOAD;
        end

        CONV:
        begin
            conv = 1'b1;
            next_state =  conv_done ? COUNT_OUT : CONV;
        end

        
        CHECK: next_state = conv_done ? COUNT_OUT : CONV;

        POOL:
        begin
            pool = 1'b1;
            next_state = pool_done ? STOP : POOL;
        end
        
        STOP:
        begin
            next_state = STOP;
        end

        IDLE:
        begin
           next_state = (IC > 0) ? (start ? CHANNEL_LOAD : IDLE) : CHANNEL_LOAD;
        end     

        default: 
        begin
            next_state = IDLE;
        end
    endcase
end

endmodule

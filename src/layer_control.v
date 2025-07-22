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
    output reg pool,
    output reg tree
);

localparam COUNT_OUT       = 3'd0;
localparam CHANNEL_LOAD    = 3'd1;
localparam CONV            = 3'd2;
localparam TREE            = 3'd3;
localparam POOL            = 3'd4;
localparam IDLE            = 3'd5;
localparam STOP            = 3'd6;
localparam TREE2           = 3'd7;

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
    cout           = 1'b0;
    c_load         = 1'b0;
    conv           = 1'b0;
    pool           = 1'b0;
    tree           = 1'b0;
    
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
            next_state = (IC > 0) ? TREE : (conv_done ? COUNT_OUT : CONV);
        end

        TREE:
        begin
            tree = 1'b1;
            next_state = TREE2;
        end
        
        TREE2:
        begin
            tree = 1'b1;
            next_state = conv_done ? COUNT_OUT : CONV;
        end

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

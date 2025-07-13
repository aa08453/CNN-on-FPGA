
module layer_control 
#(
    parameter IC = 0
)
(
    input wire clk,
    input wire rst_n,

    input wire conv_done,
    input wire cout_done,
    input wire pool_done,

    output reg cout,
    output reg c_load,
    output reg conv,
    output reg pool,
    output reg tree
);

parameter COUNT_OUT       = 3'd0;
parameter CHANNEL_LOAD    = 3'd1;
parameter CONV            = 3'd2;
parameter tree            = 3'd3;
parameter POOL            = 3'd4;
parameter IDLE            = 3'd5;

reg [2:0] state;
reg [2:0] next_state;


// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= CHANNEL_LOAD;
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

    next_state = state;
    
    case (state)
        COUNT_OUT:
        begin
            cout = 1'b1;
            next_state = cout_done ? POOL: CHANNEL_LOAD;
        end

        CHANNEL_LOAD:
        begin
            c_load = 1'b1;
            next_state = CONV;
        end

        CONV:
        begin
            conv = 1'b1;
            next_state = (IC > 0) ? TREE: conv_done ? COUNT_OUT : CONV;
        end

        TREE:
        begin
            tree = 1'b1;
            next_state = conv_done ? COUNT_OUT : CONV;
        end

        POOL:
        begin
            pool = 1'b1;
            next_state = pool_done ? IDLE : POOL;
        end  

        IDLE:
        begin
            next_state = IDLE;
        end     

        default: 
        begin
            next_state = IDLE;
        end
    endcase
end

endmodule

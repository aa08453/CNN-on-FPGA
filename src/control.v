
module control 
(
    input wire clk,
    input wire rst_n,

    input wire conv1_done,            // Asserted when all patches processed
    input wire conv2_done,
    input wire pool1_done,
    input wire pool2_done,

    input wire is_single_input_channel,

    output reg conv1,
    output reg store,
    output reg conv2,
    output reg pool1,
    output reg pool2,
);

parameter CONV1    = 3'd0;
parameter POOL1    = 3'd1;
parameter CONV2    = 3'd2;
parameter POOL2    = 3'd3;
parameter IDLE     = 3'd4;

reg [2:0] state;
reg [2:0] next_state;


// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= CHANNEL_LOAD;
    else
        state <= next_state;
end

// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs
    cout           = 1'b0;
    c_load         = 1'b0;
    cin            = 1'b0;
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
            next_state = is_single_input_channel ? CONV : COUNT_IN;
        end

        COUNT_IN:
        begin
            cin = 1'b1;
            next_state = cin_done ? COUNT_OUT : CONV;
        end

        CONV:
        begin
            conv = 1'b1;
            next_state = conv_done ? (is_single_input_channel ? COUNT_OUT : COUNT_IN) : CONV;
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

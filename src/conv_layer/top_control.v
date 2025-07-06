
module top_control 
(
    input wire clk,
    input wire rst_n,

    input wire conv_done,            // Asserted when all patches processed
    input wire cin_done,
    input wire cout_done,

    input wire is_single_input_channel,

    output reg cout,
    output reg c_load,
    output reg bias_init,
    output reg cin,
    output reg conv,
    output reg relu
);

parameter COUNT_OUT       = 3'd0;
parameter CHANNEL_LOAD    = 3'd1;
parameter BIAS_STORE      = 3'd2;
parameter COUNT_IN        = 3'd3;
parameter CONV            = 3'd4;
parameter ACTIVATE        = 3'd5;
parameter IDLE            = 3'd6;

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
    bias_init      = 1'b0;
    cin            = 1'b0;
    conv           = 1'b0;
    relu           = 1'b0;
    
    case (state)
        COUNT_OUT:
        begin
            cout = 1'b1;
            next_state = CHANNEL_LOAD;
        end

        CHANNEL_LOAD:
        begin
            c_load = 1'b1;
            next_state = BIAS_STORE;
        end

        BIAS_STORE:
        begin
            bias_init = 1'b1;
            next_state = is_single_input_channel ? CONV : COUNT_IN;
        end

        COUNT_IN:
        begin
            cin = 1'b1;
            next_state = cin_done ? ACTIVATE : CONV;
        end

        CONV:
        begin
            conv = 1'b1;
            next_state = conv_done ? (is_single_input_channel ? ACTIVATE : COUNT_IN) : CONV;
        end

        ACTIVATE:
        begin
            relu = 1'b1;
            next_state = cout_done ? IDLE : COUNT_OUT;
        end  

        IDLE:
        begin

        end      

        default: 
        begin
            next_state = COUNT_OUT;
        end
    endcase
end

endmodule

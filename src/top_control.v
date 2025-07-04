
module top_control 
(
    input wire clk,
    input wire rst_n,

    input wire conv_done,            // Asserted when all patches processed
    input wire cin_done,
    input wire cout_done,

    output reg cout,
    output reg c_load,
    output reg bias_init,
    output reg cin,
    output reg conv,
    output reg result_store,
    output reg relu,
    output reg output_store
);

parameter COUNT_OUT       = 3'd0;
parameter CHANNEL_LOAD    = 3'd1;
parameter BIAS_STORE      = 3'd2;
parameter COUNT_IN        = 3'd3;
parameter ACTIVATE        = 3'd4;
parameter CONV            = 3'd5;
parameter RESULT          = 3'd6;

reg [2:0] state;
reg [2:0] next_state;

// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= COUNT_OUT;
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
    result_store   = 1'b0;
    relu           = 1'b0;
    output_store   = 1'b0;


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
            next_state = COUNT_IN;
        end

        COUNT_IN:
        begin
            cin = 1'b1;
            next_state = cin_done ? ACTIVATE : CONV;
        end

        CONV:
        begin
            conv = 1'b1;
            next_state = conv_done ? RESULT : CONV;
        end

        RESULT:
        begin
            result_store = 1'b1;
            next_state = COUNT_IN;
        end

        ACTIVATE:
        begin
            relu = 1'b1;
            next_state = OUTPUT;
        end

        OUTPUT:
        begin
            output_store = 1'b1;
            next_state = cout_done ? COUNT_OUT : OUTPUT;
        end

        default: 
        begin
            next_state = OUTPUT;
        end
    endcase
end

endmodule

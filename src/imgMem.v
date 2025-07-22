module imgMem #(
parameter LOAD_ADDR_LEN = 7,
parameter OC = 15,
parameter CHANNEL_SIZE = 195
)(
    input wire clk,
    input wire rst,
    input wire load,
    
    input wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output signed [7:0] data_out [0:OC][0:1]
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_0.mem")) 
    mem_inst0(
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[0][0]),
        .dout2(data_out[0][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_1.mem")) 
    mem_inst1(
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[1][0]),
        .dout2(data_out[1][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_2.mem")) 
    mem_inst2(
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[2][0]),
        .dout2(data_out[2][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_3.mem")) 
    mem_inst3 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[3][0]),
        .dout2(data_out[3][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_4.mem")) 
    mem_inst4 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[4][0]),
        .dout2(data_out[4][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_5.mem")) 
    mem_inst5 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[5][0]),
        .dout2(data_out[5][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_6.mem")) 
    mem_inst6 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[6][0]),
        .dout2(data_out[6][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_7.mem")) 
    mem_inst7 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[7][0]),
        .dout2(data_out[7][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_8.mem")) 
    mem_inst8 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[8][0]),
        .dout2(data_out[8][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_9.mem")) 
    mem_inst9 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[9][0]),
        .dout2(data_out[9][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_10.mem")) 
    mem_inst10 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[10][0]),
        .dout2(data_out[10][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_11.mem")) 
    mem_inst11 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[11][0]),
        .dout2(data_out[11][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_12.mem")) 
    mem_inst12 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[12][0]),
        .dout2(data_out[12][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_13.mem")) 
    mem_inst13 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[13][0]),
        .dout2(data_out[13][1])
    );
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_14.mem")) 
    mem_inst14 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[14][0]),
        .dout2(data_out[14][1])
    );
    
    
    channelMem #( .DEPTH(CHANNEL_SIZE), .LOAD_ADDR_LEN(LOAD_ADDR_LEN), .FILE("split_15.mem")) 
    mem_inst15 (
        .clk(clk),
        .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .dout1(data_out[15][0]),
        .dout2(data_out[15][1])
    );
    
    
endmodule

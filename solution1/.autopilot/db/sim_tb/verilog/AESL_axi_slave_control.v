// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_input_V,
    TRAN_outputConv_V,
    TRAN_weight_V,
    TRAN_bias_V,
    TRAN_outputPool_V,
    TRAN_weight2_V,
    TRAN_bias2_V,
    TRAN_outputConv2_V,
    TRAN_outputPool2_V,
    TRAN_outputDense_V,
    TRAN_fcWeight_V,
    TRAN_fcBias_V,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_input_V "./c.top.autotvin_input_V.dat"
`define TV_IN_outputConv_V "./c.top.autotvin_outputConv_V.dat"
`define TV_IN_weight_V "./c.top.autotvin_weight_V.dat"
`define TV_IN_bias_V "./c.top.autotvin_bias_V.dat"
`define TV_IN_outputPool_V "./c.top.autotvin_outputPool_V.dat"
`define TV_IN_weight2_V "./c.top.autotvin_weight2_V.dat"
`define TV_IN_bias2_V "./c.top.autotvin_bias2_V.dat"
`define TV_IN_outputConv2_V "./c.top.autotvin_outputConv2_V.dat"
`define TV_IN_outputPool2_V "./c.top.autotvin_outputPool2_V.dat"
`define TV_IN_outputDense_V "./c.top.autotvin_outputDense_V.dat"
`define TV_IN_fcWeight_V "./c.top.autotvin_fcWeight_V.dat"
`define TV_IN_fcBias_V "./c.top.autotvin_fcBias_V.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter input_V_DEPTH = 1;
reg [31 : 0] input_V_OPERATE_DEPTH = 1;
parameter input_V_c_bitwidth = 32;
parameter outputConv_V_DEPTH = 1;
reg [31 : 0] outputConv_V_OPERATE_DEPTH = 1;
parameter outputConv_V_c_bitwidth = 32;
parameter weight_V_DEPTH = 1;
reg [31 : 0] weight_V_OPERATE_DEPTH = 1;
parameter weight_V_c_bitwidth = 32;
parameter bias_V_DEPTH = 1;
reg [31 : 0] bias_V_OPERATE_DEPTH = 1;
parameter bias_V_c_bitwidth = 32;
parameter outputPool_V_DEPTH = 1;
reg [31 : 0] outputPool_V_OPERATE_DEPTH = 1;
parameter outputPool_V_c_bitwidth = 32;
parameter weight2_V_DEPTH = 1;
reg [31 : 0] weight2_V_OPERATE_DEPTH = 1;
parameter weight2_V_c_bitwidth = 32;
parameter bias2_V_DEPTH = 1;
reg [31 : 0] bias2_V_OPERATE_DEPTH = 1;
parameter bias2_V_c_bitwidth = 32;
parameter outputConv2_V_DEPTH = 1;
reg [31 : 0] outputConv2_V_OPERATE_DEPTH = 1;
parameter outputConv2_V_c_bitwidth = 32;
parameter outputPool2_V_DEPTH = 1;
reg [31 : 0] outputPool2_V_OPERATE_DEPTH = 1;
parameter outputPool2_V_c_bitwidth = 32;
parameter outputDense_V_DEPTH = 1;
reg [31 : 0] outputDense_V_OPERATE_DEPTH = 1;
parameter outputDense_V_c_bitwidth = 32;
parameter fcWeight_V_DEPTH = 1;
reg [31 : 0] fcWeight_V_OPERATE_DEPTH = 1;
parameter fcWeight_V_c_bitwidth = 32;
parameter fcBias_V_DEPTH = 1;
reg [31 : 0] fcBias_V_OPERATE_DEPTH = 1;
parameter fcBias_V_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter top_continue_addr = 0;
parameter top_auto_start_addr = 0;
parameter input_V_data_in_addr = 16;
parameter outputConv_V_data_in_addr = 24;
parameter weight_V_data_in_addr = 32;
parameter bias_V_data_in_addr = 40;
parameter outputPool_V_data_in_addr = 48;
parameter weight2_V_data_in_addr = 56;
parameter bias2_V_data_in_addr = 64;
parameter outputConv2_V_data_in_addr = 72;
parameter outputPool2_V_data_in_addr = 80;
parameter outputDense_V_data_in_addr = 88;
parameter fcWeight_V_data_in_addr = 96;
parameter fcBias_V_data_in_addr = 104;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
input    [32 - 1 : 0] TRAN_input_V;
input    [32 - 1 : 0] TRAN_outputConv_V;
input    [32 - 1 : 0] TRAN_weight_V;
input    [32 - 1 : 0] TRAN_bias_V;
input    [32 - 1 : 0] TRAN_outputPool_V;
input    [32 - 1 : 0] TRAN_weight2_V;
input    [32 - 1 : 0] TRAN_bias2_V;
input    [32 - 1 : 0] TRAN_outputConv2_V;
input    [32 - 1 : 0] TRAN_outputPool2_V;
input    [32 - 1 : 0] TRAN_outputDense_V;
input    [32 - 1 : 0] TRAN_fcWeight_V;
input    [32 - 1 : 0] TRAN_fcBias_V;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [input_V_c_bitwidth - 1 : 0] reg_input_V;
reg input_V_write_data_finish;
reg [outputConv_V_c_bitwidth - 1 : 0] reg_outputConv_V;
reg outputConv_V_write_data_finish;
reg [weight_V_c_bitwidth - 1 : 0] reg_weight_V;
reg weight_V_write_data_finish;
reg [bias_V_c_bitwidth - 1 : 0] reg_bias_V;
reg bias_V_write_data_finish;
reg [outputPool_V_c_bitwidth - 1 : 0] reg_outputPool_V;
reg outputPool_V_write_data_finish;
reg [weight2_V_c_bitwidth - 1 : 0] reg_weight2_V;
reg weight2_V_write_data_finish;
reg [bias2_V_c_bitwidth - 1 : 0] reg_bias2_V;
reg bias2_V_write_data_finish;
reg [outputConv2_V_c_bitwidth - 1 : 0] reg_outputConv2_V;
reg outputConv2_V_write_data_finish;
reg [outputPool2_V_c_bitwidth - 1 : 0] reg_outputPool2_V;
reg outputPool2_V_write_data_finish;
reg [outputDense_V_c_bitwidth - 1 : 0] reg_outputDense_V;
reg outputDense_V_write_data_finish;
reg [fcWeight_V_c_bitwidth - 1 : 0] reg_fcWeight_V;
reg fcWeight_V_write_data_finish;
reg [fcBias_V_c_bitwidth - 1 : 0] reg_fcBias_V;
reg fcBias_V_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
//write input_V reg
reg [31 : 0] write_input_V_count = 0;
reg write_input_V_run_flag = 0;
reg write_one_input_V_data_done = 0;
//write outputConv_V reg
reg [31 : 0] write_outputConv_V_count = 0;
reg write_outputConv_V_run_flag = 0;
reg write_one_outputConv_V_data_done = 0;
//write weight_V reg
reg [31 : 0] write_weight_V_count = 0;
reg write_weight_V_run_flag = 0;
reg write_one_weight_V_data_done = 0;
//write bias_V reg
reg [31 : 0] write_bias_V_count = 0;
reg write_bias_V_run_flag = 0;
reg write_one_bias_V_data_done = 0;
//write outputPool_V reg
reg [31 : 0] write_outputPool_V_count = 0;
reg write_outputPool_V_run_flag = 0;
reg write_one_outputPool_V_data_done = 0;
//write weight2_V reg
reg [31 : 0] write_weight2_V_count = 0;
reg write_weight2_V_run_flag = 0;
reg write_one_weight2_V_data_done = 0;
//write bias2_V reg
reg [31 : 0] write_bias2_V_count = 0;
reg write_bias2_V_run_flag = 0;
reg write_one_bias2_V_data_done = 0;
//write outputConv2_V reg
reg [31 : 0] write_outputConv2_V_count = 0;
reg write_outputConv2_V_run_flag = 0;
reg write_one_outputConv2_V_data_done = 0;
//write outputPool2_V reg
reg [31 : 0] write_outputPool2_V_count = 0;
reg write_outputPool2_V_run_flag = 0;
reg write_one_outputPool2_V_data_done = 0;
//write outputDense_V reg
reg [31 : 0] write_outputDense_V_count = 0;
reg write_outputDense_V_run_flag = 0;
reg write_one_outputDense_V_data_done = 0;
//write fcWeight_V reg
reg [31 : 0] write_fcWeight_V_count = 0;
reg write_fcWeight_V_run_flag = 0;
reg write_one_fcWeight_V_data_done = 0;
//write fcBias_V reg
reg [31 : 0] write_fcBias_V_count = 0;
reg write_fcBias_V_run_flag = 0;
reg write_one_fcBias_V_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & input_V_write_data_finish & outputConv_V_write_data_finish & weight_V_write_data_finish & bias_V_write_data_finish & outputPool_V_write_data_finish & weight2_V_write_data_finish & bias2_V_write_data_finish & outputConv2_V_write_data_finish & outputPool2_V_write_data_finish & outputDense_V_write_data_finish & fcWeight_V_write_data_finish & fcBias_V_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_input_V) 
begin
    reg_input_V = TRAN_input_V;
end
always @(TRAN_outputConv_V) 
begin
    reg_outputConv_V = TRAN_outputConv_V;
end
always @(TRAN_weight_V) 
begin
    reg_weight_V = TRAN_weight_V;
end
always @(TRAN_bias_V) 
begin
    reg_bias_V = TRAN_bias_V;
end
always @(TRAN_outputPool_V) 
begin
    reg_outputPool_V = TRAN_outputPool_V;
end
always @(TRAN_weight2_V) 
begin
    reg_weight2_V = TRAN_weight2_V;
end
always @(TRAN_bias2_V) 
begin
    reg_bias2_V = TRAN_bias2_V;
end
always @(TRAN_outputConv2_V) 
begin
    reg_outputConv2_V = TRAN_outputConv2_V;
end
always @(TRAN_outputPool2_V) 
begin
    reg_outputPool2_V = TRAN_outputPool2_V;
end
always @(TRAN_outputDense_V) 
begin
    reg_outputDense_V = TRAN_outputDense_V;
end
always @(TRAN_fcWeight_V) 
begin
    reg_fcWeight_V = TRAN_fcWeight_V;
end
always @(TRAN_fcBias_V) 
begin
    reg_fcBias_V = TRAN_fcBias_V;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_V_write_data_finish <= 0;
        write_input_V_run_flag <= 0; 
        write_input_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_V_c_bitwidth, input_V_DEPTH, input_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            input_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_V_run_flag <= 1; 
            write_input_V_count = 0;
        end
        if (write_one_input_V_data_done === 1) begin
            write_input_V_count = write_input_V_count + 1;
            if (write_input_V_count == input_V_OPERATE_DEPTH) begin
                write_input_V_run_flag <= 0; 
                input_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_V
    integer write_input_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_V_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_V_c_bitwidth < 32) begin
                        input_V_data_tmp_reg = reg_input_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_V_c_bitwidth) begin
                                input_V_data_tmp_reg[j] = reg_input_V[i*32 + j];
                            end
                            else begin
                                input_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_V_data_in_addr + write_input_V_count * four_byte_num * 4 + i * 4, input_V_data_tmp_reg, write_input_V_resp);
                end
                process_busy = 0;
                write_one_input_V_data_done <= 1;
                @(posedge clk);
                write_one_input_V_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outputConv_V_write_data_finish <= 0;
        write_outputConv_V_run_flag <= 0; 
        write_outputConv_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outputConv_V_c_bitwidth, outputConv_V_DEPTH, outputConv_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outputConv_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outputConv_V_run_flag <= 1; 
            write_outputConv_V_count = 0;
        end
        if (write_one_outputConv_V_data_done === 1) begin
            write_outputConv_V_count = write_outputConv_V_count + 1;
            if (write_outputConv_V_count == outputConv_V_OPERATE_DEPTH) begin
                write_outputConv_V_run_flag <= 0; 
                outputConv_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outputConv_V
    integer write_outputConv_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outputConv_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outputConv_V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outputConv_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outputConv_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outputConv_V_c_bitwidth < 32) begin
                        outputConv_V_data_tmp_reg = reg_outputConv_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outputConv_V_c_bitwidth) begin
                                outputConv_V_data_tmp_reg[j] = reg_outputConv_V[i*32 + j];
                            end
                            else begin
                                outputConv_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (outputConv_V_data_in_addr + write_outputConv_V_count * four_byte_num * 4 + i * 4, outputConv_V_data_tmp_reg, write_outputConv_V_resp);
                end
                process_busy = 0;
                write_one_outputConv_V_data_done <= 1;
                @(posedge clk);
                write_one_outputConv_V_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        weight_V_write_data_finish <= 0;
        write_weight_V_run_flag <= 0; 
        write_weight_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (weight_V_c_bitwidth, weight_V_DEPTH, weight_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            weight_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_weight_V_run_flag <= 1; 
            write_weight_V_count = 0;
        end
        if (write_one_weight_V_data_done === 1) begin
            write_weight_V_count = write_weight_V_count + 1;
            if (write_weight_V_count == weight_V_OPERATE_DEPTH) begin
                write_weight_V_run_flag <= 0; 
                weight_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_weight_V
    integer write_weight_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] weight_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weight_V_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_weight_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write weight_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (weight_V_c_bitwidth < 32) begin
                        weight_V_data_tmp_reg = reg_weight_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < weight_V_c_bitwidth) begin
                                weight_V_data_tmp_reg[j] = reg_weight_V[i*32 + j];
                            end
                            else begin
                                weight_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (weight_V_data_in_addr + write_weight_V_count * four_byte_num * 4 + i * 4, weight_V_data_tmp_reg, write_weight_V_resp);
                end
                process_busy = 0;
                write_one_weight_V_data_done <= 1;
                @(posedge clk);
                write_one_weight_V_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias_V_write_data_finish <= 0;
        write_bias_V_run_flag <= 0; 
        write_bias_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (bias_V_c_bitwidth, bias_V_DEPTH, bias_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            bias_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_bias_V_run_flag <= 1; 
            write_bias_V_count = 0;
        end
        if (write_one_bias_V_data_done === 1) begin
            write_bias_V_count = write_bias_V_count + 1;
            if (write_bias_V_count == bias_V_OPERATE_DEPTH) begin
                write_bias_V_run_flag <= 0; 
                bias_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_bias_V
    integer write_bias_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] bias_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_V_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_bias_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write bias_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (bias_V_c_bitwidth < 32) begin
                        bias_V_data_tmp_reg = reg_bias_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < bias_V_c_bitwidth) begin
                                bias_V_data_tmp_reg[j] = reg_bias_V[i*32 + j];
                            end
                            else begin
                                bias_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (bias_V_data_in_addr + write_bias_V_count * four_byte_num * 4 + i * 4, bias_V_data_tmp_reg, write_bias_V_resp);
                end
                process_busy = 0;
                write_one_bias_V_data_done <= 1;
                @(posedge clk);
                write_one_bias_V_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outputPool_V_write_data_finish <= 0;
        write_outputPool_V_run_flag <= 0; 
        write_outputPool_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outputPool_V_c_bitwidth, outputPool_V_DEPTH, outputPool_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outputPool_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outputPool_V_run_flag <= 1; 
            write_outputPool_V_count = 0;
        end
        if (write_one_outputPool_V_data_done === 1) begin
            write_outputPool_V_count = write_outputPool_V_count + 1;
            if (write_outputPool_V_count == outputPool_V_OPERATE_DEPTH) begin
                write_outputPool_V_run_flag <= 0; 
                outputPool_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outputPool_V
    integer write_outputPool_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outputPool_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outputPool_V_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outputPool_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outputPool_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outputPool_V_c_bitwidth < 32) begin
                        outputPool_V_data_tmp_reg = reg_outputPool_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outputPool_V_c_bitwidth) begin
                                outputPool_V_data_tmp_reg[j] = reg_outputPool_V[i*32 + j];
                            end
                            else begin
                                outputPool_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (outputPool_V_data_in_addr + write_outputPool_V_count * four_byte_num * 4 + i * 4, outputPool_V_data_tmp_reg, write_outputPool_V_resp);
                end
                process_busy = 0;
                write_one_outputPool_V_data_done <= 1;
                @(posedge clk);
                write_one_outputPool_V_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        weight2_V_write_data_finish <= 0;
        write_weight2_V_run_flag <= 0; 
        write_weight2_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (weight2_V_c_bitwidth, weight2_V_DEPTH, weight2_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            weight2_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_weight2_V_run_flag <= 1; 
            write_weight2_V_count = 0;
        end
        if (write_one_weight2_V_data_done === 1) begin
            write_weight2_V_count = write_weight2_V_count + 1;
            if (write_weight2_V_count == weight2_V_OPERATE_DEPTH) begin
                write_weight2_V_run_flag <= 0; 
                weight2_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_weight2_V
    integer write_weight2_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] weight2_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weight2_V_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_weight2_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write weight2_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (weight2_V_c_bitwidth < 32) begin
                        weight2_V_data_tmp_reg = reg_weight2_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < weight2_V_c_bitwidth) begin
                                weight2_V_data_tmp_reg[j] = reg_weight2_V[i*32 + j];
                            end
                            else begin
                                weight2_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (weight2_V_data_in_addr + write_weight2_V_count * four_byte_num * 4 + i * 4, weight2_V_data_tmp_reg, write_weight2_V_resp);
                end
                process_busy = 0;
                write_one_weight2_V_data_done <= 1;
                @(posedge clk);
                write_one_weight2_V_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias2_V_write_data_finish <= 0;
        write_bias2_V_run_flag <= 0; 
        write_bias2_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (bias2_V_c_bitwidth, bias2_V_DEPTH, bias2_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            bias2_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_bias2_V_run_flag <= 1; 
            write_bias2_V_count = 0;
        end
        if (write_one_bias2_V_data_done === 1) begin
            write_bias2_V_count = write_bias2_V_count + 1;
            if (write_bias2_V_count == bias2_V_OPERATE_DEPTH) begin
                write_bias2_V_run_flag <= 0; 
                bias2_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_bias2_V
    integer write_bias2_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] bias2_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias2_V_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_bias2_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write bias2_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (bias2_V_c_bitwidth < 32) begin
                        bias2_V_data_tmp_reg = reg_bias2_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < bias2_V_c_bitwidth) begin
                                bias2_V_data_tmp_reg[j] = reg_bias2_V[i*32 + j];
                            end
                            else begin
                                bias2_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (bias2_V_data_in_addr + write_bias2_V_count * four_byte_num * 4 + i * 4, bias2_V_data_tmp_reg, write_bias2_V_resp);
                end
                process_busy = 0;
                write_one_bias2_V_data_done <= 1;
                @(posedge clk);
                write_one_bias2_V_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outputConv2_V_write_data_finish <= 0;
        write_outputConv2_V_run_flag <= 0; 
        write_outputConv2_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outputConv2_V_c_bitwidth, outputConv2_V_DEPTH, outputConv2_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outputConv2_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outputConv2_V_run_flag <= 1; 
            write_outputConv2_V_count = 0;
        end
        if (write_one_outputConv2_V_data_done === 1) begin
            write_outputConv2_V_count = write_outputConv2_V_count + 1;
            if (write_outputConv2_V_count == outputConv2_V_OPERATE_DEPTH) begin
                write_outputConv2_V_run_flag <= 0; 
                outputConv2_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outputConv2_V
    integer write_outputConv2_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outputConv2_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outputConv2_V_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outputConv2_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outputConv2_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outputConv2_V_c_bitwidth < 32) begin
                        outputConv2_V_data_tmp_reg = reg_outputConv2_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outputConv2_V_c_bitwidth) begin
                                outputConv2_V_data_tmp_reg[j] = reg_outputConv2_V[i*32 + j];
                            end
                            else begin
                                outputConv2_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (outputConv2_V_data_in_addr + write_outputConv2_V_count * four_byte_num * 4 + i * 4, outputConv2_V_data_tmp_reg, write_outputConv2_V_resp);
                end
                process_busy = 0;
                write_one_outputConv2_V_data_done <= 1;
                @(posedge clk);
                write_one_outputConv2_V_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outputPool2_V_write_data_finish <= 0;
        write_outputPool2_V_run_flag <= 0; 
        write_outputPool2_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outputPool2_V_c_bitwidth, outputPool2_V_DEPTH, outputPool2_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outputPool2_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outputPool2_V_run_flag <= 1; 
            write_outputPool2_V_count = 0;
        end
        if (write_one_outputPool2_V_data_done === 1) begin
            write_outputPool2_V_count = write_outputPool2_V_count + 1;
            if (write_outputPool2_V_count == outputPool2_V_OPERATE_DEPTH) begin
                write_outputPool2_V_run_flag <= 0; 
                outputPool2_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outputPool2_V
    integer write_outputPool2_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outputPool2_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outputPool2_V_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outputPool2_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outputPool2_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outputPool2_V_c_bitwidth < 32) begin
                        outputPool2_V_data_tmp_reg = reg_outputPool2_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outputPool2_V_c_bitwidth) begin
                                outputPool2_V_data_tmp_reg[j] = reg_outputPool2_V[i*32 + j];
                            end
                            else begin
                                outputPool2_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (outputPool2_V_data_in_addr + write_outputPool2_V_count * four_byte_num * 4 + i * 4, outputPool2_V_data_tmp_reg, write_outputPool2_V_resp);
                end
                process_busy = 0;
                write_one_outputPool2_V_data_done <= 1;
                @(posedge clk);
                write_one_outputPool2_V_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outputDense_V_write_data_finish <= 0;
        write_outputDense_V_run_flag <= 0; 
        write_outputDense_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outputDense_V_c_bitwidth, outputDense_V_DEPTH, outputDense_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outputDense_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outputDense_V_run_flag <= 1; 
            write_outputDense_V_count = 0;
        end
        if (write_one_outputDense_V_data_done === 1) begin
            write_outputDense_V_count = write_outputDense_V_count + 1;
            if (write_outputDense_V_count == outputDense_V_OPERATE_DEPTH) begin
                write_outputDense_V_run_flag <= 0; 
                outputDense_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outputDense_V
    integer write_outputDense_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outputDense_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outputDense_V_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outputDense_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outputDense_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outputDense_V_c_bitwidth < 32) begin
                        outputDense_V_data_tmp_reg = reg_outputDense_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outputDense_V_c_bitwidth) begin
                                outputDense_V_data_tmp_reg[j] = reg_outputDense_V[i*32 + j];
                            end
                            else begin
                                outputDense_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (outputDense_V_data_in_addr + write_outputDense_V_count * four_byte_num * 4 + i * 4, outputDense_V_data_tmp_reg, write_outputDense_V_resp);
                end
                process_busy = 0;
                write_one_outputDense_V_data_done <= 1;
                @(posedge clk);
                write_one_outputDense_V_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fcWeight_V_write_data_finish <= 0;
        write_fcWeight_V_run_flag <= 0; 
        write_fcWeight_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fcWeight_V_c_bitwidth, fcWeight_V_DEPTH, fcWeight_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            fcWeight_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fcWeight_V_run_flag <= 1; 
            write_fcWeight_V_count = 0;
        end
        if (write_one_fcWeight_V_data_done === 1) begin
            write_fcWeight_V_count = write_fcWeight_V_count + 1;
            if (write_fcWeight_V_count == fcWeight_V_OPERATE_DEPTH) begin
                write_fcWeight_V_run_flag <= 0; 
                fcWeight_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fcWeight_V
    integer write_fcWeight_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fcWeight_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fcWeight_V_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fcWeight_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fcWeight_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fcWeight_V_c_bitwidth < 32) begin
                        fcWeight_V_data_tmp_reg = reg_fcWeight_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fcWeight_V_c_bitwidth) begin
                                fcWeight_V_data_tmp_reg[j] = reg_fcWeight_V[i*32 + j];
                            end
                            else begin
                                fcWeight_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fcWeight_V_data_in_addr + write_fcWeight_V_count * four_byte_num * 4 + i * 4, fcWeight_V_data_tmp_reg, write_fcWeight_V_resp);
                end
                process_busy = 0;
                write_one_fcWeight_V_data_done <= 1;
                @(posedge clk);
                write_one_fcWeight_V_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fcBias_V_write_data_finish <= 0;
        write_fcBias_V_run_flag <= 0; 
        write_fcBias_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fcBias_V_c_bitwidth, fcBias_V_DEPTH, fcBias_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            fcBias_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fcBias_V_run_flag <= 1; 
            write_fcBias_V_count = 0;
        end
        if (write_one_fcBias_V_data_done === 1) begin
            write_fcBias_V_count = write_fcBias_V_count + 1;
            if (write_fcBias_V_count == fcBias_V_OPERATE_DEPTH) begin
                write_fcBias_V_run_flag <= 0; 
                fcBias_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fcBias_V
    integer write_fcBias_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fcBias_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fcBias_V_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fcBias_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fcBias_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fcBias_V_c_bitwidth < 32) begin
                        fcBias_V_data_tmp_reg = reg_fcBias_V;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fcBias_V_c_bitwidth) begin
                                fcBias_V_data_tmp_reg[j] = reg_fcBias_V[i*32 + j];
                            end
                            else begin
                                fcBias_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fcBias_V_data_in_addr + write_fcBias_V_count * four_byte_num * 4 + i * 4, fcBias_V_data_tmp_reg, write_fcBias_V_resp);
                end
                process_busy = 0;
                write_one_fcBias_V_data_done <= 1;
                @(posedge clk);
                write_one_fcBias_V_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 50) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 13;
    while (1) begin
        process_13_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_13_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
endmodule

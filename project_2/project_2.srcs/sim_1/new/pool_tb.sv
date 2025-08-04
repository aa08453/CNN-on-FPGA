`timescale 1ns / 1ps

module pool_tb;

    // Parameters
    parameter W = 28;
    parameter LOAD_ADDR_LEN = 9;
    parameter DEPTH = W * W - 1;

    // Inputs
    reg clk;
    reg rst;
    reg pool;
    reg signed [7:0] data1, data2;

    // Outputs
    wire signed [7:0] max;
    wire [LOAD_ADDR_LEN:0] new_addr;
    wire channel_done;
    wire pool_store;
    wire pool_load;
    wire [LOAD_ADDR_LEN:0] addr1, addr2;

    // Internal memory (mocking SRAM)
    reg signed [7:0] mem [0:DEPTH];

    // Instantiate DUT
    pool #(.W(W), .LOAD_ADDR_LEN(LOAD_ADDR_LEN)) dut (
        .clk(clk),
        .rst(rst),
        .pool(pool),
        .data1(data1),
        .data2(data2),
        .max(max),
        .new_addr(new_addr),
        .channel_done(channel_done),
        .pool_store(pool_store),
        .pool_load(pool_load),
        .addr1(addr1),
        .addr2(addr2)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Task to preload a test pattern (4x4 image for example)
    task preload_memory;
        integer i;
        begin
            // Fill memory with values from 1 to 16
            for (i = 0; i <= DEPTH; i = i + 1) begin
                mem[i] = i + 1;
            end
        end
    endtask
    
    always @(posedge clk)
    begin
    if (pool_load)
    begin
        data1 <= mem[addr1];
        data2 <= mem[addr2];
    end
    if (pool_store)
    begin
        mem[new_addr] <= max;
    end
    end

    initial begin
        // Initialization
        rst = 0;
        pool = 1;
        data1 = 0;
        data2 = 0;

        preload_memory();

        #10;
        rst = 1;

        // Simulate pooling read
        wait (channel_done);


        $display("Pooling complete.");
        $finish;
    end

    // Provide inputs on pool_load
    always @(posedge clk) begin
        if (pool_load) begin
            data1 <= mem[addr1];
            data2 <= mem[addr2];
            $display("Reading addr1=%0d (val=%0d), addr2=%0d (val=%0d), max=%0d", addr1, mem[addr1], addr2, mem[addr2], max);
        end
    end

endmodule

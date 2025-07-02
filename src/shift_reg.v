module image_reg 
(
    input wire clk,
    input wire rst,
    input wire load_full_patch,             // 1 = load full patch, 0 = load column only

    // Flattened input pixels
    input wire [7:0] pixel0,
    input wire [7:0] pixel1,
    input wire [7:0] pixel2,
    input wire [7:0] pixel3,
    input wire [7:0] pixel4,
    input wire [7:0] pixel5,
    input wire [7:0] pixel6,
    input wire [7:0] pixel7,
    input wire [7:0] pixel8,

    // Flattened output image registers
    output wire [7:0] image_reg0,
    output wire [7:0] image_reg1,
    output wire [7:0] image_reg2,
    output wire [7:0] image_reg3,
    output wire [7:0] image_reg4,
    output wire [7:0] image_reg5,
    output wire [7:0] image_reg6,
    output wire [7:0] image_reg7,
    output wire [7:0] image_reg8
);

    reg [7:0] regs [0:8];  // Internal 3x3 patch register

    integer i;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            for (i = 0; i < 9; i = i + 1)
                regs[i] <= 8'd0;
        end 
        else if (load_full_patch) 
        begin
            // Load entire patch directly
            regs[0] <= pixel0;
            regs[1] <= pixel1;
            regs[2] <= pixel2;
            regs[3] <= pixel3;
            regs[4] <= pixel4;
            regs[5] <= pixel5;
            regs[6] <= pixel6;
            regs[7] <= pixel7;
            regs[8] <= pixel8;
        end 
        else 
        begin
            // Shift window left and load new rightmost column
            regs[0] <= regs[3];
            regs[1] <= regs[4];
            regs[2] <= regs[5];
            regs[3] <= regs[6];
            regs[4] <= regs[7];
            regs[5] <= regs[8];
            regs[6] <= pixel6;
            regs[7] <= pixel7;
            regs[8] <= pixel8;
        end
    end

    // Output assignments
    assign image_reg0 = regs[0];
    assign image_reg1 = regs[1];
    assign image_reg2 = regs[2];
    assign image_reg3 = regs[3];
    assign image_reg4 = regs[4];
    assign image_reg5 = regs[5];
    assign image_reg6 = regs[6];
    assign image_reg7 = regs[7];
    assign image_reg8 = regs[8];

endmodule

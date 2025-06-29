module image_reg (
    input wire clk,
    input wire rst,
    input wire load_full_patch,             // 1 = load full patch, 0 = load column only
    input wire [7:0] pixels [0:8],          // Full patch from patch module
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

    always @(posedge clk or posedge rst) 
    begin
        if (rst) 
        begin
            for (i = 0; i < 9; i = i + 1)
                regs[i] <= 8'd0;
        end 
        else if (load_full_patch) 
        begin
            // Load entire patch directly
            for (i = 0; i < 9; i = i + 1)
                regs[i] <= pixels[i];
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
            regs[6] <= pixels[2];
            regs[7] <= pixels[5];
            regs[8] <= pixels[8];
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

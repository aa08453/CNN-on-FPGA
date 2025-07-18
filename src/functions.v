

function signed [7:0] clamp;
  input signed [15:0] val;
  begin
    if (val > 127)
      clamp = 8'sd127;
    else if (val < -128)
      clamp = -8'sd128;
    else
      clamp = val[7:0];
  end
endfunction


function [9:0] compute_addr;
    input integer row, col;
    compute_addr = ((row) >= 0 && (row) < (28) && (col) >= 0 && (col) < (28)) ? ((row * 28) + (col)) : 10'd0;
endfunction

function [10:0] kernel_addr;
    input integer channel, idx;
    input [10:0] addr;
    kernel_addr = (addr + channel) + (idx * 9);
endfunction

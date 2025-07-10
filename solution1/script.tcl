############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn
set_top top
add_files cnn/src/testbench.cpp
add_files cnn/src/pool.h
add_files cnn/src/pool.cpp
add_files cnn/src/mnist_dataset.h
add_files cnn/src/labels.h
add_files cnn/src/fc1_weight.h
add_files cnn/src/fc1_bias.h
add_files cnn/src/eight.cpp
add_files cnn/src/dense.h
add_files cnn/src/dense.cpp
add_files cnn/src/conv2_weight.h
add_files cnn/src/conv2_bias.h
add_files cnn/src/conv1_weight.h
add_files cnn/src/conv1_bias.h
add_files cnn/src/conv.h
add_files cnn/src/conv.cpp
add_files -tb cnn/src/testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./cnn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn
set_top top
add_files cnn/src/conv.cpp
add_files cnn/src/conv.h
add_files cnn/src/conv1_bias.h
add_files cnn/src/conv1_weight.h
add_files cnn/src/conv2_bias.h
add_files cnn/src/conv2_weight.h
add_files cnn/src/dense.cpp
add_files cnn/src/dense.h
add_files cnn/src/eight.cpp
add_files cnn/src/fc1_bias.h
add_files cnn/src/fc1_weight.h
add_files cnn/src/mnist_dataset.h
add_files cnn/src/pool.cpp
add_files cnn/src/pool.h
add_files cnn/src/testbench.cpp
add_files -tb cnn/src/testbench.cpp
open_solution "solution1"
set_part {xc7k70t-fbv676-1}
create_clock -period 10 -name default
#source "./cnn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

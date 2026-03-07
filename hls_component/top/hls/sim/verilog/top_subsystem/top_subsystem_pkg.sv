//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef TOP_SUBSYSTEM_PKG__SV          
    `define TOP_SUBSYSTEM_PKG__SV      
                                                     
    package top_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "top_config.sv"           
        `include "top_reference_model.sv"  
        `include "top_scoreboard.sv"       
        `include "top_subsystem_monitor.sv"
        `include "top_virtual_sequencer.sv"
        `include "top_pkg_sequence_lib.sv" 
        `include "top_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               

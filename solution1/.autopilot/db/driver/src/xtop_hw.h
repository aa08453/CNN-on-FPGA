// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_V
//        bit 31~0 - input_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of outputConv_V
//        bit 31~0 - outputConv_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of weight_V
//        bit 31~0 - weight_V[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias_V
//        bit 31~0 - bias_V[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of outputPool_V
//        bit 31~0 - outputPool_V[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of weight2_V
//        bit 31~0 - weight2_V[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of bias2_V
//        bit 31~0 - bias2_V[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of outputConv2_V
//        bit 31~0 - outputConv2_V[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of outputPool2_V
//        bit 31~0 - outputPool2_V[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of outputDense_V
//        bit 31~0 - outputDense_V[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of fcWeight_V
//        bit 31~0 - fcWeight_V[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of fcBias_V
//        bit 31~0 - fcBias_V[31:0] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTOP_CONTROL_ADDR_AP_CTRL            0x00
#define XTOP_CONTROL_ADDR_GIE                0x04
#define XTOP_CONTROL_ADDR_IER                0x08
#define XTOP_CONTROL_ADDR_ISR                0x0c
#define XTOP_CONTROL_ADDR_INPUT_V_DATA       0x10
#define XTOP_CONTROL_BITS_INPUT_V_DATA       32
#define XTOP_CONTROL_ADDR_OUTPUTCONV_V_DATA  0x18
#define XTOP_CONTROL_BITS_OUTPUTCONV_V_DATA  32
#define XTOP_CONTROL_ADDR_WEIGHT_V_DATA      0x20
#define XTOP_CONTROL_BITS_WEIGHT_V_DATA      32
#define XTOP_CONTROL_ADDR_BIAS_V_DATA        0x28
#define XTOP_CONTROL_BITS_BIAS_V_DATA        32
#define XTOP_CONTROL_ADDR_OUTPUTPOOL_V_DATA  0x30
#define XTOP_CONTROL_BITS_OUTPUTPOOL_V_DATA  32
#define XTOP_CONTROL_ADDR_WEIGHT2_V_DATA     0x38
#define XTOP_CONTROL_BITS_WEIGHT2_V_DATA     32
#define XTOP_CONTROL_ADDR_BIAS2_V_DATA       0x40
#define XTOP_CONTROL_BITS_BIAS2_V_DATA       32
#define XTOP_CONTROL_ADDR_OUTPUTCONV2_V_DATA 0x48
#define XTOP_CONTROL_BITS_OUTPUTCONV2_V_DATA 32
#define XTOP_CONTROL_ADDR_OUTPUTPOOL2_V_DATA 0x50
#define XTOP_CONTROL_BITS_OUTPUTPOOL2_V_DATA 32
#define XTOP_CONTROL_ADDR_OUTPUTDENSE_V_DATA 0x58
#define XTOP_CONTROL_BITS_OUTPUTDENSE_V_DATA 32
#define XTOP_CONTROL_ADDR_FCWEIGHT_V_DATA    0x60
#define XTOP_CONTROL_BITS_FCWEIGHT_V_DATA    32
#define XTOP_CONTROL_ADDR_FCBIAS_V_DATA      0x68
#define XTOP_CONTROL_BITS_FCBIAS_V_DATA      32


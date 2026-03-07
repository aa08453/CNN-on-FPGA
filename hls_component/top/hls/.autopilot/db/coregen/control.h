// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of outputConv
//        bit 31~0 - outputConv[31:0] (Read/Write)
// 0x20 : Data signal of outputConv
//        bit 31~0 - outputConv[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of weight
//        bit 31~0 - weight[31:0] (Read/Write)
// 0x2c : Data signal of weight
//        bit 31~0 - weight[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of bias
//        bit 31~0 - bias[31:0] (Read/Write)
// 0x38 : Data signal of bias
//        bit 31~0 - bias[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of outputPool
//        bit 31~0 - outputPool[31:0] (Read/Write)
// 0x44 : Data signal of outputPool
//        bit 31~0 - outputPool[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of weight2
//        bit 31~0 - weight2[31:0] (Read/Write)
// 0x50 : Data signal of weight2
//        bit 31~0 - weight2[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of bias2
//        bit 31~0 - bias2[31:0] (Read/Write)
// 0x5c : Data signal of bias2
//        bit 31~0 - bias2[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of outputConv2
//        bit 31~0 - outputConv2[31:0] (Read/Write)
// 0x68 : Data signal of outputConv2
//        bit 31~0 - outputConv2[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of outputPool2
//        bit 31~0 - outputPool2[31:0] (Read/Write)
// 0x74 : Data signal of outputPool2
//        bit 31~0 - outputPool2[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of outputDense
//        bit 31~0 - outputDense[31:0] (Read/Write)
// 0x80 : Data signal of outputDense
//        bit 31~0 - outputDense[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of fcWeight
//        bit 31~0 - fcWeight[31:0] (Read/Write)
// 0x8c : Data signal of fcWeight
//        bit 31~0 - fcWeight[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of fcBias
//        bit 31~0 - fcBias[31:0] (Read/Write)
// 0x98 : Data signal of fcBias
//        bit 31~0 - fcBias[63:32] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_INPUT_R_DATA     0x10
#define CONTROL_BITS_INPUT_R_DATA     64
#define CONTROL_ADDR_OUTPUTCONV_DATA  0x1c
#define CONTROL_BITS_OUTPUTCONV_DATA  64
#define CONTROL_ADDR_WEIGHT_DATA      0x28
#define CONTROL_BITS_WEIGHT_DATA      64
#define CONTROL_ADDR_BIAS_DATA        0x34
#define CONTROL_BITS_BIAS_DATA        64
#define CONTROL_ADDR_OUTPUTPOOL_DATA  0x40
#define CONTROL_BITS_OUTPUTPOOL_DATA  64
#define CONTROL_ADDR_WEIGHT2_DATA     0x4c
#define CONTROL_BITS_WEIGHT2_DATA     64
#define CONTROL_ADDR_BIAS2_DATA       0x58
#define CONTROL_BITS_BIAS2_DATA       64
#define CONTROL_ADDR_OUTPUTCONV2_DATA 0x64
#define CONTROL_BITS_OUTPUTCONV2_DATA 64
#define CONTROL_ADDR_OUTPUTPOOL2_DATA 0x70
#define CONTROL_BITS_OUTPUTPOOL2_DATA 64
#define CONTROL_ADDR_OUTPUTDENSE_DATA 0x7c
#define CONTROL_BITS_OUTPUTDENSE_DATA 64
#define CONTROL_ADDR_FCWEIGHT_DATA    0x88
#define CONTROL_BITS_FCWEIGHT_DATA    64
#define CONTROL_ADDR_FCBIAS_DATA      0x94
#define CONTROL_BITS_FCBIAS_DATA      64

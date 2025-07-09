// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtop.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTop_CfgInitialize(XTop *InstancePtr, XTop_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTop_Start(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTop_IsDone(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTop_IsIdle(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTop_IsReady(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTop_EnableAutoRestart(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTop_DisableAutoRestart(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XTop_Set_input_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUT_V_DATA, Data);
}

u32 XTop_Get_input_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_INPUT_V_DATA);
    return Data;
}

void XTop_Set_outputConv_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTCONV_V_DATA, Data);
}

u32 XTop_Get_outputConv_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTCONV_V_DATA);
    return Data;
}

void XTop_Set_weight_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHT_V_DATA, Data);
}

u32 XTop_Get_weight_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHT_V_DATA);
    return Data;
}

void XTop_Set_bias_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_BIAS_V_DATA, Data);
}

u32 XTop_Get_bias_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_BIAS_V_DATA);
    return Data;
}

void XTop_Set_outputPool_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTPOOL_V_DATA, Data);
}

u32 XTop_Get_outputPool_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTPOOL_V_DATA);
    return Data;
}

void XTop_Set_weight2_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHT2_V_DATA, Data);
}

u32 XTop_Get_weight2_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHT2_V_DATA);
    return Data;
}

void XTop_Set_bias2_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_BIAS2_V_DATA, Data);
}

u32 XTop_Get_bias2_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_BIAS2_V_DATA);
    return Data;
}

void XTop_Set_outputConv2_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTCONV2_V_DATA, Data);
}

u32 XTop_Get_outputConv2_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTCONV2_V_DATA);
    return Data;
}

void XTop_Set_outputPool2_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTPOOL2_V_DATA, Data);
}

u32 XTop_Get_outputPool2_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTPOOL2_V_DATA);
    return Data;
}

void XTop_Set_outputDense_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTDENSE_V_DATA, Data);
}

u32 XTop_Get_outputDense_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_OUTPUTDENSE_V_DATA);
    return Data;
}

void XTop_Set_fcWeight_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FCWEIGHT_V_DATA, Data);
}

u32 XTop_Get_fcWeight_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FCWEIGHT_V_DATA);
    return Data;
}

void XTop_Set_fcBias_V(XTop *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FCBIAS_V_DATA, Data);
}

u32 XTop_Get_fcBias_V(XTop *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_FCBIAS_V_DATA);
    return Data;
}

void XTop_InterruptGlobalEnable(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_GIE, 1);
}

void XTop_InterruptGlobalDisable(XTop *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_GIE, 0);
}

void XTop_InterruptEnable(XTop *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER, Register | Mask);
}

void XTop_InterruptDisable(XTop *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTop_InterruptClear(XTop *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ISR, Mask);
}

u32 XTop_InterruptGetEnabled(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_IER);
}

u32 XTop_InterruptGetStatus(XTop *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_ISR);
}


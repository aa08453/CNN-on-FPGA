#pragma once

#include <iostream>
#include <CL/cl.h>
#include "Layer.h"

class MaxPool : public Layer {
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;

    float* input;
    float* output;
    cl_mem inputBuf, outputBuf;
    
    int C, N, Hin, Win, P;
    int Hout, Wout;

public:
    MaxPool(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
        float* img, 
        int cin, int n, int hin, int win, int p);
    void forward() override;
    float* getOutput() override { return output; };
    size_t getOutputSize() {
        return N * Hout * Wout * C;
    }
    cl_mem getOutputBuffer() { return outputBuf; };
    ~MaxPool();
};
#pragma once

#include <iostream>
#include <CL/cl.h>
#include "Layer.h"

class MaxPool{
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;

    float* input;
    //float* output;
    cl_mem inputBuf, outputBuf;
    
    int stride, padding;

public:
    MaxPool(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
        float* img,
        int cin, int n, int hin, int win, int p, int s, int pad);
    int C, N, Hin, Win, P;
    int Hout, Wout;
    void forward(float out[]);
    //float* getOutput() { return output; };
    size_t getOutputSize() {
        return N * Hout * Wout * C;
    }
    int getHeight() { return Hout; }
    int getWidth() { return Wout; }
    cl_mem getOutputBuffer() { return outputBuf; };
    ~MaxPool();
};
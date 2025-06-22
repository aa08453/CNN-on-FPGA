#pragma once

#include <iostream>
#include <CL/cl.h>
#include "Layer.h"

class ReLU : public Layer {
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;

    float* input;
    float* output;
    cl_mem inputBuf, outputBuf;
    size_t size;

public:
    ReLU(cl_context ctx, cl_command_queue q, cl_program p, float* in, size_t sz);
    void forward() override;
    float* getOutput() override { return output; }
    ~ReLU();
};

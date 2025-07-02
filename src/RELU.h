#pragma once

#include <iostream>
#include <CL/cl.h>
//#include "Layer.h"

class ReLU{
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;

    //float input[28*28*8];
    //float* output[28*28*8];
    cl_mem inputBuf, outputBuf;
    size_t size;

public:
    ReLU(cl_context ctx, cl_command_queue q, cl_program p, float in[], size_t sz);
    void forward(float output[]);
    //float* getOutput(){ return output; }
    ~ReLU();
};

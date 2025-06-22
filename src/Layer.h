#pragma once

#include <iostream>
#include <CL/cl.h>

class Layer {
public:
    virtual void forward() = 0;
    virtual float* getOutput() = 0;
    virtual ~Layer() {}
};
// CNNConvRe.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <iostream>
#include <CL/cl.h>
#include "Layer.h"

class Convolution : public Layer{
	cl_context context;
	cl_command_queue queue;
	cl_program program;
	cl_kernel kernel;

	float* image;
	float* weights;
	float* output;

	cl_mem inputBuf;
	cl_mem weightsBuf;
	cl_mem outputBuf;

	

public:
	int Cin, Cout, N, Hin, Win, K;
	int H_out, W_out;
	Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog, 
		float* img, float* wghts,
		int cin, int cout, int n, int hin, int win, int k);
	void forward() override;
	float* getOutput() override { return output; }
	size_t getOutputSize();
	int getOutputChannels() { return Cout; };
	int getInputChannels() { return Cin; };
	int getHeight() { return H_out; };
	int getWeight() { return W_out; };
	~Convolution();
};

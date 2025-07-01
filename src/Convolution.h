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
	float* bias;

	cl_mem inputBuf;
	cl_mem weightsBuf;
	cl_mem outputBuf;
	cl_mem biasBuf;

	

public:
	int Cin, Cout, N, Hin, Win, K;
	int H_out, W_out;
	int paddedH, paddedW;
	Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog, 
		float* wghts, float* b,
		int cin, int cout, int n, int hin, int win, int k, int pad);
	Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
		float* img, float* wghts, float* b,
		int cin, int cout, int n, int hin, int win, int k, int pad);
	void forward() override;
	float* getOutput() override { return output; }
	size_t getOutputSize();
	int getOutputChannels() { return Cout; };
	int getInputChannels() { return Cin; };
	int getHeight() { return H_out; };
	int getWeight() { return W_out; };
	~Convolution();
};

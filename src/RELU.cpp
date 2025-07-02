#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>

#include "cnpy.h"
#include <chrono>

#include "RELU.h"

using namespace std;
#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }

ReLU::ReLU(cl_context ctx, cl_command_queue q, cl_program p, float in[], size_t sz) :
	context(ctx), queue(q), program(p),
	size(sz) {

	cl_int err;
	//output = new float[size];

	inputBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, size * sizeof(float), in, &err);
	CHECK_CL(err, "clCreateBuffer input");
	outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY, size * sizeof(float), nullptr, &err);
	CHECK_CL(err, "clCreateBuffer output");

	kernel = clCreateKernel(program, "reluKernel", &err);
	CHECK_CL(err, "clCreateKernel relu_kernel");

}

void ReLU::forward(float out[]) {
	cl_int err = 0;

	err |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &inputBuf);
	err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &outputBuf);
	err |= clSetKernelArg(kernel, 2, sizeof(size_t), &size);

	CHECK_CL(err, "clSetKernelArg relu");

	size_t global = size;

	//auto start = std::chrono::high_resolution_clock::now();
	err = clEnqueueNDRangeKernel(queue, kernel, 1, nullptr, &global, nullptr, 0, nullptr, nullptr);
	CHECK_CL(err, "clEnqueueNDRangeKernel relu");

	clFinish(queue);
	/*auto end = std::chrono::high_resolution_clock::now();
	std::chrono::duration<double> elapsed = end - start;
	std::cout << "ReLU layer took " << elapsed.count() << " seconds.\n";*/

	clEnqueueReadBuffer(queue, outputBuf, CL_TRUE, 0, size * sizeof(float), out, 0, nullptr, nullptr);
	CHECK_CL(err, "clEnqueueReadBuffer relu");

}



ReLU::~ReLU() {
	clReleaseMemObject(inputBuf);
	clReleaseMemObject(outputBuf);
	clReleaseKernel(kernel);
	//delete[] output;
}


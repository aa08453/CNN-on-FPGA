#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>

#include "cnpy.h"
#include <chrono>

#include "MaxPool.h"

using namespace std;

#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }


MaxPool::MaxPool(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
    float* img,
    int cin, int n, int hin, int win, int p, int s, int padding)
    : context(ctx), queue(cmdQueue), program(prog),
    input(img), 
    C(cin), N(n), Hin(hin), Win(win), P(p), stride(s), padding(padding) {

    cl_int err;
    kernel = clCreateKernel(program, "maxPoolKernel", &err);
    if (err != CL_SUCCESS) {
        std::cerr << "Failed to create kernel: " << err << std::endl;
        exit(1);
    }
    Hout = (Hin - P) / stride + 1;;
    Wout = (Win - P) / stride + 1;
    //output = new float[N * Hout * Wout * C];

    
    // Create buffers...
    inputBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        N * Hin * Win * C * sizeof(float), img, &err);
    outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
        N * (Hout + 2 * padding) * (Wout + 2 * padding) * C * sizeof(float), nullptr, &err);
}

void MaxPool::forward(float out[]) {

    cl_int err = 0;


    // Set kernel arguments
    err |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &inputBuf);
    err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &outputBuf);
    err |= clSetKernelArg(kernel, 2, sizeof(int), &N);
    err |= clSetKernelArg(kernel, 3, sizeof(int), &Hin);
    err |= clSetKernelArg(kernel, 4, sizeof(int), &Win);
    err |= clSetKernelArg(kernel, 5, sizeof(int), &C);
    err |= clSetKernelArg(kernel, 6, sizeof(int), &P);
    err |= clSetKernelArg(kernel, 7, sizeof(int), &stride);
    err |= clSetKernelArg(kernel, 8, sizeof(int), &padding);
    CHECK_CL(err, "clSetKernelArg pool");

    size_t global[3] = { (size_t)N, (size_t)(Hout * Wout), (size_t)C };

    //auto start = chrono::high_resolution_clock::now();
    err = clEnqueueNDRangeKernel(queue, kernel, 3, nullptr, global, nullptr, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueNDRangeKernel");
    clFinish(queue);
    /*auto end = chrono::high_resolution_clock::now();

    chrono::duration<double> elapsed = end - start;
    cout << "max pool took: " << elapsed.count() << " seconds.\n";*/

    clEnqueueReadBuffer(queue, outputBuf, CL_TRUE, 0,
        N * (Hout+ 2 * padding) * (Wout+ 2 * padding) * C * sizeof(float), out, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueReadBuffer");
}

MaxPool::~MaxPool() {
    clReleaseMemObject(inputBuf);
    clReleaseMemObject(outputBuf);
    clReleaseKernel(kernel);

    //delete[] output;
}
// CNNConvOpenCL.cpp
#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>

#include "cnpy.h"
#include <chrono>


#include "Convolution.h"

using namespace std;
#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }


Convolution::Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog, 
    float* img, float* wghts,
    int cin, int cout, int n, int hin, int win, int k) 
    : context(ctx), queue(cmdQueue), program(prog),
    image(img), weights(wghts),
    Cin(cin), Cout(cout), N(n), Hin(hin), Win(win), K(k) {

    // Compile and create the kernel
    cl_int err;
    kernel = clCreateKernel(program, "conv1d_kernel", &err);
    if (err != CL_SUCCESS) {
        std::cerr << "Failed to create kernel: " << err << std::endl;
        exit(1);
    }
    H_out = Hin;
    W_out = Win;
    output = new float[N * H_out * W_out * Cout];


    // Create buffers...
    inputBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        N * Hin * Win * Cin * sizeof(float), image, &err);
    weightsBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        K * K * Cin * Cout * sizeof(float), weights, &err);
    outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
        N * H_out * W_out * Cout * sizeof(float), nullptr, &err);
}

void Convolution::forward() {

    cl_int err =0;


        // Set kernel arguments
    err |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &inputBuf);
    err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &weightsBuf);
    err |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &outputBuf);
    err |= clSetKernelArg(kernel, 3, sizeof(int), &N);
    err |= clSetKernelArg(kernel, 4, sizeof(int), &Hin);
    err |= clSetKernelArg(kernel, 5, sizeof(int), &Win);
    err |= clSetKernelArg(kernel, 6, sizeof(int), &Cin);
    err |= clSetKernelArg(kernel, 7, sizeof(int), &K);
    err |= clSetKernelArg(kernel, 8, sizeof(int), &Cout);
    err |= clSetKernelArg(kernel, 9, sizeof(int), &H_out);
    err |= clSetKernelArg(kernel, 10, sizeof(int), &W_out);
    CHECK_CL(err, "clSetKernelArg conv");

        size_t global[3] = { (size_t)N, (size_t)(H_out * W_out), (size_t)Cout };

    auto start = chrono::high_resolution_clock::now();
    err = clEnqueueNDRangeKernel(queue, kernel, 3, nullptr, global, nullptr, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueNDRangeKernel");
        clFinish(queue);
    auto end = chrono::high_resolution_clock::now();

    chrono::duration<double> elapsed = end - start;
    cout << "cl conv took: " << elapsed.count() << " seconds.\n";

    clEnqueueReadBuffer(queue, outputBuf, CL_TRUE, 0,
        N * H_out * W_out * Cout * sizeof(float), output, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueReadBuffer");


}

size_t Convolution::getOutputSize() {
    return N * H_out * W_out * Cout;
}

Convolution::~Convolution() {
    clReleaseMemObject(inputBuf);
    clReleaseMemObject(weightsBuf);
    clReleaseMemObject(outputBuf);
    clReleaseKernel(kernel);
    
    delete[] output;
}




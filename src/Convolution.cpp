// CNNConvOpenCL.cpp
#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>

#include "cnpy.h"
#include <chrono>


#include "Convolution.h"

#define USE_MNIST_LOADER
#define MNIST_STATIC
//#define MNIST_HDR_ONLY

#include "mnist.h"

using namespace std;
#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }



Convolution::Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
    float* wghts, float* b,
    int cin, int cout, int n, int hin, int win, int k, int padding)
    : context(ctx), queue(cmdQueue), program(prog),
    weights(wghts), bias(b),
    Cin(cin), Cout(cout), N(n), Hin(hin), Win(win), K(k) {


    mnist_data* mnist;
    unsigned int count;

    int status = mnist_load("../../../data/train-images.idx3-ubyte", "../../../data/train-labels.idx1-ubyte", &mnist, &count);
    if (status != 0) {
        cerr << "Failed to load MNIST data: " << status << endl;
    }

    if (N != count) {
        cerr << "Not all images loaded." << endl;
    }

    paddedH = Hin + 2 * padding;
    paddedW = Win + 2 * padding;
    int size = N * paddedH * paddedW * Cin;

    float* Z2 = new float[size];
    std::fill(Z2, Z2 + size, 0.0f); // initialize all to 0

    for (int n = 0; n < N; ++n) {
        for (int h = 0; h < Hin; ++h) {
            for (int w = 0; w < Win; ++w) {
                for (int c = 0; c < Cin; ++c) {
                    int padded_idx = n * paddedH * paddedW * Cin +
                        c * paddedH * paddedW +
                        (h + padding) * paddedW +
                        (w+padding);
#ifdef MNIST_DOUBLE
                    Z2[padded_idx] = static_cast<float>(mnist[n].data[h][w]);
#else
                    Z2[padded_idx] = mnist[n].data[h][w] / 255.0f;
#endif
                    
                }
            }
        }
    }
    
    image = Z2;


    int inputSize = N * Hin * Win * Cin;
    int paddedInputSize = size;
    
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
        paddedInputSize * sizeof(float), image, &err);
    weightsBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        K * K * Cin * Cout * sizeof(float), weights, &err);
    outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
        N * H_out * W_out * Cout * sizeof(float), nullptr, &err);
    biasBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        Cout * sizeof(float), bias, &err);


}

Convolution::Convolution(cl_context ctx, cl_command_queue cmdQueue, cl_program prog,
    float* img, float* wghts, float* b,
    int cin, int cout, int n, int hin, int win, int k, int padding)
    : context(ctx), queue(cmdQueue), program(prog),
    weights(wghts), bias(b),
    Cin(cin), Cout(cout), N(n), Hin(hin), Win(win), K(k) {

    paddedH = Hin + 2 * padding;
    paddedW = Win + 2 * padding;
    int size = N * paddedH * paddedW * Cin;

    float* Z2 = new float[size];
    std::fill(Z2, Z2 + size, 0.0f); // init 0

    for (int n = 0; n < N; ++n) {
        for (int h = 0; h < Hin; ++h) {
            for (int w = 0; w < Win; ++w) {
                for (int c = 0; c < Cin; ++c) {
                    int input_idx = n * Hin * Win * Cin + c * Win * Hin + h * Win + w;
                    int padded_idx = n * paddedH * paddedW * Cin +
                        c * paddedW * paddedH +
                        (h + padding) * paddedW +
                        (w + padding);

                    Z2[padded_idx] = img[input_idx]; 
                }
            }
        }
    }
    
    image = Z2;

    int inputSize = N * Hin * Win * Cin;
    int paddedInputSize = size;

    // Compile and create the kernel
    cl_int err;
    kernel = clCreateKernel(program, "conv1d_kernel", &err);
    if (err != CL_SUCCESS) {
        std::cerr << "Failed to create kernel: " << err << std::endl;
        exit(1);
    }

    H_out = Hin;
    W_out = Win;
    /*H_out = Hin - K + 1;
    W_out = Win - K + 1;*/

    output = new float[N * H_out * W_out * Cout];


    // Create buffers...
    inputBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        paddedInputSize * sizeof(float), image, &err);
    weightsBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        K * K * Cin * Cout * sizeof(float), weights, &err);
    outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
        N * H_out * W_out * Cout * sizeof(float), nullptr, &err);
    biasBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        Cout * sizeof(float), bias, &err);

}

void Convolution::forward() {

    cl_int err =0;


        // Set kernel arguments
    err |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &inputBuf);
    err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &weightsBuf);
    err |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &outputBuf);
    err |= clSetKernelArg(kernel, 3, sizeof(cl_mem), &biasBuf);
    err |= clSetKernelArg(kernel, 4, sizeof(int), &N);
    err |= clSetKernelArg(kernel, 5, sizeof(int), &paddedH);
    err |= clSetKernelArg(kernel, 6, sizeof(int), &paddedW);
    err |= clSetKernelArg(kernel, 7, sizeof(int), &Cin);
    err |= clSetKernelArg(kernel, 8, sizeof(int), &K);
    err |= clSetKernelArg(kernel, 9, sizeof(int), &Cout);
    err |= clSetKernelArg(kernel, 10, sizeof(int), &H_out);
    err |= clSetKernelArg(kernel, 11, sizeof(int), &W_out);
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
    
    delete[] image;
    delete[] output;
}




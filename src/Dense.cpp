#include "Dense.h"
#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { std::cerr << msg << ": " << err << std::endl; exit(1); }


DenseLayer::DenseLayer(cl_context ctx, cl_command_queue q, cl_program prog,
	float input[],
    int inpFeat, int numCl) : context(ctx), queue(q), program(prog),
inputFeatures(inpFeat), numClasses(numCl) {

    // load weights
    auto W_array2 = cnpy::npy_load("../../../src/fc1_weight.npy");
    float* weight = W_array2.data<float>();

    // load biases
    auto B_array = cnpy::npy_load("../../../src/fc1_bias.npy");
    float* bias = B_array.data<float>();

    cl_int err;
    kernel = clCreateKernel(program, "denseKernel", &err);
    if (err != CL_SUCCESS) {
        std::cerr << "Failed to create kernel: " << err << std::endl;
        exit(1);
    }

    inputBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        inputFeatures * sizeof(float), input, &err);
    weightsBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        inputFeatures*numClasses * sizeof(float), weight, &err);
    biasBuf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
        numClasses * sizeof(float), bias, &err);
    outputBuf = clCreateBuffer(context, CL_MEM_WRITE_ONLY,
        numClasses * sizeof(float), nullptr, &err);
    
}

void DenseLayer::forward(float out[]) {
    cl_int err = 0;

    // Set kernel arguments
    err |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &inputBuf);
    err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &weightsBuf);
    err |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &biasBuf);
    err |= clSetKernelArg(kernel, 3, sizeof(cl_mem), &outputBuf);
    err |= clSetKernelArg(kernel, 4, sizeof(int), &inputFeatures);
    err |= clSetKernelArg(kernel, 5, sizeof(int), &numClasses);
    CHECK_CL(err, "clSetKernelArg dense");

    size_t global[1] = { (size_t)10 };

    err = clEnqueueNDRangeKernel(queue, kernel, 1, nullptr, global, nullptr, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueNDRangeKernel");
    clFinish(queue);
    

    clEnqueueReadBuffer(queue, outputBuf, CL_TRUE, 0,
        inputFeatures*numClasses * sizeof(float), out, 0, nullptr, nullptr);
    CHECK_CL(err, "clEnqueueReadBuffer");


}

DenseLayer::~DenseLayer() {
    clReleaseMemObject(inputBuf);
    clReleaseMemObject(biasBuf);
    clReleaseMemObject(weightsBuf);
    clReleaseMemObject(outputBuf);
    clReleaseKernel(kernel);
}
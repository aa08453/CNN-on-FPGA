#include <iostream>
#include <chrono>
#include<cmath>
#include "Convolution.h"
#include "RELU.h"
#include "MaxPool.h"
#include <CL/cl.h>
#include "cnpy.h"
#include <fstream>

#include "LayerDense.h"
#include "ReluActivation.h"
#include "SoftMaxActivation.h"

#include <Eigen/Dense>
using namespace Eigen;

using namespace std;

#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }

int main() {
    cout << "at start" << endl;


    // Load data
    auto Z_array = cnpy::npy_load("input_image.npy");
    auto W_array = cnpy::npy_load("weights.npy");
    auto expected_array = cnpy::npy_load("expected_output.npy");

    float* Z2 = Z_array.data<float>();
    float* weight2 = W_array.data<float>();
    float* expected = expected_array.data<float>();

    vector<size_t> inpShape = Z_array.shape;
    vector<size_t> weightShape = W_array.shape;

    int N = inpShape[0], H = inpShape[1], W_in = inpShape[2], C_in = inpShape[3];
    int K = weightShape[0], C_out = weightShape[3];
    int H_out = H - K + 1;
    int W_out = W_in - K + 1;

    size_t Z_size = N * H * W_in * C_in;
    size_t W_size = K * K * C_in * C_out;
    size_t outSize = N * H_out * W_out * C_out;


    cout << "starting opencl testing" << endl;

    // Load kernel
    ifstream kernelFile("conv.cl");
    if (!kernelFile.is_open()) {
        cerr << "Failed to open conv.cl\n";
        return 1;
    }

    string src((istreambuf_iterator<char>(kernelFile)), istreambuf_iterator<char>());
    const char* src_str = src.c_str();

    cl_int err;
    cl_platform_id platform;
    cl_device_id device;
    cl_context context;
    cl_command_queue queue;
    cl_program program;
    cl_kernel kernel;

    err = clGetPlatformIDs(1, &platform, nullptr);
    CHECK_CL(err, "clGetPlatformIDs")
        err = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, nullptr);
    CHECK_CL(err, "clGetDeviceIDs")

        context = clCreateContext(nullptr, 1, &device, nullptr, nullptr, &err);
    CHECK_CL(err, "clCreateContext")

        queue = clCreateCommandQueue(context, device, 0, &err);
    CHECK_CL(err, "clCreateCommandQueue")

        program = clCreateProgramWithSource(context, 1, &src_str, nullptr, &err);
    CHECK_CL(err, "clCreateProgramWithSource")

        err = clBuildProgram(program, 1, &device, nullptr, nullptr, nullptr);
    if (err != CL_SUCCESS) {
        size_t log_size;
        clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, 0, nullptr, &log_size);
        vector<char> log(log_size);
        clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, log_size, log.data(), nullptr);
        cerr << "Build log:\n" << log.data() << endl;
        exit(1);
    }



    Convolution* conv = new Convolution(context, queue, program, Z2, weight2,
        C_in, C_out, N, H, W_in, K);
    conv->forward();


    bool match = true;
    float* convOutput = conv->getOutput();
    for (size_t i = 0; i < outSize; ++i) {
        if (fabs(convOutput[i] - expected[i]) > 1e-3f) {
            cout << "Mismatch at " << i << ": " << convOutput[i] << " != " << expected[i] << endl;
            match = false;
            break;
        }
    }
    if (match) cout << "convolution matches expected output\n";
    else cout << "convolution does NOT match expected output\n";

    ReLU* relu = new ReLU(context, queue, program, conv->getOutput(), conv->getOutputSize());
    relu->forward();

    MaxPool* pool = new MaxPool(context, queue, program, relu->getOutput(), conv->Cout, N, conv->H_out, conv->W_out, 3);
    pool->forward();
    

    Eigen::Map<Eigen::Matrix<float, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>> poolOutput(pool->getOutput(), N, pool->getOutputSize() / N);
    std::cout << poolOutput.rows() << " " << poolOutput.cols() << std::endl;

    int numClasses = 10;

    LayerDense* dense = new LayerDense(pool->getOutputSize()/N, numClasses);
    dense->forward(poolOutput);

    ReluActivation* relu2 = new ReluActivation();
    relu2->forward(dense->getOutput());

    SoftMaxActivation* soft = new SoftMaxActivation();
    soft->forward(relu2->getOutput());

    std::cout << soft->getOutput() << std::endl;


    delete conv;
    delete relu;
    delete pool;

    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);



    return 0;
}
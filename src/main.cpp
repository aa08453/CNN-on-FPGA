#include <iostream>
#include <chrono>
#include<cmath>
#include "Convolution.h"
#include "RELU.h"
#include "MaxPool.h"
#include <CL/cl.h>
#include "cnpy.h"
#include <fstream>

#include <filesystem>

#include "LayerDense.h"
#include "ReluActivation.h"
#include "SoftMaxActivation.h"

#define USE_MNIST_LOADER
#define MNIST_STATIC
//#define MNIST_HDR_ONLY

#include "mnist.h"

#include <Eigen/Dense>
using namespace Eigen;

using namespace std;

#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }

int main() {
    cout << "at start" << endl;
    mnist_data* mnist;
    unsigned int count;


    std::cout << "Current path: " << std::filesystem::current_path() << std::endl;


    ifstream test1("../../../data/train-images.idx3-ubyte", ios::binary);
    ifstream test2("../../../data/train-labels.idx1-ubyte", ios::binary);
    cout << "Image file exists? " << test1.is_open() << endl;
    cout << "Label file exists? " << test2.is_open() << endl;


    int status = mnist_load("../../../data/train-images.idx3-ubyte", "../../../data/train-labels.idx1-ubyte", &mnist, &count);
    if (status != 0) {
        cerr << "Failed to load MNIST data: " << status << endl;
        return 1;
    }

    int N = count;
    int H = 28, W_in = 28, C_in = 1; 

    int K = 3;

    float* Z2 = new float[N * H * W_in * C_in];
    for (int i = 0; i < N; ++i) {
        for (int r = 0; r < H; ++r) {
            for (int c = 0; c < W_in; ++c) {
#ifdef MNIST_DOUBLE
                Z2[i * H * W_in + r * W_in + c] = static_cast<float>(mnist[i].data[r][c]);
#else
                Z2[i * H * W_in + r * W_in + c] = mnist[i].data[r][c] / 255.0f;
#endif
            }
        }
    }

    auto W_array = cnpy::npy_load("../../../src/weights.npy");
    float* weight2 = W_array.data<float>();
   
    vector<size_t> weightShape = W_array.shape;

   
    int C_out = weightShape[3];
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

    //std::cout << soft->getOutput() << std::endl;


    delete conv;
    delete relu;
    delete pool;
    delete dense;
    delete relu2;
    delete soft;

    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);



    return 0;
}
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




    int status = mnist_load("../../../data/train-images.idx3-ubyte", "../../../data/train-labels.idx1-ubyte", &mnist, &count);
    if (status != 0) {
        cerr << "Failed to load MNIST data: " << status << endl;
        return 1;
    }

    int N = count;
    int H = 28, W_in = 28, C_in = 1;

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

    auto W_array = cnpy::npy_load("../../../src/reorderedWeights1.npy");
    float* weight = W_array.data<float>();
   
    vector<size_t> weightShape = W_array.shape;

   
    int C_out = weightShape[3];
    std::cout << "weight shape: " << "(" << weightShape[0] << ", " << weightShape[1] << ", " << weightShape[2] << ", " << weightShape[3] << ")" << std::endl;

    int K = weightShape[0];       // kernel height
    int H_out = H - K + 1;
    int W_out = W_in - K + 1;/*

    size_t Z_size = N * H * W_in * C_in;
    size_t W_size = K * K * C_in * C_out;
    size_t outSize = N * H_out * W_out * C_out;*/


    //cout << "starting opencl testing" << endl;

    auto W_array2 = cnpy::npy_load("../../../src/reorderedWeights2.npy");
    float* weight2 = W_array2.data<float>();

    vector<size_t> weightShape2 = W_array2.shape;
    std::cout << "weight2 shape: " << "(" << weightShape2[0] << ", " << weightShape2[1] << ", " << weightShape2[2] << ", " << weightShape2[3] << ")" << std::endl;



    // Load kernel
    ifstream kernelFile("../../../src/conv.cl");
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



    Convolution* conv = new Convolution(context, queue, program, Z2, weight,
        C_in, C_out, N, H, W_in, K);
    conv->forward();
    std::cout << "Output shape: " << conv->N << ", " << conv->H_out << ", " << conv->W_out << ", " << conv->Cout << std::endl;



    ReLU* relu = new ReLU(context, queue, program, conv->getOutput(), conv->getOutputSize());
    relu->forward();
    /*std::cout << "Output shape: " << relu->N << ", " << relu->Hout << ", " << conv->Wout << ", " << relu->Cout << std::endl;*/


    MaxPool* pool = new MaxPool(context, queue, program, relu->getOutput(), conv->Cout, N, conv->H_out, conv->W_out, 2, 2);
    pool->forward();
    std::cout << "Output shape: " << pool->N << ", " << pool->Hout << ", " << pool->Wout << ", " << pool->C << std::endl;


    Convolution* conv2 = new Convolution(context, queue, program, pool->getOutput(), weight2,
        conv->Cout, 16, N, pool->getHeight(), pool->getWidth(), K);
    conv->forward();
    std::cout << "Output shape: " << conv2->N << ", " << conv2->H_out << ", " << conv2->W_out << ", " << conv2->Cout << std::endl;


    ReLU* relu2 = new ReLU(context, queue, program, conv2->getOutput(), conv2->getOutputSize());
    relu2->forward();

    MaxPool* pool2 = new MaxPool(context, queue, program, relu2->getOutput(), conv2->Cout, N, conv2->H_out, conv2->W_out, 2, 2);
    pool2->forward();
    std::cout << "Output shape: " << pool2->N << ", " << pool2->Hout << ", " << pool2->Wout << ", " << pool2->C << std::endl;

    //

    Eigen::Map<Eigen::Matrix<float, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>> poolOutput(pool2->getOutput(), N, pool2->Hout * pool2->Wout * pool2->C);
    /*std::cout << poolOutput.rows() << " " << poolOutput.cols() << std::endl;*/

    int numClasses = 10;

    LayerDense* dense = new LayerDense(pool2->getOutputSize()/N, numClasses);
    dense->forward(poolOutput);

    ReluActivation* relu3 = new ReluActivation();
    relu3->forward(dense->getOutput());

    SoftMaxActivation* soft = new SoftMaxActivation();
    soft->forward(relu3->getOutput());

    std::cout << soft->getOutput().topRows(10) << std::endl;


    delete conv;
    delete relu;
    delete pool;
    delete conv2;
    delete relu2;
    delete dense;
    delete relu3;
    delete soft;

    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);



    return 0;
}
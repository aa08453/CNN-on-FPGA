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
    cout << "Start" << endl;

    // load conv1 weights
    auto W_array = cnpy::npy_load("../../../src/conv1_weight.npy");
    float* weight = W_array.data<float>();

    // load conv1 bias
    auto B_array = cnpy::npy_load("../../../src/conv1_bias.npy");
    float* bias = B_array.data<float>();

    // load conv2 bias
    auto B2_array = cnpy::npy_load("../../../src/conv2_bias.npy");
    float* bias2 = B2_array.data<float>();
    
    // load conv2 weights
    auto W_array2 = cnpy::npy_load("../../../src/conv2_weight.npy");
    float* weight2 = W_array2.data<float>();
    std::cout << "Weight 1: " << weight2[0] << ", " << weight2[1] << ", ..., " << weight2[10] << std::endl;




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

    // set up cl env // - shared by all layers
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

    // kernel params
    int K = 3;       

    // input params
    int N = 60000;
    int H = 28, W_in = 28, C_in = 1;
    
    // output params -- conv1
    int C_out = 8;
    int H_out = H - K + 1;
    int W_out = W_in - K + 1;

    // forward pass
    // [60000, 1, 28, 28]
    Convolution* conv = new Convolution(context, queue, program, weight, bias,
        C_in, C_out, N, H, W_in, K, 1);
    conv->forward();
    std::cout << "Output shape: " << conv->N << ", " << conv->H_out << ", " << conv->W_out << ", " << conv->Cout << std::endl;
    // [60000, 8, 28, 28]

    ReLU* relu = new ReLU(context, queue, program, conv->getOutput(), conv->getOutputSize());
    relu->forward();
    // [60000, 8, 28, 28]
   
    MaxPool* pool = new MaxPool(context, queue, program, relu->getOutput(), conv->Cout, N, conv->H_out, conv->W_out, 2, 2);
    pool->forward(); 
    std::cout << "Output shape: " << pool->N << ", " << pool->Hout << ", " << pool->Wout << ", " << pool->C << std::endl;
    // [60000, 8, 14, 14]

    Convolution* conv2 = new Convolution(context, queue, program, pool->getOutput(), weight2, bias2,
        8, 16, N, pool->getHeight(), pool->getWidth(), K, 1);
    conv2->forward();
    std::cout << "Output shape: " << conv2->N << ", " << conv2->H_out << ", " << conv2->W_out << ", " << conv2->Cout << std::endl;
    // [60000, 16, 14, 14]

    ReLU* relu2 = new ReLU(context, queue, program, conv2->getOutput(), conv2->getOutputSize());
    relu2->forward();
    // [60000, 16, 14, 14]
 
    MaxPool* pool2 = new MaxPool(context, queue, program, relu2->getOutput(), conv2->Cout, N, conv2->H_out, conv2->W_out, 2, 2);
    pool2->forward();
    std::cout << "Output shape: " << pool2->N << ", " << pool2->Hout << ", " << pool2->Wout << ", " << pool2->C << std::endl;
    // [60000, 16, 7, 7]

    // converting to eigen
    Eigen::Map<Eigen::Matrix<float, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>> poolOutput(pool2->getOutput(), N, pool2->C * pool2->Hout * pool2->Wout);

    // fc layer
    int numClasses = 10;
    LayerDense* dense = new LayerDense(pool2->getOutputSize()/N, numClasses);
    dense->forward(poolOutput);

    // check accuracy
    int correct = 0;
    Eigen::MatrixXf predictions = dense->getOutput();
    mnist_data* mnist;
    unsigned int count;

    int status = mnist_load("../../../data/train-images.idx3-ubyte", "../../../data/train-labels.idx1-ubyte", &mnist, &count);
    if (status != 0) {
        cerr << "Failed to load MNIST data: " << status << endl;
    }
    for (int i = 0; i < N; ++i) {
        int predictedLabel = -1;
        predictions.row(i).maxCoeff(&predictedLabel); // Get index of max prob
        int trueLabel = mnist[i].label;
        if (predictedLabel == trueLabel) {
            correct++;
        }
    }

    float accuracy = static_cast<float>(correct) / N;
    std::cout << "Accuracy: " << accuracy * 100.0f << "%" << std::endl;


    // release mem
    delete conv;
    delete relu;
    delete pool;
    delete conv2;
    delete relu2;
    delete dense;

    // release cl_mem
    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);



    return 0;
}
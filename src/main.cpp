#include <iostream>
#include <chrono>
#include<cmath>
#include "Convolution.h"
#include "RELU.h"
#include "MaxPool.h"
#include "Dense.h"
#include <CL/cl.h>
#include "cnpy.h"
#include <fstream>

#include <filesystem>

//#include "LayerDense.h"
//#include "ReluActivation.h"
//#include "SoftMaxActivation.h"

#define USE_MNIST_LOADER
#define MNIST_STATIC
//#define MNIST_HDR_ONLY

#include "mnist.h"

#include <Eigen/Dense>
using namespace Eigen;

using namespace std;

//// creation of output buffer
//int outputSize = 28 * 28 * 8;
//static float input_padded[30 * 30 * 1] = { 0 };
float output[28 * 28 * 8] = { 0 };
int outputSize = 28 * 28 * 8;


#define CHECK_CL(err, msg) if (err != CL_SUCCESS) { cerr << msg << ": " << err << endl; exit(1); }

int main() {
    cout << "Start" << endl;
    

    // load conv1 weights
    auto W_array = cnpy::npy_load("../../../src/conv1_weight.npy");
    float * weight = W_array.data<float>();

    // load conv1 bias
    auto B_array = cnpy::npy_load("../../../src/conv1_bias.npy");
    float* bias = B_array.data<float>();
    
    // load conv2 bias
    auto B2_array = cnpy::npy_load("../../../src/conv2_bias.npy");
    float* bias2 = B2_array.data<float>();

    // load conv2 weights
    auto W_array2 = cnpy::npy_load("../../../src/conv2_weight.npy");
    float* weight2 = W_array2.data<float>();


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
    
    
    mnist_data* mnist;
    unsigned int count;
    int status = mnist_load("../../../data/train-images.idx3-ubyte", "../../../data/train-labels.idx1-ubyte", &mnist, &count);
    if (status != 0) {
        cerr << "Failed to load MNIST data: " << status << endl;
    }

    if (N != count) {
        cerr << "Not all images loaded." << endl;
    }


    int inputSize = 30*30*8;

    
    
    
    
    int correct = 0;

    int padding = 1, paddedH = 30, paddedW = 30;

    // create padded out through pool????
    
    for (int n = 0; n < N; ++n) {
        std::fill(output, output + (28 * 28 * 8), 0.0f);

        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W_in; ++w) {
                for (int c = 0; c < C_in; ++c) {
                    int idx = c * paddedH * paddedW +
                        (h + padding) * paddedW +
                        (w + padding);
                        #ifdef MNIST_DOUBLE
                                           output[idx] = static_cast<float>(mnist[n].data[h][w]);
                        #else
                                            output[idx] = mnist[n].data[h][w] / 255.0f;
                        #endif

                }
            }
        }
        /*for (int i = 0; i < 30; i++) {
            for (int j = 0; j < 30; j++) {
                if (output[i * 30 + j] > 0) cout << "#";
                else cout << ".";
            } cout << endl;
        }*/
        
        {
            Convolution conv(context, queue, program, output, 1, weight, bias, C_in, C_out, 1, H, W_in, K, 1);
            conv.forward(output);
            /*for (int i = 0; i < 28; i++) {
                for (int j = 0; j < 28; j++) {
                    if (output[i * 28 + j] > 0) std::cout << "#";
                    else cout << ".";
                } cout << endl;
            }
            std::cout << "did conv" << std::endl;*/

            ReLU relu(context, queue, program, output, outputSize);

            relu.forward(output);

            MaxPool pool(context, queue, program, output, 8, 1, 28, 28, 2, 2, 1);
            std::fill(output, output + (28 * 28 * 8), 0.0f);
            pool.forward(output);

            Convolution conv2(context, queue, program, output, 2, weight2, bias2, 8, 16, 1, 14, 14, K, 1);
            std::fill(output, output + (28 * 28 * 8), 0.0f);
            conv2.forward(output);

            ReLU relu2(context, queue, program, output, 14 * 14 * 16);
            relu2.forward(output);

            MaxPool pool2(context, queue, program, output, 16, 1, 14, 14, 2, 2, 0);
            pool2.forward(output);


            DenseLayer dense(context, queue, program, output, 784, 10);
            dense.forward(output);
            
            

        }

        // compare with label
        int predictedLabel = -1;
        int max = -FLT_MAX;
        for (int col = 0; col < 10; col++) {
            if (output[col] >max) {
                max = output[col];
                predictedLabel = col;
            }
        }
        
        int trueLabel = mnist[n].label;
        if (predictedLabel == trueLabel) {
            correct++;
        } std::cout << "correct: " << correct << std::endl;
        }

    float accuracy = static_cast<float>(correct) / N;
    std::cout << "Accuracy: " << accuracy * 100.0f << "%" << std::endl;

    

    // release cl_mem
    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);



    return 0;
}
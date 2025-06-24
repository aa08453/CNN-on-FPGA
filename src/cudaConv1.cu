
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <iostream>
#include "cnpy.h"
#include <vector>
#include <cmath>

#include <chrono>

using namespace std;

__global__ void conv2dKernel(
    const float* input,
    const float* weights,
    float* output,
    int N, int H, int W_in, int C_in,
    int K, int C_out, int H_out, int W_out)
{
    int n = blockIdx.z / ((C_out + 3) / 4);
    int co = (blockIdx.z % ((C_out + 3) / 4)) * blockDim.z + threadIdx.z;
    int h = blockIdx.y * blockDim.y + threadIdx.y;
    int w = blockIdx.x * blockDim.x + threadIdx.x;

    if (n < N && h < H_out && w < W_out && co < C_out) {
        float sum = 0.0f;
        for (int kh = 0; kh < K; ++kh)
            for (int kw = 0; kw < K; ++kw)
                for (int ci = 0; ci < C_in; ++ci) {
                    int in_h = h + kh;
                    int in_w = w + kw;
                    int inputIdx = ((n * H + in_h) * W_in + in_w) * C_in + ci;
                    int weightIdx = ((kh * K + kw) * C_in + ci) * C_out + co;
                    sum += input[inputIdx] * weights[weightIdx];
                }
        int outIdx = ((n * H_out + h) * W_out + w) * C_out + co;
        output[outIdx] = sum;
    }
}

bool compare2(const float* output, const float* expected, size_t outSize, float eps = 1e-3f) {
    for (size_t n = 0; n < outSize; ++n) {
        float diff = fabs(output[n] - expected[n]);
        if (diff > eps)
        {
            cout << "Mismatch" << endl;
            return false;
        }
    }
    return true;
}

int main() {
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


    cout << "starting cuda testing" << endl;
    float* d_input, * d_weight, * d_output;
    size_t inputSize = N * H * W_in * C_in * sizeof(float);
    size_t weightSize = K * K * C_in * C_out * sizeof(float);
    size_t outputSize = N * H_out * W_out * C_out * sizeof(float);

    // Allocate GPU memory
    cudaMalloc(&d_input, inputSize);
    cudaMalloc(&d_weight, weightSize);
    cudaMalloc(&d_output, outputSize);

    // Copy data to GPU
    cudaMemcpy(d_input, Z2, inputSize, cudaMemcpyHostToDevice);
    cudaMemcpy(d_weight, weight2, weightSize, cudaMemcpyHostToDevice);

    // Launch kernel
    dim3 blockDim(16, 16);
    dim3 gridDim((W_out + 15) / 16, (H_out + 15) / 16, N);

    auto start_cuda = std::chrono::high_resolution_clock::now();
    conv2dKernel << <gridDim, blockDim >> > (
        d_input, d_weight, d_output,
        N, H, W_in, C_in,
        K, C_out,
        H_out, W_out
        );
    cudaDeviceSynchronize();
    auto end_cuda = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed_cuda = end_cuda - start_cuda;
    std::cout << "CUDA convolution took " << elapsed_cuda.count() << " seconds.\n";

    // Copy back result
    std::vector<float> cuda_output(N * H_out * W_out * C_out);
    cudaMemcpy(cuda_output.data(), d_output, outputSize, cudaMemcpyDeviceToHost);

    // Compare
    if (compare2(cuda_output.data(), expected_array.data<float>(), N * H_out * W_out * C_out))
        cout << "CUDA output matches expected NumPy result!\n";
    else
        cout << "CUDA output does not match.\n";

    // Cleanup
    cudaFree(d_input);
    cudaFree(d_weight);
    cudaFree(d_output);

}
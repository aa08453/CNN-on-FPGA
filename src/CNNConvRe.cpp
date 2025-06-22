// CNNConv.cpp : Defines the entry point for the application.
//

#include <iostream>
#include "CNNConvRe.h"
#include <vector>
#include <cmath>
#include "cnpy.h"
#include <chrono>




using namespace std;

using Tensor4D = vector<vector<vector<vector<float>>>>;

Tensor4D reshape(const float* data, const vector<size_t>& shape)
{
    // 1d -> 4d
    size_t N = shape[0], H = shape[1], W = shape[2], C = shape[3];
    Tensor4D tensor(N, vector<vector<vector<float>>>(H, vector<vector<float>>(W, vector<float>(C))));

    size_t idx = 0;
    for (size_t n = 0; n < N; ++n)
        for (size_t h = 0; h < H; ++h)
            for (size_t w = 0; w < W; ++w)
                for (size_t c = 0; c < C; ++c, ++idx)
                    tensor[n][h][w][c] = data[idx];
    return tensor;
}

Tensor4D conv(const Tensor4D& Z, const Tensor4D& W)
{

    const int N = Z.size();
    const int H = Z[0].size(), W_in = Z[0][0].size(), C_in = Z[0][0][0].size();
    const int K = W.size(), C_out = W[0][0][0].size();
    const int H_out = H - K + 1, W_out = W_in - K + 1;

    Tensor4D out(N, vector<vector<vector<float>>>(
        H_out, vector<vector<float>>(
            W_out, vector<float>(C_out, 0.0f))));

    for (int n = 0; n < N; ++n)
        for (int h = 0; h < H_out; ++h)
            for (int w = 0; w < W_out; ++w)
                for (int co = 0; co < C_out; ++co)
                    for (int kh = 0; kh < K; ++kh)
                        for (int kw = 0; kw < K; ++kw)
                        {
                            const auto& input_row = Z[n][h + kh][w + kw];
                            const auto& kernel_row = W[kh][kw];
                            for (int ci = 0; ci < C_in; ++ci)
                                out[n][h][w][co] += input_row[ci] * kernel_row[ci][co];
                        }

    return out;
}

void conv1D(
    const float* Z_data,              
    const float* W_data,              
    float* out_data,                  
    int N, int H, int W_in, int C_in, 
    int K, int C_out                  
)
{
    
    const int H_out = H - K + 1;
    const int W_out = W_in - K + 1;

    for (int n = 0; n < N; ++n)
        for (int h = 0; h < H_out; ++h)
            for (int w = 0; w < W_out; ++w)
                for (int co = 0; co < C_out; ++co) {
                    float sum = 0.0f;
                    for (int kh = 0; kh < K; ++kh)
                        for (int kw = 0; kw < K; ++kw)
                            for (int ci = 0; ci < C_in; ++ci) {
                                float input_val = Z_data[((n)*H * W_in * C_in) + ((h + kh) * W_in * C_in) + ((w + kw) * C_in) + (ci)];
                                float weight_val = W_data[((kh)*K * C_in * C_out) + ((kw)*C_in * C_out) + ((ci)*C_out) + (co)];
                                sum += input_val * weight_val;
                            }
                    out_data[((n)*H_out * W_out * C_out) + ((h)*W_out * C_out) + ((w)*C_out) + (co)] = sum;
                }
}


bool compare(const Tensor4D& a, const Tensor4D& b, float eps = 1e-3f)
{
    for (size_t n = 0; n < a.size(); ++n)
        for (size_t h = 0; h < a[0].size(); ++h)
            for (size_t w = 0; w < a[0][0].size(); ++w)
                for (size_t c = 0; c < a[0][0][0].size(); ++c)
                {
                    float diff = fabs(a[n][h][w][c] - b[n][h][w][c]);
                    if (diff > eps)
                    {
                        cout << "Mismatch at (" << n << "," << h << "," << w << "," << c << "): "
                            << a[n][h][w][c] << " != " << b[n][h][w][c] << "\n";
                        return false;
                    }
                }
    return true;
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


int main()
{
    
    std::cout << "Program started!" << std::endl;

    auto Z_array = cnpy::npy_load("input_image.npy");
    auto W_array = cnpy::npy_load("weights.npy");
    
    auto Z2 = Z_array.data<float>();
    auto weight2 = W_array.data<float>();

    std::vector<size_t> inpShape = Z_array.shape;
    std::vector<size_t> weightShape = W_array.shape;
    
    size_t  N = inpShape[0];
    size_t  H = inpShape[1], W_in = inpShape[2], C_in = inpShape[3];
    size_t  K = weightShape[0], C_out = weightShape[3];
    size_t  H_out = H - K + 1;
    size_t  W_out = W_in - K + 1;

    std::vector<float> output2(N * H_out * W_out * C_out);
    auto expected_array = cnpy::npy_load("expected_output.npy");
    

    auto start2 = std::chrono::high_resolution_clock::now();
    conv1D(Z2, weight2, output2.data(), N, H, W_in, C_in, K, C_out);
    auto end2 = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed2 = end2 - start2;

    std::cout << "Convolution 1d took " << elapsed2.count() << " seconds.\n";

    vector<size_t> outShape = { N, H_out, W_out, C_out };
    if (compare2(output2.data(), expected_array.data<float>(), N*H_out*W_out*C_out))
        cout << "Convolution output matches expected NumPy result!.\n";
    else
        cout << "Convolution output does not match.\n";

    //// Save output
    //vector<float> flat_output;
    //flat_output.reserve(output.size() * output[0].size() * output[0][0].size() * output[0][0][0].size());

    //for (const auto& n : output)
    //    for (const auto& h : n)
    //        for (const auto& w : h)
    //            for (float val : w)
    //                flat_output.push_back(val);

    //vector<size_t> shape = {
    //    output.size(),
    //    output[0].size(),
    //    output[0][0].size(),
    //    output[0][0][0].size() };



    //cnpy::npy_save("conv_output.npy", flat_output.data(), shape, "w");
    //

    //

    
    return 0;
}

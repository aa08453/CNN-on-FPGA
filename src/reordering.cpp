#include <iostream>
#include "cnpy.h"
#include <fstream>
#include <vector>
#include "cnpy.h"

int main() {
    auto W_array = cnpy::npy_load("../../../src/conv1_weight.npy");
    float* weight2 = W_array.data<float>();

    std::vector<size_t> weightShape = W_array.shape;
    std::cout << "weight shape: " << "(" << weightShape[0] << ", " << weightShape[1] << ", " << weightShape[2] << ", " << weightShape[3] << ")" << std::endl;

    int K = weightShape[2];       // kernel height
    int C_in = weightShape[1];    // input channels
    int C_out = weightShape[0];   // output channels

    float* reorderedWeights = new float[K * K * C_in * C_out];

    for (int cout = 0; cout < C_out; ++cout) {
        for (int cin = 0; cin < C_in; ++cin) {
            for (int kh = 0; kh < K; ++kh) {
                for (int kw = 0; kw < K; ++kw) {
                    int src_index = cout * C_in * K * K + cin * K * K + kh * K + kw;
                    int dst_index = kh * K * C_in * C_out + kw * C_in * C_out + cin * C_out + cout;

                    reorderedWeights[dst_index] = weight2[src_index];
                }
            }
        }
    }
    
    std::vector<size_t> shape = { static_cast<size_t>(K), static_cast<size_t>(K),
                                 static_cast<size_t>(C_in), static_cast<size_t>(C_out) };

    cnpy::npy_save("../../../src/reorderedWeights1.npy", reorderedWeights, shape, "w"); // "w" to overwrite

}
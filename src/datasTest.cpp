#include <iostream>
#include <fstream>
#include <filesystem>

#define USE_MNIST_LOADER
#define MNIST_STATIC
//#define MNIST_HDR_ONLY

#include "mnist.h"

using namespace std;

int main() {
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
    int H = 28, W_in = 28, C_in = 1; // MNIST is grayscale
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

    cout << "First image label: " << mnist[0].label << endl;

    for (int i = 0; i < 28; ++i) {
        for (int j = 0; j < 28; ++j) {
            cout << (mnist[0].data[i][j] > 128 ? '#' : '.');
        }
        cout << endl;
    }

    for (int i = 0; i < 28; ++i) {
        for (int j = 0; j < 28; ++j) {
            cout << (Z2[i * 28 + j] > 0.5 ? '#' : '.');
        }
        cout << endl;
    }

    delete[] Z2;
    free(mnist); // malloc used in mnist_load


}
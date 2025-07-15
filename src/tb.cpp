#include <hls_stream.h>
#include <ap_fixed.h>
#include <iostream>
#include <cstdlib>

#include "conv1_weight.h"
#include "conv2_weight.h"
#include "conv1_bias.h"
#include "conv2_bias.h"
#include "fc1_weight.h"
#include "fc1_bias.h"
#include "mnist_dataset.h"

typedef ap_fixed<8,5> fixed;

#define IMG_H 28
#define IMG_W 28
#define CIN   1
#define COUT  8
#define K     3

void cnn(hls::stream<fixed> &in,
          hls::stream<fixed> out[8],
          const fixed weights[COUT][CIN][K][K],
          const fixed bias[COUT]);

int main() {
    hls::stream<fixed> in_stream;
    hls::stream<fixed> out_stream[8];

    fixed weights[COUT][CIN][K][K];
    fixed bias[COUT];

    // Fill with simple test values
    for (int f = 0; f < COUT; f++) {
        bias[f] = conv1_bias[f];
        for (int c = 0; c < CIN; c++) {
            for (int i = 0; i < K; i++) {
                for (int j = 0; j < K; j++) {
                    weights[f][c][i][j] = conv1_weight[f*9 + c*9 + i*3 + j];
                }
            }
        }
    }
    for(int img=0; img<2; img++) {
		// Fill input stream with 1.0
		for (int i = 0; i < IMG_H * IMG_W * CIN; i++) {
			in_stream << inputData[img*784 + i];
		}

		// Call top-level function
		cnn(in_stream, out_stream, weights, bias);

		// Read output
		int out_size = IMG_H * IMG_W * COUT;
		for(int i=0; i<IMG_H; i++) {
			for(int j=0; j<IMG_H; j++) {
				for(int k=0; k<COUT; k++) {
					fixed result = out_stream[k].read();
					if(k%8==0) std::cout << result << " ";
				}
			}std::cout << std::endl;
		}
    }


    return 0;
}

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
#define CIN2 8
#define COUT2 16


void cnn(hls::stream<fixed> &in,
          hls::stream<fixed> &out,
          const fixed weights[COUT][CIN][K][K],
          const fixed bias[COUT],
		  const fixed weights2[COUT2][CIN2][K][K],
		  const fixed bias2[COUT2],
		  const fixed fcWeight[10][784],
		  const fixed fcBias[10]);

int main() {
    hls::stream<fixed> in_stream;
    hls::stream<fixed> out_stream;

    fixed weights[COUT][CIN][K][K];
    fixed bias[COUT];
    fixed weights2[COUT2][CIN2][K][K];
    fixed bias2[COUT2];
    fixed fcWeight[10][784];
    fixed fcBias[10];

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

    for (int f = 0; f < COUT2; f++) {
            bias2[f] = conv2_bias[f];
            for (int c = 0; c < CIN2; c++) {
                for (int i = 0; i < K; i++) {
                    for (int j = 0; j < K; j++) {
                        weights2[f][c][i][j] = conv2_weight[f*8*9 + c*9 + i*3 + j];
                    }
                }
            }
        }

    for (int f = 0; f < 10; f++) {
                fcBias[f] = fc1_bias[f];
                for (int c = 0; c < 784; c++) {

					fcWeight[f][c] = fc1_weight[f*784 + c];


                }
            }
    for(int img=0; img<2; img++) {
		// Fill input stream with 1.0
		for (int i = 0; i < IMG_H * IMG_W * CIN; i++) {
			in_stream << inputData[img*784 + i];
		}

		// Call top-level function
		cnn(in_stream, out_stream, weights, bias, weights2, bias2, fcWeight, fcBias);

		// Read output
//		int out_size = IMG_H * IMG_W * COUT;
//		for(int i=0; i<IMG_H/4; i++) {
//			for(int j=0; j<IMG_H/4; j++) {
//				for(int k=0; k<COUT2; k++) {
//					fixed result = out_stream[k].read();
//					if(k%16==0) std::cout << result << " ";
//				}
//			}std::cout << std::endl;
//		}std::cout << "ended image" << std::endl;
		fixed resultArr[10];

		for(int i=0; i<10; i++) {
			fixed result = out_stream.read();
			std::cout << result << " ";
			resultArr[i] = result;
		}
		fixed maxRes = resultArr[0];
		int pred = 0;;
		for(int i=1; i<10; i++) {
			if (resultArr[i] > maxRes) {
				maxRes = resultArr[i];
				pred = i;
			}
		}
		std::cout << "Prediction: " << pred << std::endl;
    }


    return 0;
}

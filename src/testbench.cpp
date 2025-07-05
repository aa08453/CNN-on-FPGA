// testbench.cpp
#include <iostream>
#include <ap_fixed.h>
#include "mnist_dataset.h"
#include "conv1_weight.h"
#include "conv1_bias.h"
#include "conv2_weight.h"
#include "conv2_bias.h"
#include "fc1_weight.h"
#include "fc1_bias.h"
#include "conv.h"
#include "pool.h"


typedef ap_fixed<16, 8> fixed;
//typedef float fixed;

void top(
    fixed input[],
    fixed outputConv[],
	fixed weight[],
	fixed bias[],

	fixed outputPool[],

	fixed weight2[],
	fixed bias2[],
	fixed outputConv2[],

	fixed outputPool2[],

	fixed outputDense[],
	fixed fcWeight[], fixed fcBias[]

);

int main() {
    const int Cin = 1;
    const int Cout = 8;
    const int Cout2 = 16;
    const int H = 28;
    const int W = 28;
    const int K = 3;

    const int HoutConv = H;
    const int WoutConv = W;
    const int HoutPool = H/2;
    const int WoutPool = W/2;
    const int HoutPool2 = HoutPool/2;
    const int WoutPool2 = WoutPool/2;

    fixed inputImage[Cin * H * W];
    fixed outputImage[Cout * HoutConv * WoutConv];
    fixed outputPool[Cout*HoutPool*WoutPool];
    fixed outputConv2[Cout2*HoutPool*WoutPool];
    fixed outputPool2[Cout2*HoutPool2*WoutPool2];
    fixed outputDense[10];

    for (int img = 0; img < 5; img++) { // Try 5 images for now
        std::cout << "Testing image " << img << ":\n";

        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {
                int idx = h * W + w;
                inputImage[idx] = input_data[img * H * W + h * W + w];
            }
        }


        top(inputImage, outputImage, conv1_weight, conv1_bias,
        		outputPool,
				conv2_weight, conv2_bias,
				outputConv2,
				outputPool2,
				outputDense,
				fc1_weight, fc1_bias);

        // Print output for channel 0
        std::cout << "Output Channel 0";
        for (int h = 0; h < 28; h++) {
            for (int w = 0; w < 28; w++) {
                int idx = 0 * HoutConv * WoutConv + h * WoutConv + w;
                if(outputImage[idx]>0) std::cout << "#";
                else std::cout << ".";
//                std::cout << outputImage[idx] << "\t";
            }
            std::cout << "\n";
        }

        std::cout << "-----------------------------------\n";

        for (int h = 0; h < 14; h++) {
                    for (int w = 0; w < 14; w++) {
                        int idx = 0 * HoutPool * WoutPool + h * 14 + w;
                        if(outputPool[idx]>0) std::cout << "#";
                        else std::cout << ".";
                    }
                    std::cout << "\n";
                }

                std::cout << "-----------------------------------\n";

		for (int h = 0; h < 14; h++) {
				for (int w = 0; w < 14; w++) {
					int idx = 0 * HoutPool * WoutPool + h * 14 + w;
					if(outputConv2[idx]>0) std::cout << "#";
					else std::cout << ".";
				}
				std::cout << "\n";
			}

				std::cout << "-----------------------------------\n";
		for (int h = 0; h < 7; h++) {
						for (int w = 0; w < 7; w++) {
							int idx = 0 * HoutPool2 * WoutPool2 + h * 7 + w;
							if(outputPool2[idx]>0) std::cout << "#";
							else std::cout << ".";
				}
				std::cout << "\n";
			}

				std::cout << "-----------------------------------\n";
		fixed maxVal = outputDense[0];
		int predictedVal = 0;
		for(int p=0; p<10; p++) {
			if(outputDense[p] > maxVal) {maxVal = outputDense[p];
			predictedVal = p;}
		}
		std::cout << "Predicted value: " << predictedVal << std::endl;
		std::cout << "###############################################" << std::endl;
    }

    return 0;
}

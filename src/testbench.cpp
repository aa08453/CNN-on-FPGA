// testbench.cpp
#include <iostream>
#include <ap_fixed.h>
#include "mnist_dataset.h"
#include "conv.h"
#include "pool.h"
#include "labels.h"



//typedef ap_fixed<16, 8> fixed;
//typedef float fixed;

//typedef ap_fixed<8, 4> fixed;
typedef ap_fixed<8, 5> fixed;

void top(
    fixed input[],
	fixed outputDense[]

);

int main() {
    const int Cin = 1;
    const int H = 28;
    const int W = 28;

    fixed inputImage[Cin * H * W];
    fixed outputDense[10];

    int correct =0;

    for (int img = 0; img < 50; img++) { // Try 5 images for now
        std::cout << "Testing image " << img << ":\n";

        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {
                int idx = h * W + w;
                inputImage[idx] = input_data[img * H * W + h * W + w];
            }
        }


        top(inputImage,
				outputDense);

//        // Print output for channel 0
//        std::cout << "Output Channel 0";
//        for (int h = 0; h < 28; h++) {
//            for (int w = 0; w < 28; w++) {
//                int idx = 0 * HoutConv * WoutConv + h * WoutConv + w;
//                if(outputImage[idx]>0) std::cout << "#";
//                else std::cout << ".";
////                std::cout << outputImage[idx] << "\t";
//            }
//            std::cout << "\n";
//        }
//
//        std::cout << "-----------------------------------\n";
//
//        for (int h = 0; h < 14; h++) {
//                    for (int w = 0; w < 14; w++) {
//                        int idx = 0 * HoutPool * WoutPool + h * 14 + w;
//                        if(outputPool[idx]>0) std::cout << "#";
//                        else std::cout << ".";
////                        std::cout << outputPool[idx] << "\t";
//                    }
//                    std::cout << "\n";
//                }
//
//                std::cout << "-----------------------------------\n";
//
//		for (int h = 0; h < 14; h++) {
//				for (int w = 0; w < 14; w++) {
//					int idx = 0 * HoutPool * WoutPool + h * 14 + w;
//					if(outputConv2[idx]>0) std::cout << "#";
//					else std::cout << ".";
////					std::cout << outputConv2[idx] << "\t";
//				}
//				std::cout << "\n";
//			}
//
//				std::cout << "-----------------------------------\n";
//		for (int h = 0; h < 7; h++) {
//						for (int w = 0; w < 7; w++) {
//							int idx = 0 * HoutPool2 * WoutPool2 + h * 7 + w;
//							if(outputPool2[idx]>0) std::cout << "#";
//							else std::cout << ".";
////							std::cout << outputPool2[idx] << "\t";
//				}
//				std::cout << "\n";
//			}
//
//				std::cout << "-----------------------------------\n";
		fixed maxVal = outputDense[0];
		int predictedVal = 0;
		for(int p=0; p<10; p++) {
//			std::cout << outputDense[p] << "\t";
			if(outputDense[p] > maxVal) {maxVal = outputDense[p];
			predictedVal = p;}
		}
		std::cout << "\nPredicted value: " << predictedVal << std::endl;
		if(predictedVal == labels[img]) correct++;
//		std::cout << "###############################################" << std::endl;
    }
    std::cout << "Accuracy: " << (static_cast<float>(correct) / 50.0f) * 100 << "%" << std::endl;

    return 0;
}

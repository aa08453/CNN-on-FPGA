// dense.cpp
#include "dense.h"

void dense(
		fixed input[], fixed outputDense[],
		fixed fcWeight[], fixed fcBias[],
		int inputFeatures, int numClasses

) {

	int size = 784;
		fixed temp[784]; // local arr for partition
		for(int i=0; i<size; i++) {
			temp[i] = input[i];
		}
#pragma HLS ARRAY_PARTITION variable=temp cyclic factor=16 dim=1
//#pragma HLS ARRAY_PARTITION variable=fcWeight cyclic factor=16 dim=1


    for (int c = 0; c < numClasses; c++) {
        fixed sum = fcBias[c];
//#pragma HLS PIPELINE II=1
		for (int i = 0; i < inputFeatures; i++) {
#pragma HLS UNROLL factor = 28
			sum += temp[i] * fcWeight[c * inputFeatures + i];
		}
		outputDense[c] = sum;
    }
}


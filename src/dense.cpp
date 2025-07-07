// dense.cpp
#include "dense.h"

void dense(
		fixed input[], fixed outputDense[],
		fixed fcWeight[], fixed fcBias[],
		int inputFeatures, int numClasses

) {
//#pragma HLS ARRAY_PARTITION variable=input cyclic factor=16 dim=1
//#pragma HLS ARRAY_PARTITION variable=fcWeight cyclic factor=16 dim=1


    for (int c = 0; c < numClasses; c++) {
        fixed sum = fcBias[c];
#pragma HLS PIPELINE II=1
		for (int i = 0; i < inputFeatures; i++) {
#pragma HLS UNROLL factor = 28
			sum += input[i] * fcWeight[c * inputFeatures + i];
		}
		outputDense[c] = sum;
    }
}


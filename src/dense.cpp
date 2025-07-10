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
	int weightSize = 7840;
	fixed tempWeight[7840]; // local arr for partition
			for(int i=0; i<weightSize; i++) {
				tempWeight[i] = fcWeight[i];
			}

#pragma HLS ARRAY_PARTITION variable=temp cyclic factor=8 dim=1
#pragma HLS ARRAY_PARTITION variable=tempWeight cyclic factor=8 dim=1

//#pragma HLS ARRAY_PARTITION variable=fcWeight cyclic factor=16 dim=1


    for (int c = 0; c < numClasses; c++) {
        fixed sum = fcBias[c];
//#pragma HLS PIPELINE II=2
        for (int i = 0; i < inputFeatures; i++) {
            #pragma HLS UNROLL factor=112
        	int offset = c*inputFeatures + i;
        	fixed multRes = temp[i] * tempWeight[offset];
                sum += multRes;
            }
        outputDense[c] = sum;
    }
}




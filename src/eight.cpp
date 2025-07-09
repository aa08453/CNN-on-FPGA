// eight.cpp

#include "conv.h"
#include "pool.h"
#include "dense.h"
#include <hls_stream.h>

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
) {
#pragma HLS INTERFACE m_axi port=input       offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=outputConv  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=weight      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bias        offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=weight2    offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bias2      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=outputConv2 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=outputPool2 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=outputDense offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=fcWeight    offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=fcBias      offset=slave bundle=gmem

#pragma HLS INTERFACE s_axilite port=return  bundle=control

	conv1(input, outputConv, weight, bias, 1, 8, 28, 28, 3);
	pool(outputConv, outputPool, 8, 28, 28, 2, 2);

	conv2(outputPool, outputConv2, weight2, bias2);
	pool(outputConv2, outputPool2, 16, 14, 14, 2, 2);

	dense(outputPool2, outputDense, fcWeight, fcBias, 784, 10);


}



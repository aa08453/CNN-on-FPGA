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
	// for later storage in external mem
#pragma HLS INTERFACE m_axi port=input       depth=784     offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=outputConv  depth=6272 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=weight      depth=72   offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=bias        depth=8   offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=outputPool  depth=1568 offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=weight2     depth=1152  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=bias2       depth=16    offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=outputConv2 depth=3136 offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=outputPool2 depth=784 offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=outputDense depth=10 offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=fcWeight    depth=7840 offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=fcBias      depth=10 offset=slave bundle=gmem12

#pragma HLS INTERFACE s_axilite port=return  bundle=control

	conv1(input, outputConv, weight, bias, 1, 8, 28, 28, 3);
	pool(outputConv, outputPool, 8, 28, 28, 2, 2);

	conv2(outputPool, outputConv2, weight2, bias2);
	pool(outputConv2, outputPool2, 16, 14, 14, 2, 2);

	dense(outputPool2, outputDense, fcWeight, fcBias, 784, 10);


}



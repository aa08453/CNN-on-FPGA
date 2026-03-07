#include "conv.h"
#include "pool.h"
#include "dense.h"

void top(
    fixed input[],
    fixed outputConv[], // Intermediate
    fixed weight[],
    fixed bias[],
    fixed outputPool[], // Intermediate
    fixed weight2[],
    fixed bias2[],
    fixed outputConv2[], // Intermediate
    fixed outputPool2[], // Intermediate
    fixed outputDense[], // Final Result
    fixed fcWeight[], 
    fixed fcBias[]
) {
    // GROUPING: Use gmem0 for large data flows, gmem1 for weights/constants
// DATA BUNDLE (Padded by 64 to ensure AXI bursts never hit the boundary)
    #pragma HLS INTERFACE m_axi port=input       depth=848  bundle=gmem0
    #pragma HLS INTERFACE m_axi port=outputConv  depth=6336 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=outputPool  depth=1632 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=outputConv2 depth=3200 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=outputPool2 depth=848  bundle=gmem0
    #pragma HLS INTERFACE m_axi port=outputDense depth=64   bundle=gmem0

    // WEIGHT BUNDLE (Padded by 64)
    #pragma HLS INTERFACE m_axi port=weight      depth=136  bundle=gmem1
    #pragma HLS INTERFACE m_axi port=bias        depth=64   bundle=gmem1
    #pragma HLS INTERFACE m_axi port=weight2     depth=1216 bundle=gmem1
    #pragma HLS INTERFACE m_axi port=bias2       depth=64   bundle=gmem1
    #pragma HLS INTERFACE m_axi port=fcWeight    depth=7904 bundle=gmem1
    #pragma HLS INTERFACE m_axi port=fcBias      depth=64   bundle=gmem1

    #pragma HLS STABLE variable=weight
    #pragma HLS STABLE variable=bias
    #pragma HLS STABLE variable=weight2
    #pragma HLS STABLE variable=bias2
    #pragma HLS STABLE variable=fcWeight
    #pragma HLS STABLE variable=fcBias

    #pragma HLS INTERFACE s_axilite port=return  bundle=control

    // This pragma enables task-level parallelism
    // #pragma HLS DATAFLOW

    // Execution Chain
    conv1(input, outputConv, weight, bias);
    pool(outputConv, outputPool, 8, 28, 28, 2, 2);

    conv2(outputPool, outputConv2, weight2, bias2);
    pool(outputConv2, outputPool2, 16, 14, 14, 2, 2);

    dense(outputPool2, outputDense, fcWeight, fcBias);
}
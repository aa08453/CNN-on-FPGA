#include "conv.h"
#include "pool.h"
#include "dense.h"


void top(
    fixed input[],
    fixed output[] // Final Result
) 
{
    #pragma HLS INTERFACE m_axi port=input  depth=848  bundle=gmem0
    #pragma HLS INTERFACE m_axi port=output depth=64   bundle=gmem0

    #pragma HLS INTERFACE s_axilite port=input
    #pragma HLS INTERFACE s_axilite port=output
    #pragma HLS INTERFACE s_axilite port=return  bundle=control
    

    // This pragma enables task-level parallelism
    fixed outputConv[8*28*28]; // Intermediate
    #pragma HLS array_partition dim=1 type=cyclic factor=8 variable=outputConv

    conv1(input, outputConv);

    fixed outputPool[8*14*14]; // Intermediate

    pool(outputConv, outputPool, 8, 28, 28);

    fixed outputConv2[16*14*14]; // Intermediate
    #pragma HLS array_partition dim=1 type=cyclic factor=16 variable=outputConv2

    conv2(outputPool, outputConv2);

    fixed outputPool2[16*7*7]; // Intermediate

    pool(outputConv2, outputPool2, 16, 14, 14);

    dense(outputPool2, output);
}
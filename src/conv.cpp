#include "conv.h"
#include "conv1_bias.h"
#include "conv1_weight.h"
#include "conv2_bias.h"
#include "conv2_weight.h"


void conv1(
    fixed input[],
    fixed outputConv[]
) {
    fixed temp[28*28];        

    // #pragma HLS ARRAY_PARTITION variable=temp complete // Best for II=1
    #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=8 dim=1
    // #pragma HLS bind_storage variable=temp type=RAM_2P impl=BRAM

    LOAD_1: for(int i=0; i<784; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=8
        temp[i] = input[i];
    }
    
    // 2. Partition weights so the 3x3 unroll can read them all at once
    #pragma HLS ARRAY_PARTITION variable=conv1_weight cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=conv1_bias complete


    CO_1: for (int co = 0; co < 8; co++) {
        H_1: for (int h = 0; h < 28; h++) {
            W_1: for (int w = 0; w < 28; w++) {
                #pragma HLS PIPELINE II=1
                fixed sum = conv1_bias[co]; // Use local buffer
                #pragma HLS BIND_OP variable=sum op=mul impl=fabric
                #pragma HLS BIND_OP variable=sum op=add impl=fabric
                KH_1: for (int kh = 0; kh < 3; kh++) {
                    #pragma HLS UNROLL
                    KW_1: for (int kw = 0; kw < 3; kw++) {
                        #pragma HLS UNROLL
                        int inh = h + kh - 1;
                        int inw = w + kw - 1;

                        if (inh >= 0 && inh < 28 && inw >= 0 && inw < 28) {
                            int inputIdx = inh * 28 + inw;
                            int weightIdx = (co * 9) + (kh * 3) + kw;
                            // 5. Use local_weight instead of weight pointer
                            sum += temp[inputIdx] * conv1_weight[weightIdx];
                        }
                    }
                }
                outputConv[co * 784 + h * 28 + w] = (sum > 0) ? sum : (fixed)0;
            }
        }
    }
}

void conv2(
    fixed input[],
    fixed outputConv[]
) {

    #pragma HLS ARRAY_PARTITION variable=conv2_weight cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=conv2_bias complete
    
    // Fixed the size here: 8 * 14 * 14 = 1568    
    // Partitioning by Cin (8) allows the ci loop to read in parallel
    #pragma HLS ARRAY_PARTITION variable=input cyclic factor=16 dim=1
    // #pragma HLS bind_storage variable=input type=RAM_2P impl=BRAM


    static fixed partial_sums[8]; // One for each ci
    #pragma HLS ARRAY_PARTITION variable=partial_sums complete

    CO_2: for (int co = 0; co < 16; co++) {
        for (int h = 0; h < 14; h++) {
            for (int w = 0; w < 14; w++) {
                
                // 1. Initialize partial sums for each output pixel
                for(int p = 0; p < 8; p++) {
                    #pragma HLS UNROLL
                    partial_sums[p] = 0;
                }

                CI_2: for (int ci = 0; ci < 8; ci++) {
                    #pragma HLS PIPELINE II=1
                    KH_2: for (int kh = 0; kh < 3; kh++) {
                        #pragma HLS UNROLL

                        KW_2: for (int kw = 0; kw < 3; kw++) {
                            #pragma HLS UNROLL
                            int inh = h + kh - 3 / 2;
                            int inw = w + kw - 3 / 2;

                            if (inh >= 0 && inh < 14 && inw >= 0 && inw < 14) {
                                int inputIdx = (ci * 196) + (inh * 14) + inw;
                                int weightIdx = (co * 8 * 9) + (ci * 9) + (kh * 3) + kw;
                                // FIX: Use += to accumulate the 3x3 window
                                partial_sums[ci] += input[inputIdx] * conv2_weight[weightIdx];
                            }
                        }
                    }
                }

                // 2. Sum the channels AND add the bias
                fixed sum = conv2_bias[co];
                #pragma HLS BIND_OP variable=sum op=mul impl=fabric
                #pragma HLS BIND_OP variable=sum op=add impl=fabric
                for(int p = 0; p < 8; p++) {
                    #pragma HLS UNROLL
                    sum += partial_sums[p];
                }

                int outIdx = co * 196 + h * 14 + w;
                outputConv[outIdx] = (sum > 0) ? sum : (fixed)0;
            }
        }
    }
}


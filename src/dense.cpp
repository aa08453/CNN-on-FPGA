#include "dense.h"

void dense(
    fixed input[], fixed outputDense[],
    fixed fcWeight[], fixed fcBias[]
) {
    static fixed temp[784];
    #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=8
    
    // 1. Load Input
    LOAD_IN: for(int i=0; i<784; i++) {
        #pragma HLS PIPELINE II=1
        temp[i] = input[i];
    }

    // 2. Buffer the Bias locally (This prevents gmem1 contention during the loop)
    fixed local_bias[10];
    #pragma HLS ARRAY_PARTITION variable=local_bias complete
    LOAD_BIAS: for(int i=0; i<10; i++) {
        #pragma HLS PIPELINE II=1
        local_bias[i] = fcBias[i];
    }

    // 3. Main Computation
    DENSE_OUTER: for (int c = 0; c < 10; c++) {
        fixed sum = local_bias[c]; // Use the local buffer
        
        DENSE_INNER: for (int i = 0; i < 784; i++) {
            #pragma HLS PIPELINE II=1
            // Use an explicit index to help the AXI compiler
            int offset = (c * 784) + i;
            
            // Boundary Check for Simulation Stability
            fixed w_val = (offset < 7840) ? fcWeight[offset] : (fixed)0;
            sum += temp[i] * w_val;
        }
        outputDense[c] = sum;
    }
}
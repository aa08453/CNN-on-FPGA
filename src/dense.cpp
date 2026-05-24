#include "dense.h"
#include "fc1_bias.h"
#include "fc1_weight.h"

void dense(
    fixed input[],
    fixed outputDense[]
) {
    #pragma HLS ARRAY_PARTITION variable=input cyclic factor=10
    // 2. Buffer the Bias locally (This prevents gmem1 contention during the loop)
    #pragma HLS ARRAY_PARTITION variable=fc1_bias complete
    #pragma HLS ARRAY_PARTITION variable=fc1_weight cyclic factor=10


    // 3. Main Computation
    DENSE_OUTER: for (int c = 0; c < 10; c++) {
        fixed sum = fc1_bias[c]; // Use the local buffer
        #pragma HLS BIND_OP variable=sum op=mul impl=fabric
        #pragma HLS BIND_OP variable=sum op=add impl=fabric

        DENSE_INNER: for (int i = 0; i < 784; i++) {
            #pragma HLS PIPELINE II=3
            #pragma HLS UNROLL factor=10
            // Use an explicit index to help the AXI compiler
            int offset = (c * 784) + i;
            
            // Boundary Check for Simulation Stability
            fixed w_val = (offset < 7840) ? fc1_weight[offset] : (fixed)0;
            sum += input[i] * w_val;
        }
        outputDense[c] = sum;
    }
}
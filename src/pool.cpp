#include "pool.h"

void pool(
    fixed input[], fixed outputPool[],
    int Cin, int H, int W,
    int P, int stride
) {
    const int Hout = (H - P) / stride + 1;
    const int Wout = (W - P) / stride + 1;

    // Local buffer to break the AXI dependency
    // Max size for pool1 is 8*28*28 = 6272.
    static fixed local_input[6272]; 
    #pragma HLS bind_storage variable=local_input type=RAM_2P impl=BRAM
    
    // 1. Efficient Burst Read from AXI to Local BRAM
    LOAD_POOL: for(int i = 0; i < Cin * H * W; i++) {
        #pragma HLS PIPELINE II=1
        local_input[i] = input[i];
    }

    // 2. Pooling Logic (Now II=1 is possible because we aren't hitting the bus)
    CO_LOOP: for (int co = 0; co < Cin; co++) {
        H_LOOP: for (int h = 0; h < Hout; h++) {
            W_LOOP: for (int w = 0; w < Wout; w++) {
                #pragma HLS PIPELINE II=1
                
                fixed max_val = -1024; // Smallest possible value
                
                for (int ph = 0; ph < 2; ph++) {
                    for (int pw = 0; pw < 2; pw++) {
                        int in_h = h * stride + ph;
                        int in_w = w * stride + pw;
                        int idx = (co * H * W) + (in_h * W) + in_w;
                        
                        fixed val = local_input[idx];
                        if (val > max_val) max_val = val;
                    }
                }
                outputPool[co * Hout * Wout + h * Wout + w] = max_val;
            }
        }
    }
}
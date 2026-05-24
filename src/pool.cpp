#include "pool.h"

void pool(
    fixed input[], fixed outputPool[],
    int Cin, int H, int W
) {
    const int Hout = (H - 2) / 2 + 1;
    const int Wout = (W - 2) / 2 + 1;


    // 2. Pooling Logic (Now II=1 is possible because we aren't hitting the bus)
    CO_LOOP: for (int co = 0; co < Cin; co++) {
        H_LOOP: for (int h = 0; h < Hout; h++) {
            W_LOOP: for (int w = 0; w < Wout; w++) {
                #pragma HLS PIPELINE II=1
                
                fixed max_val = -1024; // Smallest possible value
                
                for (int ph = 0; ph < 2; ph++) {
                    #pragma HLS UNROLL
                    for (int pw = 0; pw < 2; pw++) {
                        int in_h = h * 2 + ph;
                        int in_w = w * 2 + pw;
                        int idx = (co * H * W) + (in_h * W) + in_w;
                        
                        fixed val = input[idx];
                        if (val > max_val) max_val = val;
                    }
                }
                outputPool[co * Hout * Wout + h * Wout + w] = max_val;
            }
        }
    }
}
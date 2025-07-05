// pool.cpp
#include "pool.h"

void pool(
    fixed input[], fixed outputPool[],
    int Cin, int H, int W,
	int P, int stride
) {
	const int Hout = (H-P) / stride + 1;
	const int Wout = (W - P) / stride + 1;

    for (int co = 0; co < Cin; co++) {
        for (int h = 0; h < Hout; h++) {
            for (int w = 0; w < Wout; w++) {
#pragma HLS PIPELINE II=1
                	fixed max = input[co * H * W + h * stride * W + w * stride];
                    for (int ph = 0; ph < P; ph++) {
                        for (int pw = 0; pw < P; pw++) {
#pragma HLS UNROLL factor=2
                        	int in_h = h * stride + ph;
							int in_w = w * stride + pw;

							int inputIdx = (co * H * W) + (in_h * W) + in_w;
							if (input[inputIdx] > max) max = input[inputIdx];
                        }
                    }

                int outIdx = co * Hout * Wout + h * Wout + w;
                outputPool[outIdx] = max;
            }
        }
    }
}

// conv.cpp
#include "conv.h"

void conv1(
    fixed input[], fixed outputConv[],
    fixed weight[], fixed bias[],
    int Cin, int Cout, int H, int W, int K
) {
	int size = 28*28;
	fixed temp[28*28];
	for(int i=0; i<size; i++) {
		temp[i] = input[i]; //
	}
//#pragma HLS ARRAY_PARTITION variable=temp cyclic factor=4 dim=1
//#pragma HLS ARRAY_PARTITION variable=weight complete dim=1
//#pragma HLS ARRAY_PARTITION variable=bias complete dim=1
#pragma HLS RESOURCE variable=temp core=RAM_1P_BRAM

    for (int co = 0; co < Cout; co++) {

        for (int h = 0; h < H; h++) {

            for (int w = 0; w < 28; w++) {
#pragma HLS PIPELINE II=1
                fixed sum = bias[co];
                for (int ci = 0; ci < 1; ci++) {

                    for (int kh = 0; kh < 3; kh++) {


                        for (int kw = 0; kw < 3; kw++) {

#pragma HLS UNROLL factor=16
                            int inh = h + kh - K / 2;
                            int inw = w + kw - K / 2;

                            if (inh >= 0 && inh < H && inw >= 0 && inw < W) {
                                int inputIdx = ci * H * W + inh * W + inw;
                                int out1 = co * Cin * K * K;
								int out2 = ci * K * K;
								int out3 = kh * K;
                                int weightIdx = out1 + out2 + out3 + kw;
                                fixed multRes = temp[inputIdx] * weight[weightIdx];
                                sum += multRes;
                            }
                        }
                    }
                }
                int outIdx = co * H * W + h * W + w;
                outputConv[outIdx] = sum>fixed(0)? sum : fixed(0);
            }
        }
    }
}



void conv2(
    fixed input[], fixed outputConv[],
    fixed weight[], fixed bias[]
) {
	int size = 8*14*14;
		fixed temp[8*14*14];
		for(int i=0; i<size; i++) {
			temp[i] = input[i];
		}
#pragma HLS RESOURCE variable=temp core=RAM_1P_BRAM

//#pragma HLS ARRAY_PARTITION variable=temp cyclic factor=4 dim=1
//#pragma HLS ARRAY_PARTITION variable=weight complete dim=1
//#pragma HLS ARRAY_PARTITION variable=bias complete dim=1
	int K=3, H=14, W=14, Cin =8, Cout = 16;
    for (int co = 0; co < 16; co++) {

        for (int h = 0; h < 14; h++) {

            for (int w = 0; w < 14; w++) {
#pragma HLS PIPELINE II=1
                fixed sum = bias[co];
                for (int ci = 0; ci < 8; ci++) {
#pragma HLS UNROLL factor=16
                    for (int kh = 0; kh < 3; kh++) {


                        for (int kw = 0; kw < 3; kw++) {


                            int inh = h + kh - K / 2;
                            int inw = w + kw - K / 2;

                            if (inh >= 0 && inh < H && inw >= 0 && inw < W) {
                                int inputIdx = ci * H * W + inh * W + inw;
                                int out1 = co * Cin * K * K;
                                int out2 = ci * K * K;
                                int out3 = kh * K;
                                int weightIdx = out1 + out2 + out3 + kw;
                                fixed multRes = temp[inputIdx] * weight[weightIdx];
                                sum += multRes;
                            }
                        }
                    }
                }
                int outIdx = co * H * W + h * W + w;
                outputConv[outIdx] = sum>fixed(0)? sum : fixed(0);
            }
        }
    }
}


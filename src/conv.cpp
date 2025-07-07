// conv.cpp
#include "conv.h"

void conv1(
    fixed input[], fixed outputConv[],
    fixed weight[], fixed bias[],
    int Cin, int Cout, int H, int W, int K
) {
//#pragma HLS ARRAY_PARTITION variable=weight complete dim=1
//#pragma HLS ARRAY_PARTITION variable=bias complete dim=1

    for (int co = 0; co < Cout; co++) {

        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {

                fixed sum = bias[co];
                for (int ci = 0; ci < Cin; ci++) {

                    for (int kh = 0; kh < 3; kh++) {


                        for (int kw = 0; kw < 3; kw++) {


                            int inh = h + kh - K / 2;
                            int inw = w + kw - K / 2;

                            if (inh >= 0 && inh < H && inw >= 0 && inw < W) {
                                int inputIdx = ci * H * W + inh * W + inw;
                                int weightIdx = co * Cin * K * K + ci * K * K + kh * K + kw;
                                sum += input[inputIdx] * weight[weightIdx];
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

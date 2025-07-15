

#include <hls_stream.h>
#include <ap_fixed.h>

typedef ap_fixed<8,5> fixed;


// Top-level function
void conv(
    hls::stream<fixed> &in,
    hls::stream<fixed> out[8],
    const fixed weights[8][1][3][3],
    const fixed bias[8]
) {


	const int IMG_H = 28;
	const int IMG_W = 28;
	const int CIN = 1;
	const int COUT = 8;
	const int K = 3;
	const int PAD = 1;
	const int STRIDE = 1;



    // Line buffer: 3 rows per channel
    fixed line_buffer[CIN][K][IMG_W + 2 * PAD] = {0};
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=2

#pragma HLS ARRAY_PARTITION variable=weights complete dim=4

    // For each row in output
    for (int h = 0; h < IMG_H + 2 * PAD; h++) {
        for (int w = 0; w < IMG_W + 2 * PAD; w++) {
#pragma HLS PIPELINE II=1

            // Read input from stream or pad with zero
            for (int c = 0; c < CIN; c++) {
#pragma HLS UNROLL
                fixed pixel = 0;

                if (h >= PAD && h < IMG_H + PAD && w >= PAD && w < IMG_W + PAD) {
                    in >> pixel;
                }

                // Shift line buffer up (oldest row drops out)
                line_buffer[c][0][w] = line_buffer[c][1][w];
                line_buffer[c][1][w] = line_buffer[c][2][w];
                line_buffer[c][2][w] = pixel;
            }

            // Skip top PAD rows until we have a full 3x3 window
            if (h < K - 1) continue;

            // Output pixel location
            int out_row = h - PAD - (K - 1 - PAD);
            if (out_row < 0 || out_row >= IMG_H) continue;

            if (w >= K - 1) {
                int out_col = w - PAD - (K - 1 - PAD);
                if (out_col < 0 || out_col >= IMG_W) continue;

                // For each output channel
                for (int f = 0; f < COUT; f++) {
#pragma HLS UNROLL
                    fixed sum = bias[f];

                    // For each input channel
                    for (int c = 0; c < CIN; c++) {
#pragma HLS UNROLL
                        // Apply 3x3 kernel
                        for (int i = 0; i < K; i++) {
                            for (int j = 0; j < K; j++) {
                            	int idx = (K - 1 - j);
                            	int idx2 = w-idx;
                                fixed val = line_buffer[c][i][idx2];
                                fixed wgt = weights[f][c][i][j];
                                fixed multRes = val * wgt;
                                sum = sum + multRes;
                            }
                        }
                    }
                    if(sum>(fixed)0) out[f] << sum;
                    else out[f] << (fixed)0;
                }
            }
        }
    }
}

void pool1(hls::stream<fixed>in[8], hls::stream<fixed>out[8])

// top
void cnn(hls::stream<fixed> &in,
    hls::stream<fixed> out[8],
    const fixed weights[8][1][3][3],
    const fixed bias[8]) {

#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out
#pragma HLS INTERFACE bram port=weights
#pragma HLS INTERFACE bram port=bias
#pragma HLS INTERFACE s_axilite port=return

	conv(in, out, weights, bias);

}

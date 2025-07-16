

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
#pragma HLS ARRAY_PARTITION variable=weights complete dim=3
#pragma HLS ARRAY_PARTITION variable=weights complete dim=2

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
#pragma HLS RESOURCE variable=multRes core=Mul
                                sum = sum + multRes;
#pragma HLS RESOURCE variable=sum core=AddSub
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

void pool1(hls::stream<fixed> in[8], hls::stream<fixed> out[8]) {
    const int IN_H = 28;
    const int IN_W = 28;
    const int OUT_H = IN_H / 2;
    const int OUT_W = IN_W / 2;
    const int CH = 8;

    fixed row_buffer[CH][2][IN_W];
#pragma HLS ARRAY_PARTITION variable=row_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=row_buffer complete dim=2

    for (int h = 0; h < IN_H; h++) {
        for (int w = 0; w < IN_W; w++) {
#pragma HLS PIPELINE II=1
            for (int ch = 0; ch < CH; ch++) {
#pragma HLS UNROLL
                // Shift row buffer
                row_buffer[ch][0][w] = row_buffer[ch][1][w];

                // Read from input stream
                fixed val = in[ch].read();
                row_buffer[ch][1][w] = val;
            }

            // Only process if we have 2 valid rows
            if (h % 2 == 1 && w % 2 == 1) {
                int out_row = h / 2;
                int out_col = w / 2;

                for (int ch = 0; ch < CH; ch++) {
#pragma HLS UNROLL
                    fixed p00 = row_buffer[ch][0][w - 1];
                    fixed p01 = row_buffer[ch][0][w];
                    fixed p10 = row_buffer[ch][1][w - 1];
                    fixed p11 = row_buffer[ch][1][w];

                    fixed max1 = (p00 > p01) ? p00 : p01;
                    fixed max2 = (p10 > p11) ? p10 : p11;
                    fixed maxVal = (max1 > max2) ? max1 : max2;

                    out[ch].write(maxVal);
                }
            }
        }
    }
}

void conv2(
    hls::stream<fixed> in[8],
    hls::stream<fixed> out[16],
    const fixed weights[16][8][3][3],
    const fixed bias[16]
) {



	const int IMG_H = 14;
	const int IMG_W = 14;
	const int CIN = 8;
	const int COUT = 16;
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
#pragma HLS UNROLL factor=2
                fixed pixel = 0;

                if (h >= PAD && h < IMG_H + PAD && w >= PAD && w < IMG_W + PAD) {
                    in[c] >> pixel;
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
#pragma HLS UNROLL factor=4
                    fixed sum = bias[f];

                    // For each input channel
                    for (int c = 0; c < CIN; c++) {
#pragma HLS UNROLL factor=2
                        // Apply 3x3 kernel
                        for (int i = 0; i < K; i++) {
                            for (int j = 0; j < K; j++) {
                            	int idx = (K - 1 - j);
                            	int idx2 = w-idx;
                                fixed val = line_buffer[c][i][idx2];
                                fixed wgt = weights[f][c][i][j];
                                fixed multRes = val * wgt;
#pragma HLS RESOURCE variable=multRes core=Mul
                                sum = sum + multRes;
#pragma HLS RESOURCE variable=sum core=AddSub
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

void pool2(hls::stream<fixed> in[16], hls::stream<fixed> out[16]) {

    const int IN_H = 14;
    const int IN_W = 14;
    const int OUT_H = IN_H / 2;
    const int OUT_W = IN_W / 2;
    const int CH = 16;

    fixed row_buffer[CH][2][IN_W];
#pragma HLS ARRAY_PARTITION variable=row_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=row_buffer complete dim=2

    for (int h = 0; h < IN_H; h++) {
        for (int w = 0; w < IN_W; w++) {
#pragma HLS PIPELINE II=1
            for (int ch = 0; ch < CH; ch++) {
#pragma HLS UNROLL
                // Shift row buffer
                row_buffer[ch][0][w] = row_buffer[ch][1][w];

                // Read from input stream
                fixed val = in[ch].read();
                row_buffer[ch][1][w] = val;
            }

            // Only process if we have 2 valid rows
            if (h % 2 == 1 && w % 2 == 1) {
                int out_row = h / 2;
                int out_col = w / 2;

                for (int ch = 0; ch < CH; ch++) {
#pragma HLS UNROLL
                    fixed p00 = row_buffer[ch][0][w - 1];
                    fixed p01 = row_buffer[ch][0][w];
                    fixed p10 = row_buffer[ch][1][w - 1];
                    fixed p11 = row_buffer[ch][1][w];

                    fixed max1 = (p00 > p01) ? p00 : p01;
                    fixed max2 = (p10 > p11) ? p10 : p11;
                    fixed maxVal = (max1 > max2) ? max1 : max2;

                    out[ch].write(maxVal);
                }
            }
        }
    }
}

void dense(hls::stream<fixed> in[16],
    hls::stream<fixed> &out,
    const fixed weights[10][784],
    const fixed bias[10]) {
#pragma HLS ALLOCATION instances=mul limit=100 function


#pragma HLS ARRAY_PARTITION variable=weights complete dim=1
#pragma HLS ARRAY_PARTITION variable=bias complete dim=1

    const int CH = 16;
    const int H = 7;
    const int W = 7;
    const int INPUT_SIZE = CH * H * W;  // 784
    const int OUT_CLASSES = 10;

    fixed input_buffer[784];
#pragma HLS ARRAY_PARTITION variable=input_buffer cyclic factor=16 dim=1


    // Read all inputs into buffer (flattened input from 16 channels)
    int idx = 0;
    for (int ch = 0; ch < CH; ch++) {
        for (int i = 0; i < H * W; i++) {
#pragma HLS PIPELINE II=1
            in[ch] >> input_buffer[idx++];
        }
    }

    // Compute output for each class
    for (int out_class = 0; out_class < OUT_CLASSES; out_class++) {
#pragma HLS UNROLL
        fixed acc = bias[out_class];

        for (int i = 0; i < INPUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
        	fixed multRes = input_buffer[i] * weights[out_class][i];
#pragma HLS RESOURCE variable=multRes core=Mul
            acc = acc + multRes;
#pragma HLS RESOURCE variable=acc core=AddSub
        }

        out << acc;
    }
}

// top
void cnn(hls::stream<fixed> &in,
    hls::stream<fixed> &out,
    const fixed weights[8][1][3][3],
    const fixed bias[8],
	const fixed weights2[16][8][3][3],
	const fixed bias2[16],
	const fixed fcWeight[10][784],
	const fixed fcBias[10]) {

#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out
#pragma HLS INTERFACE bram port=weights
#pragma HLS INTERFACE bram port=bias
#pragma HLS INTERFACE bram port=weights2
#pragma HLS INTERFACE bram port=bias2
#pragma HLS INTERFACE bram port=fcWeight
#pragma HLS INTERFACE bram port=fcBias
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS DATAFLOW

    hls::stream<fixed> conv1Out[8];
#pragma HLS STREAM variable=conv1Out depth=64
#pragma HLS ARRAY_PARTITION variable=conv1Out complete
    hls::stream<fixed> pool1Out[8];
 #pragma HLS STREAM variable=pool1Out depth=64
 #pragma HLS ARRAY_PARTITION variable=pool1Out complete
    hls::stream<fixed> conv2Out[16];
 #pragma HLS STREAM variable=conv2Out depth=64
 #pragma HLS ARRAY_PARTITION variable=conv2Out complete
    hls::stream<fixed> pool2Out[16];
 #pragma HLS STREAM variable=pool2Out depth=64
 #pragma HLS ARRAY_PARTITION variable=pool2Out complete


	conv(in, conv1Out, weights, bias);
	pool1(conv1Out, pool1Out);
	conv2(pool1Out, conv2Out, weights2, bias2);
	pool2(conv2Out, pool2Out);
	dense(pool2Out, out, fcWeight, fcBias);

}

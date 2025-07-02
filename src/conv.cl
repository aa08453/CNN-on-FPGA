
//__kernel void conv1d_kernel(
//    __global const float* Z,
//    __global const float* W,
//    __global float* out,
//    __global float* bias,
//
//    int N, int H, int W_in, int C_in,
//    int K, int C_out,
//    int H_out, int W_out)
//{
//    int n = get_global_id(0);
//    int flat_hw = get_global_id(1);
//    int co = get_global_id(2);
//
//    int h = flat_hw / W_out;
//    int w = flat_hw % W_out;
//
//
//    if (n < N && h < H_out && w < W_out && co < C_out) {
//        float sum = 0.0f;
//        for (int kh = -1; kh < K-1; ++kh)
//            for (int kw = -1; kw < K-1; ++kw)
//                if (h + kh >= 0 && h + kh < H && w + kw >= 0 && w + kw < W_in) {
//                    for (int ci = 0; ci < C_in; ++ci) {
//
//                        int input_idx = (n * H * W_in * C_in) + ((h + kh) * W_in * C_in) + ((w + kw) * C_in) + ci;
//                        int weight_idx = ((kh + 1) * K * C_in * C_out) + ((kw + 1) * C_in * C_out) + (ci * C_out) + co;
//                        sum += Z[input_idx] * W[weight_idx];
//
//
//                    }
//                }
//        int out_idx = (n * H_out * W_out * C_out) + (h * W_out * C_out) + (w * C_out) + co;
//        /*if (sum && out_idx < 1000) {
//            printf("value at (n=%d, h=%d, w=%d, co=%d): %f\n", n, h, w, co, sum);
//        }*/
//        out[out_idx] = sum ;
//    }
//    
//}

//__kernel void conv1d_kernel(
//    __global const float* Z,
//    __global const float* W,
//    __global float* out,
//    __global float* bias,
//    int N, int H, int W_in, int C_in,
//    int K, int C_out,
//    int H_out, int W_out)
//{
//    int n = get_global_id(0);
//    int flat_hw = get_global_id(1);
//    int co = get_global_id(2);
//
//    int h = flat_hw / W_out;
//    int w = flat_hw % W_out;
//
//    int input_idx, weight_idx;
//    if (n < N && h < H_out && w < W_out && co < C_out) {
//        float sum = 0.0f;
//        for (int kh = 0; kh < K; ++kh)
//            for (int kw = 0; kw < K; ++kw)
//                for (int ci = 0; ci < C_in; ++ci) {
//                    input_idx = (n * H * W_in * C_in) + ((h + kh) * W_in * C_in) + ((w + kw) * C_in) + ci;
//                    weight_idx = (kh * K * C_in * C_out) + (kw * C_in * C_out) + (ci * C_out) + co;
//                    //weight_idx = (co * C_in * K * K) + (ci * K * K) + (kh*K) + (kw);
//                    sum += Z[input_idx] * W[weight_idx];
//                    /*int ih = h + kh - 1;
//                    int iw = w + kw - 1;
//
//                    if (ih >= 0 && ih < H && iw >= 0 && iw < W_in) {
//                        input_idx = (n * H * W_in * C_in) + ((h + ih) * W_in * C_in) + ((w + iw) * C_in);
//                        weight_idx = co * C_in * K * K + ci * K * K + kh * K + kw;
//                        sum += Z[input_idx] * W[weight_idx];
//                    }*/
//                }
//        int out_idx = (n * H_out * W_out * C_out) + (h * W_out * C_out) + (w * C_out) + co;
//        out[out_idx] = sum;
//    }
//}
//__kernel void conv1d_kernel(
//    __global const float* Z,
//    __global const float* W,
//    __global float* out,
//    __global float* bias,
//    int N, int H, int W_in, int C_in,
//    int K, int C_out,
//    int H_out, int W_out)
//{
//    int n = get_global_id(0);
//    int flat_hw = get_global_id(1);
//    int co = get_global_id(2);
//
//    int h = flat_hw / W_out;
//    int w = flat_hw % W_out;
//
//
//    if (n < N && h < H_out && w < W_out && co < C_out) {
//        float sum = bias[co];
//        for (int kh = 0; kh < K; ++kh)
//            for (int kw = 0; kw < K; ++kw)
//                for (int ci = 0; ci < C_in; ++ci) {
//                    int in_h = h + kh - 1; // padding = 1
//                    int in_w = w + kw - 1;
//
//                    float val = 0.0f;
//                    if (in_h >= 0 && in_h < H && in_w >= 0 && in_w < W_in) {
//                        int input_idx = n * H * W_in * C_in + in_h * W_in * C_in + in_w * C_in + ci;
//                        val = Z[input_idx];
//                    }
//
//                    int weight_idx = co * C_in * K * K + ci * K * K + kh * K + kw;
//                    sum += val * W[weight_idx];
//                }
//        int out_idx = (n * H_out * W_out * C_out) + (h * W_out * C_out) + (w * C_out) + co;
//        out[out_idx] = sum;
//    }
//}

__kernel void conv1d_kernel(
    __global const float* Z,
    __global const float* W,
    __global float* out,
    __global float* bias,
    
    int paddedH, int paddedW, int C_in,
    int K, int C_out,
    int H_out, int W_out)
{
    /*int n = get_global_id(0);*/
    int flat_hw = get_global_id(0);
    int co = get_global_id(1);

    int h = flat_hw / W_out;
    int w = flat_hw % W_out;

    

    if (co < C_out && h < H_out && w < W_out) {
        float sum = bias[co];
        for (int ci = 0; ci < C_in; ++ci)
            for (int kw = 0; kw < K; ++kw)
                for (int kh = 0; kh < K; ++kh) {
                    int in_h = h + kh;
                    int in_w = w + kw;
                    int input_idx = ci * paddedH * paddedW + in_h * paddedW + in_w;
                    int weight_idx = co * C_in * K * K + ci * K * K + kh * K + kw;
                    sum += Z[input_idx] * W[weight_idx];
                }
        int out_idx = (co * W_out * H_out) + (h * W_out) + w;
        out[out_idx] = sum;
    }
}

__kernel void reluKernel(__global const float* input, __global float* output, int size) {
    int idx = get_global_id(0);
    if (idx < size) {
        output[idx] = fmax(input[idx], 0.0f);
    }
}

__kernel void maxPoolKernel(__global const float* input, __global float* output,
    int N, int H, int W, int C,
    int poolSize,
    int stride, int padding) {
    int n = get_global_id(0);
    int flat_hw = get_global_id(1);
    int co = get_global_id(2);


    int Hout = (H-poolSize) / stride + 1;
    int Wout = (W - poolSize) / stride + 1;

    /*Hout += 2 * padding;
    Wout += 2 * padding;*/

    int h = flat_hw / Wout;
    int w = flat_hw % Wout;

    if ( co < C && h < Hout && w < Wout) {
        float max = -FLT_MAX;  
            for (int ph = 0; ph < poolSize; ++ph) {
                for (int pw =0; pw < poolSize; ++pw) {
                    int in_h = h * stride + ph;
                    int in_w = w * stride + pw;

                    int inputIdx = (co * H * W) + (in_h * W) + in_w;
                    max = fmax(input[inputIdx], max);

                }
            }
            // Write to padded location in output
            int paddedHout = Hout + 2 * padding;
            int paddedWout = Wout + 2 * padding;

            int outIdx = co * paddedHout * paddedWout + (h + padding) * paddedWout + (w + padding);
            output[outIdx] = max;
            
        
    }
}

__kernel void denseKernel(
    __global const float* input,
    __global const float* weight,
    __global const float* bias,
    __global float* output,
    int inputFeatures, // 784
    int numClasses // outputFeatures
) {
    int idx = get_global_id(0);
    float sum;
    if (idx < numClasses) {
        sum = bias[idx];
        for (int i = 0; i < inputFeatures; i++) {
            sum += input[i] * weight[idx * inputFeatures + i];
        }
        output[idx] = sum;
    }
}

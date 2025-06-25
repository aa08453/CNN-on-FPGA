__kernel void conv1d_kernel(
    __global const float* Z,
    __global const float* W,
    __global float* out,
    int N, int H, int W_in, int C_in,
    int K, int C_out,
    int H_out, int W_out)
{
    int n = get_global_id(0);
    int flat_hw = get_global_id(1);
    int co = get_global_id(2);

    int h = flat_hw / W_out;
    int w = flat_hw % W_out;


    if (n < N && h < H_out && w < W_out && co < C_out) {
        float sum = 0.0f;
        for (int kh = 0; kh < K; ++kh)
            for (int kw = 0; kw < K; ++kw)
                for (int ci = 0; ci < C_in; ++ci) {
                    int input_idx = (n * H * W_in * C_in) + ((h + kh) * W_in * C_in) + ((w + kw) * C_in) + ci;
                    int weight_idx = (kh * K * C_in * C_out) + (kw * C_in * C_out) + (ci * C_out) + co;
                    sum += Z[input_idx] * W[weight_idx];
                }
        int out_idx = (n * H_out * W_out * C_out) + (h * W_out * C_out) + (w * C_out) + co;
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
    int poolSize) {
    int n = get_global_id(0);
    int flat_hw = get_global_id(1);
    int co = get_global_id(2);

    int h = flat_hw / W;
    int w = flat_hw % W;

        int Hout = (H - poolSize + 1);
    int Wout = (W - poolSize + 1);

    if (n < N && co < C && h < Hout && w < Wout) {
        float max = -FLT_MAX;  
        for (int ph = 0; ph < poolSize; ++ph) {
            for (int pw = 0; pw < poolSize; ++pw) {
                int inputIdx = (n * H * W * C) + ((h + ph) * W * C) + ((w + pw) * C) + co;
                
                    max = fmax(input[inputIdx], max);
                
            }
        }
        size_t outIdx = (n * Hout * Wout * C) + (h * Wout * C) + (w * C) + co;
        output[outIdx] = max;
    }
}

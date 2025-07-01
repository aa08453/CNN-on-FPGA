import numpy as np

# Load NHWC input
X = np.load("d:/CNN2.0/CNNConvRe/data/inputDataset.npy")         # (N, H, W, Cin)
W = np.load("d:/CNN2.0/CNNConvRe/src/conv1_weight.npy")         # (Cout, Cin, K, K)
b = np.load("d:/CNN2.0/CNNConvRe/src/conv1_bias.npy")           # (Cout,)

# Transpose weights to (K, K, Cin, Cout)
W = W.transpose(2, 3, 1, 0)

N, H, W_in, Cin = X.shape
print(N, H, W_in, Cin)
K, _, _, Cout = W.shape
stride = 1
padding = 1

# Output dimensions
H_out = (H - K) // stride + 1
W_out = (W_in - K) // stride + 1

# Zero-pad input
# X = X[np.newaxis, ...]  # Now shape is (1, H, W, Cin)

# X = X[:, 1:-1, 1:-1, :] 

X_padded = X

# Output placeholder
out = np.zeros((N, H_out, W_out, Cout), dtype=np.float32)

# Convolution loop
for n in range(N):
    for h in range(H_out):
        for w in range(W_out):
            for co in range(Cout):
                for kh in range(K):
                    for kw in range(K):
                        for ci in range(Cin):
                            out[n, h, w, co] += (
                                X_padded[n, h + kh, w + kw, ci] * W[kh, kw, ci, co]
                            )
                out[n, h, w, co] += b[co]

# Apply ReLU
out = np.maximum(out, 0)

# Max Pooling (kernel=2, stride=2)
pool_k = 2
pool_stride = 2
H_pool = (H_out - pool_k) // pool_stride + 1
W_pool = (W_out - pool_k) // pool_stride + 1

pooled = np.zeros((N, H_pool, W_pool, Cout), dtype=np.float32)

for n in range(N):
    for h in range(H_pool):
        for w in range(W_pool):
            for co in range(Cout):
                h_start = h * pool_stride
                w_start = w * pool_stride
                pooled[n, h, w, co] = np.max(
                    out[n, h_start:h_start + pool_k, w_start:w_start + pool_k, co]
                )

# Load conv2 weights and biases
W2 = np.load("d:/CNN2.0/CNNConvRe/src/conv2_weight.npy")  # (Cout=16, Cin=8, 3, 3)
b2 = np.load("d:/CNN2.0/CNNConvRe/src/conv2_bias.npy")    # (Cout=16,)

# Transpose to (K, K, Cin, Cout)
W2 = W2.transpose(2, 3, 1, 0)

# New shape after padding
K2 = 3
padding2 = 1
stride2 = 1
_, H_pool, W_pool, Cin2 = pooled.shape
Cout2 = W2.shape[3]

H_out2 = (H_pool + 2 * padding2 - K2) // stride2 + 1
W_out2 = (W_pool + 2 * padding2 - K2) // stride2 + 1

# Pad pooled output
pooled_padded = np.pad(pooled, ((0, 0), (padding2, padding2), (padding2, padding2), (0, 0)), mode='constant')

# Output placeholder for second conv
out2 = np.zeros((N, H_out2, W_out2, Cout2), dtype=np.float32)

# Convolution loop for second layer
for n in range(N):
    for h in range(H_out2):
        for w in range(W_out2):
            for co in range(Cout2):
                for kh in range(K2):
                    for kw in range(K2):
                        for ci in range(Cin2):
                            out2[n, h, w, co] += (
                                pooled_padded[n, h + kh, w + kw, ci] * W2[kh, kw, ci, co]
                            )
                out2[n, h, w, co] += b2[co]

# Apply ReLU
out2 = np.maximum(out2, 0)
out = out2

# Save result
np.save("d:/CNN2.0/CNNConvRe/src/expected_output.npy", out)

# Optional visualization (for 1 sample, 1 channel)
if N == 1:
    import matplotlib.pyplot as plt
    plt.imshow(out[0, :, :, 0], cmap='gray')
    plt.title("Conv Output (channel 0)")
    plt.colorbar()
    plt.show()

print("Weight2 stats: min =", W2.min(), "max =", W2.max(), "mean =", W2.mean())
print("Bias2 stats: min =", b2.min(), "max =", b2.max(), "mean =", b2.mean())

out2_raw = np.copy(out2)  # assuming `out2` is the pre-ReLU output
print("Pre-ReLU output stats: min =", out2_raw.min(), "max =", out2_raw.max(), "mean =", out2_raw.mean())


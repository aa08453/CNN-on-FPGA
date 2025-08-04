import numpy as np
import matplotlib.pyplot as plt
import sys
import re

def read_mem_file(path):
    data = []

    with open(path, 'r') as f:
        for line in f:
            line = line.strip()

            # Skip address headers like "// 0x00000000"
            if line.startswith("//"):
                continue

            # Skip empty lines
            if not line:
                continue

            # Check if it's a valid hex byte (2 hex digits)
            if re.fullmatch(r'[0-9a-fA-F]{2}', line):
                value = int(line, 16)
                data.append(value)

    if len(data) != 28 * 28:
        raise ValueError(f"Expected 784 values, got {len(data)}")

    return np.array(data).reshape((28, 28))

def extract_pooled_14x14(data28):
    """Extracts a 14x14 matrix from top-left values of 2x2 blocks."""
    return data28[::2, ::2]  # Take every 2nd row and column

def visualize(data, cmap='gray', title="Visualized .mem Data"):
    plt.imshow(data, cmap=cmap, interpolation='nearest')
    plt.title(title)
    plt.axis('off')
    plt.show()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py [-p] path/to/file.mem")
        sys.exit(1)

    pooled_mode = False
    if sys.argv[1] == "-p":
        pooled_mode = True
        mem_path = sys.argv[2]
    else:
        mem_path = sys.argv[1]

    data28 = read_mem_file(mem_path)

    if pooled_mode:
        data14 = extract_pooled_14x14(data28)
        visualize(data14, title="Pooled 14x14 from 28x28 Sparse Map")
    else:
        visualize(data28, title="Raw 28x28 Memory Data")

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

def visualize(data, cmap='gray'):
    plt.imshow(data, cmap=cmap, interpolation='nearest')
    plt.title("Visualized .mem Data (28x28)")
    plt.axis('off')
    plt.show()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py path/to/file.mem")
        sys.exit(1)

    mem_path = sys.argv[1]
    image = read_mem_file(mem_path)
    visualize(image)

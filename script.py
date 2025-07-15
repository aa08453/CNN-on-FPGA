
import numpy as np
import matplotlib.pyplot as plt

def read_mem_file(path):
    with open(path, 'r') as f:
        lines = f.readlines()
    
    # Convert hex-like strings to integers
    data = [int(line.strip(), 10) for line in lines if line.strip()]
    
    if len(data) != 28 * 28:
        raise ValueError(f"Expected 784 values, got {len(data)}")

    return np.array(data).reshape((28, 28))

def visualize(data, cmap='gray'):
    plt.imshow(data, cmap=cmap, interpolation='nearest')
    plt.title("Visualized .mem Data (28x28)")
    plt.axis('off')
    plt.show()

if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python script.py path/to/file.mem")
        sys.exit(1)

    mem_path = sys.argv[1]
    image = read_mem_file(mem_path)
    visualize(image)

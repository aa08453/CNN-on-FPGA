#include <iostream>
#include "LayerDense.h"
#include "SpiralFunction.h"
#include "ReluActivation.h"
#include "SoftMaxActivation.h"
#include "CrossEntropyLoss.h"
#include "Accuracyfunctions.h"

// int main() {
//     // Create input data
//     Eigen::MatrixXd X(2,2);
//     X<<2.0, -0.09,
//         6.8, 19.28;

//     std::cout<<"The input vector is "<<"\n"<<X<<"\n\n";

//     // Define class indices
//     Eigen::VectorXd y_indices(2);
//     y_indices<<0,1;

//     std::cout<<"The target indices are "<<"\n"<<y_indices<<"\n\n";

//     // Convert to one-hot encoded vectors (3 classes: 0, 1, 2)
//     int num_classes = 3;
//     Eigen::MatrixXd y(2, num_classes);
//     y.setZero(); // Initialize with zeros

//     // Set 1s at the positions indicated by y_indices
//     for (int i = 0; i < y_indices.size(); i++) {
//         y(i, static_cast<int>(y_indices(i))) = 1.0;
//     }

//     std::cout<<"The one-hot encoded targets are "<<"\n"<<y<<"\n\n";


//     std::cout<<"The target vector is "<<"\n"<<y<<"\n\n";

//     // Create a dense layer
//     LayerDense dense1(2, 3);
    
//     // Perform forward pass
//     dense1.forward(X);
//     std::cout << "Dense layer 1 output:\n" << dense1.getOutput() << "\n\n";
    
//     // Assume some gradient values (dvalues) coming from the next layer during backpropagation
//     Eigen::MatrixXd dvalues(2, 3);
//     dvalues << 1.0, -0.5, 0.3,
//                0.2, -0.1, 0.4;
    
//     std::cout << "Gradient values (dvalues):\n" << dvalues << "\n\n";
    
//     // Perform backward pass
//     dense1.backward(dvalues);
    
//     // Print gradients
//     std::cout << "Gradients on weights (dweights):\n" << dense1.getDWeights() << "\n\n";
//     std::cout << "Gradients on biases (dbiases):\n" << dense1.getDBiases() << "\n\n";
//     std::cout << "Gradients on inputs (dinputs):\n" << dense1.getDInputs() << "\n\n";
    
    

//     return 0;
// }


// int main() {
//     std::vector<double> vec = {1, 2, 3};

// // Create 1×N matrix from vector
// Eigen::MatrixXd matrix = Eigen::Map<Eigen::RowVectorXd>(vec.data(), vec.size());

// std::cout << "Matrix:\n" << matrix << std::endl;
// std::cout << "Shape: " << matrix.rows() << ' ' << matrix.cols() << std::endl;
//     return 0;
// }


int main() {
    // Create input data
    Eigen::MatrixXf X(2, 2);
    X << 2.0f, -0.09f,
         6.8f, 19.28f;

    std::cout << "Input data:\n" << X << "\n\n";

    // Define class indices
    Eigen::VectorXf y_indices(2);
    y_indices << 0, 1;

    std::cout << "Target indices:\n" << y_indices << "\n\n";

    // Convert to one-hot encoded vectors (3 classes: 0, 1, 2)
    int num_classes = 3;
    Eigen::MatrixXf y(2, num_classes);
    y.setZero(); // Initialize with zeros

    // Set 1s at the positions indicated by y_indices
    for (int i = 0; i < y_indices.size(); i++) {
        y(i, static_cast<int>(y_indices(i))) = 1.0f;
    }

    std::cout << "One-hot encoded targets:\n" << y << "\n\n";

    // Create the network components
    // First dense layer (2 inputs, 3 neurons)
    LayerDense dense1(2, 3);
    std::cout << "Dense1 weights:\n" << dense1.getWeights() << "\n\n";
    std::cout << "Dense1 biases:\n" << dense1.getBiases() << "\n\n";

    // ReLU activation
    ReluActivation activation1;

    // Second dense layer (3 inputs, 3 neurons)
    LayerDense dense2(3, 3);
    std::cout << "Dense2 weights:\n" << dense2.getWeights() << "\n\n";
    std::cout << "Dense2 biases:\n" << dense2.getBiases() << "\n\n";

    // Softmax activation
    SoftMaxActivation activation2;

    // Loss function
    CrossEntropyLoss loss_function;

    // Perform forward pass
    dense1.forward(X);
    std::cout << "Dense1 output:\n" << dense1.getOutput() << "\n\n";

    activation1.forward(dense1.getOutput());
    std::cout << "ReLU output:\n" << activation1.getOutput() << "\n\n";

    dense2.forward(activation1.getOutput());
    std::cout << "Dense2 output:\n" << dense2.getOutput() << "\n\n";

    activation2.forward(dense2.getOutput());
    std::cout << "Softmax output:\n" << activation2.getOutput() << "\n\n";

    // Calculate loss
    float loss = loss_function.calculate(activation2.getOutput(), y);
    std::cout << "Loss: " << loss << "\n\n";

    // Calculate accuracy
    float accuracy = calculateAccuracy(activation2.getOutput(), y_indices);
    std::cout << "Accuracy: " << accuracy << "\n\n";

    // Check row sums of softmax output (should all be 1.0)
    std::cout << "Softmax row sums:\n";
    for (int i = 0; i < activation2.getOutput().rows(); i++) {
        std::cout << "Row " << i << " sum: " 
                  << activation2.getOutput().row(i).sum() << "\n";
    }

    return 0;
}





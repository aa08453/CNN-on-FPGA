#include <iostream>
#include "LayerDense.h"
#include "SpiralFunction.h"
#include "ReluActivation.h"
#include "SoftMaxActivation.h"
#include "CrossEntropyLoss.h"
#include "Accuracyfunctions.h"

int main() {
    // Create input data
    Eigen::MatrixXd X(2,2);
    X<<2.0, -0.09,
        6.8, 19.28;

    std::cout<<"The input vector is "<<"\n"<<X<<"\n\n";

    // Define class indices
    Eigen::VectorXd y_indices(2);
    y_indices<<0,1;

    std::cout<<"The target indices are "<<"\n"<<y_indices<<"\n\n";

    // Convert to one-hot encoded vectors (3 classes: 0, 1, 2)
    int num_classes = 3;
    Eigen::MatrixXd y(2, num_classes);
    y.setZero(); // Initialize with zeros

    // Set 1s at the positions indicated by y_indices
    for (int i = 0; i < y_indices.size(); i++) {
        y(i, static_cast<int>(y_indices(i))) = 1.0;
    }

    std::cout<<"The one-hot encoded targets are "<<"\n"<<y<<"\n\n";


    std::cout<<"The target vector is "<<"\n"<<y<<"\n\n";

    // Create first dense layer (2 inputs, 3 outputs)
    LayerDense dense1(2,3);
    std::cout<<"The weights for the first layer are "<<"\n"<<dense1.getWeights()<<"\n\n";
    std::cout<<"The biases for the first layer are "<<"\n"<<dense1.getBiases()<<"\n\n";

    // Create ReLU activation
    ReluActivation activation1;

    // Create second dense layer (3 inputs, 3 outputs)
    LayerDense dense2(3,3);
    std::cout<<"The weights for the second layer are "<<"\n"<<dense2.getWeights()<<"\n\n";
    std::cout<<"The biases for the second layer are "<<"\n"<<dense2.getBiases()<<"\n\n";

    // Create Softmax activation
    SoftMaxActivation activation2;

    // Create loss function
    CrossEntropyLoss loss_function;

    // Perform a forward pass through the network
    dense1.forward(X);
    std::cout<<"Dense layer 1 output:"<<"\n"<<dense1.getOutput()<<"\n\n";

    activation1.forward(dense1.getOutput());
    std::cout<<"Activation layer 1 output:"<<"\n"<<activation1.getOutput()<<"\n\n";

    dense2.forward(activation1.getOutput());
    std::cout<<"Dense layer 2 output:"<<"\n"<<dense2.getOutput()<<"\n\n";

    activation2.forward(dense2.getOutput());
    std::cout<<"Activation layer 2 output (softmax):"<<"\n"<<activation2.getOutput()<<"\n\n";

    // Calculate loss
    double loss = loss_function.calculate(activation2.getOutput(), y);
    std::cout<<"Loss: "<<loss<<std::endl;

    double accuracy = calculateAccuracy(activation2.getOutput(), y);

    std::cout<<"Accuracy"<<accuracy;
    

    return 0;
}







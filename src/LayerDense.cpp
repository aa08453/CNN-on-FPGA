#include "LayerDense.h"
#include <vector>
#include "cnpy.h"
#include <iostream>



LayerDense::LayerDense(int n_inputs, int n_neurons) {

    // load weights
    auto W_array2 = cnpy::npy_load("../../../src/fc1_weight.npy");
    float* weight = W_array2.data<float>();
    
    // load biases
    auto B_array = cnpy::npy_load("../../../src/fc1_bias.npy");
    float* B_data = B_array.data<float>();

    // store as eigen matrices
    Eigen::Map<Eigen::Matrix<float, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>> weightsN(weight, 10, 784);
    Eigen::Map<Eigen::RowVectorXf> biasN(B_data, 10);  // instead of VectorXf

    // assign to members
    weights = weightsN;
    biases = biasN;
}


void LayerDense::forward(const Eigen::MatrixXf& inputs) {
    std::cout << "Fc Layer" << std::endl;
    
    // operations
    this->output = inputs * weights.transpose();
    this->output.rowwise() += biases;


}

// void LayerDense::backward(const Eigen::MatrixXf& dvalues) {
//     // Gradients on parameters
//     dweights = input.transpose() * dvalues;
//     dbiases = dvalues.colwise().sum();

//     // Gradient on values
//     dinputs = dvalues * weights.transpose();
// }


const Eigen::MatrixXf& LayerDense::getOutput() const {
    return output;
}

const Eigen::MatrixXf& LayerDense::getWeights() const {
    return weights;
}


const Eigen::RowVectorXf& LayerDense::getBiases() const {
    return biases;
}
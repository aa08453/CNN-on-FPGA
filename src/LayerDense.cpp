#include "LayerDense.h"
#include <vector>
#include "cnpy.h"
#include <iostream>



LayerDense::LayerDense(int n_inputs, int n_neurons) {
    // std::random_device rd;
    std::mt19937 gen(0);                 // Mersenne Twister engine seeded from rd
    std::normal_distribution<> d(0.0f, 1.0f);

   /* std::cout << "Input Size: " << n_inputs << std::endl;*/

    std::cout << "Starting layer dense" << std::endl;
    auto W_array2 = cnpy::npy_load("../../../src/fc1_weight.npy");
    float* weight = W_array2.data<float>();

    std::vector<size_t> weightShape2 = W_array2.shape;
    std::cout << "weight2 shape: " << "(" << weightShape2[0] << ", " << weightShape2[1] << ")" << std::endl;

    Eigen::Map<Eigen::Matrix<float, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>> weightsN(weight, n_inputs, n_neurons);

    weights = weightsN;
    


    //weights = Eigen::MatrixXf(n_inputs, n_neurons);

    /*for (int i = 0; i < n_inputs; ++i) {
        for (int j = 0; j < n_neurons; ++j) {
            weights(i, j) = d(gen) * 0.01;
        }
    }*/

    biases = Eigen::RowVectorXf::Zero(n_neurons);
}


void LayerDense::forward(const Eigen::MatrixXf& inputs) {
    std::cout << "in layer dense" << std::endl;
    /*std::cout << inputs.rows() << " x " << inputs.cols() << std::endl;
    std::cout << weights.rows() << " x " << weights.cols() << std::endl;
    */
    output = inputs * weights;
    output.rowwise() += biases;
    input = inputs; // store the inputs to be used in the backward pass
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
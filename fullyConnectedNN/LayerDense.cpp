#include "LayerDense.h"

LayerDense::LayerDense(int n_inputs, int n_neurons) {
    // std::random_device rd;
    std::mt19937 gen(0);                 // Mersenne Twister engine seeded from rd
    std::normal_distribution<> d(0.0, 1.0);


    weights = Eigen::MatrixXd(n_inputs, n_neurons);

    for (int i = 0; i < n_inputs; ++i) {
        for (int j = 0; j < n_neurons; ++j) {
            weights(i, j) = d(gen) * 0.01;
        }
    }

    biases = Eigen::RowVectorXd::Zero(n_neurons);
}


void LayerDense::forward(const Eigen::MatrixXd& inputs){
    output = inputs * weights;
    output.rowwise() += biases;
}


const Eigen::MatrixXd& LayerDense::getOutput() const{
    return output;
}

const Eigen::MatrixXd& LayerDense::getWeights() const {
    return weights;
}


const Eigen::RowVectorXd& LayerDense::getBiases() const {
    return biases;
}







#ifndef LAYERDENSE_H
#define LAYERDENSE_H

#include <Eigen/Dense>
#include  <vector>
#include <iostream>
#include <cmath>
#include <random>


class LayerDense {
    private:
        int n_inputs;
        int n_neurons;
        Eigen::RowVectorXd biases;
        Eigen::MatrixXd weights;
        Eigen::MatrixXd output;

    public:
        LayerDense(int n_inputs, int n_neurons);

        void forward(const Eigen::MatrixXd& inputs);

        const Eigen::MatrixXd& getOutput() const;

        // void applyReLU();

        const Eigen::MatrixXd& getWeights() const;

        const Eigen::RowVectorXd& getBiases() const;

        
};

#endif
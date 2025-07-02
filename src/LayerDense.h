#ifndef LAYERDENSE_H
#define LAYERDENSE_H

#include <Eigen/Dense>
#include  <vector>
#include <iostream>
#include <cmath>
#include <random>


class LayerDense {
private:
    Eigen::RowVectorXf biases;
    Eigen::MatrixXf weights;
    Eigen::MatrixXf output;
    Eigen::MatrixXf input;

    //Gradients 
    Eigen::MatrixXf dweights;
    Eigen::RowVectorXf dbiases;
    Eigen::MatrixXf dinputs;


public:
    LayerDense(int n_inputs, int n_neurons);

    void forward(Eigen::MatrixXf& inputs);

    // void backward(const Eigen::MatrixXf& dvalues);


    const Eigen::MatrixXf& getOutput() const;

    // void applyReLU();

    const Eigen::MatrixXf& getWeights() const;

    const Eigen::RowVectorXf& getBiases() const;

    // const Eigen::MatrixXf& getDWeights() const;
    // const Eigen::RowVectorXf& getDBiases() const;
    // const Eigen::MatrixXf& getDInputs() const;



};

#endif
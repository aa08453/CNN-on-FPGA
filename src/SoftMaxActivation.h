#ifndef SOFTMAX_H
#define SOFTMAX_H

#include "ActivationFunction.h"

class SoftMaxActivation : public ActivationFunction {

public:
    //void forward(const Eigen::MatrixXf& input) override {
    //    output = (input.array().colwise() - input.rowwise().maxCoeff().array()).exp(); // Stabilize and exponentiate
    //    output = output.array().colwise() / output.rowwise().sum().array(); // Normalize; // Update input with probabilities

    //}
    void forward(const Eigen::MatrixXf& input) override {
        
        // Stabilization: subtract row-wise max from each element in the row
        Eigen::VectorXf rowMax = input.rowwise().maxCoeff();                         // [batch_size x 1]
        Eigen::MatrixXf stabilized = input;
        stabilized = stabilized.array().colwise() - rowMax.array();                 // Broadcasts across columns

        // Exponentiate
        stabilized = stabilized.array().exp();

        // Normalize by row sum
        Eigen::VectorXf rowSum = stabilized.rowwise().sum();                         // [batch_size x 1]
        output = stabilized.array().colwise() / rowSum.array();
    }



};

#endif
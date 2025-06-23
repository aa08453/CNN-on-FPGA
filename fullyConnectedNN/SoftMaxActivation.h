#ifndef SOFTMAX_H
#define SOFTMAX_H

#include "ActivationFunction.h"

class SoftMaxActivation : public ActivationFunction {
    
    public:
        void forward(const Eigen::MatrixXd& input) override {
            output = (input.array().colwise() - input.rowwise().maxCoeff().array()).exp(); // Stabilize and exponentiate
            output = output.array().colwise() / output.rowwise().sum().array(); // Normalize; // Update input with probabilities
            
        }


};

#endif
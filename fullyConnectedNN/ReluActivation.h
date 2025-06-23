#ifndef RELUACTIVATION_H
#define RELUACTIVATION_H

#include "ActivationFunction.h"


class ReluActivation : public ActivationFunction {
    public:
        void forward(const Eigen::MatrixXd& input) override {
            output = input.unaryExpr([](double x) { return std::max(0.0, x); });
        }

        // add backward code too

};


#endif
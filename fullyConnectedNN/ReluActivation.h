#ifndef RELUACTIVATION_H
#define RELUACTIVATION_H

#include "ActivationFunction.h"


class ReluActivation : public ActivationFunction {
    public:
        void forward(const Eigen::MatrixXf& input) override {
            output = input.unaryExpr([](float x) { return std::max(0.0f, x); });
        }

        // add backward code too
        // void backward(const Eigen::MatrixXf& dvalues) override {
        //     Eigen::MatrixXf dinputs = dvalues;

        //     for (int i=0; i<dinputs.rows(); i++) {
        //         for (int j=0; j<dinputs.cols(); j++) {
        //             if (dinputs(i,j) < 0) dinputs(i,j) =0;
        //         }
        //     }
        // }


        



};


#endif
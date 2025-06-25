#ifndef CROSSENTROPYLOSS_H
#define CROSSENTROPYLOSS_H
#include <Eigen/Dense>
#include <vector>
#include <cmath>
#include <iostream>

#include "Loss.h"

class CrossEntropyLoss: public Loss {
    public:
        Eigen::VectorXf forward(
        const Eigen::MatrixXf& y_pred,
        const Eigen::MatrixXf& y_true
    ) override {
        Eigen::MatrixXf y_pred_clipped = y_pred.array().max(1e-7).min(1.0 - 1e-7);

        Eigen::VectorXf correct_confidences = (y_pred_clipped.array() * y_true.array()).rowwise().sum();
            

        return -correct_confidences.array().log();
    }

        Eigen::VectorXf forward(const Eigen::MatrixXf& y_pred, const Eigen::VectorXf& y_true) override {
            int n_samples = y_pred.rows();
            Eigen::VectorXf correct_confidences(n_samples);

             Eigen::MatrixXf y_pred_clipped = y_pred.array().min(1 - 1e-7).max(1e-7);

            for (int i=0; i<n_samples; i++) {
                correct_confidences(i) = y_pred_clipped(i, static_cast<int>(y_true(i)));
            }

            return -correct_confidences.array().log();
        }

    //     void backward(const Eigen::MatrixXf& dvalues, const Eigen::MatrixXf& y_true) {
    //         int samples = dvalues.rows();
    //         int labels = dvalues.cols();
    //         Eigen::MatrixXf y_true_one_hot = y_true;
    //         dinputs = -y_true_one_hot.array() / dvalues.array();
    //         dinputs = dinputs / samples;
    // }

    //     void backward(const Eigen::MatrixXf& dvalues, const Eigen::VectorXf& y_true) {
    //         int samples = dvalues.rows();
    //         int labels = dvalues.cols();

    //         Eigen::MatrixXf y_true_one_hot = Eigen::MatrixXf::Zero(samples, labels);
    //         for (int i = 0; i < samples; i++) {
    //             y_true_one_hot(i, static_cast<int>(y_true(i))) = 1.0;
    //         }
            
    //         dinputs = -y_true_one_hot.array() / dvalues.array();
    //         dinputs = dinputs / samples;
    // }
    
    // // Getter for gradients
    // const Eigen::MatrixXf& getDInputs() const {
    //     return dinputs;
    // }

        
};


#endif
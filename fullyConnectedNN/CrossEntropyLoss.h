#ifndef CROSSENTROPYLOSS_H
#define CROSSENTROPYLOSS_H
#include <Eigen/Dense>
#include <vector>
#include <cmath>
#include <iostream>

#include "Loss.h"

class CrossEntropyLoss: public Loss {
    public:
        Eigen::VectorXd forward(
        const Eigen::MatrixXd& y_pred,
        const Eigen::MatrixXd& y_true
    ) override {
        Eigen::MatrixXd y_pred_clipped = y_pred.array().max(1e-7).min(1.0 - 1e-7);

        Eigen::VectorXd correct_confidences = (y_pred_clipped.array() * y_true.array()).rowwise().sum();
            

        return -correct_confidences.array().log();
    }

        Eigen::VectorXd forward(const Eigen::MatrixXd& y_pred, const Eigen::VectorXd& y_true) override {
            int n_samples = y_pred.rows();
            Eigen::VectorXd correct_confidences(n_samples);

             Eigen::MatrixXd y_pred_clipped = y_pred.array().min(1 - 1e-7).max(1e-7);

            for (int i=0; i<n_samples; i++) {
                correct_confidences(i) = y_pred_clipped(i, static_cast<int>(y_true(i)));
            }

            return -correct_confidences.array().log();
        }

        
};


#endif
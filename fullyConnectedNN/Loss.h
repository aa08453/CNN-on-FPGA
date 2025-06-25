#ifndef LOSS_H
#define LOSS_H
#include <Eigen/Dense>
#include <vector>
#include <cmath>
#include <iostream>

class Loss {
    public:

    virtual ~Loss() = default;

    double calculate(const Eigen::MatrixXf& output, const Eigen::MatrixXf& y) { // overload for one-hot encoded outcomes
        Eigen::VectorXf sample_losses = forward(output, y);
        double data_loss = sample_losses.mean(); 
        return data_loss;
    }
    
    double calculate(const Eigen::MatrixXf& output, const Eigen::VectorXf& y) { // overload for normal outcomes 
        Eigen::VectorXf sample_losses = forward(output, y);
        double data_loss = sample_losses.mean();
        return data_loss;
    }

        virtual Eigen::VectorXf forward(const Eigen::MatrixXf& y_pred, const Eigen::MatrixXf& y_true) = 0;
        virtual Eigen::VectorXf forward(const Eigen::MatrixXf& y_pred, const Eigen::VectorXf& y_true) = 0;
};

#endif 


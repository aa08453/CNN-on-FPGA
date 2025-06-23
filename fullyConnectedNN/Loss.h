#ifndef LOSS_H
#define LOSS_H
#include <Eigen/Dense>
#include <vector>
#include <cmath>
#include <iostream>

class Loss {
    public:

    virtual ~Loss() = default;

    double calculate(const Eigen::MatrixXd& output, const Eigen::MatrixXd& y) { // overload for one-hot encoded outcomes
        Eigen::VectorXd sample_losses = forward(output, y);
        double data_loss = sample_losses.mean(); 
        return data_loss;
    }
    
    double calculate(const Eigen::MatrixXd& output, const Eigen::VectorXd& y) { // overload for normal outcomes 
        Eigen::VectorXd sample_losses = forward(output, y);
        double data_loss = sample_losses.mean();
        return data_loss;
    }

        virtual Eigen::VectorXd forward(const Eigen::MatrixXd& y_pred, const Eigen::MatrixXd& y_true) = 0;
        virtual Eigen::VectorXd forward(const Eigen::MatrixXd& y_pred, const Eigen::VectorXd& y_true) = 0;
};

#endif 


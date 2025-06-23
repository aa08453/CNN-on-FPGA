#ifndef ACCURACYFUNCTIONS_H
#define ACCURACYFUNCTIONS_H

#include "AccuracyFunctions.h" // Header file for function declarations
#include <Eigen/Dense>        // For Eigen matrix operations
#include <vector>             // For std::vector
#include <algorithm>   

int argmax(const Eigen::RowVectorXd& vec) {
    Eigen::Index max_index;
    vec.maxCoeff(&max_index);
    return static_cast<int>(max_index);
}

double calculateAccuracy(const Eigen::MatrixXd& softmax_output, const Eigen::VectorXd& y_true) {
    int correct = 0;
    for (int i = 0; i < softmax_output.rows(); ++i) {
        int pred = argmax(softmax_output.row(i));
        if (pred == static_cast<int>(y_true(i)))
            ++correct;
    }
    return static_cast<double>(correct) / softmax_output.rows();
}

// Overload for one-hot encoded targets
double calculateAccuracy(const Eigen::MatrixXd& softmax_output, const Eigen::MatrixXd& y_true) {
    int correct = 0;
    for (int i = 0; i < softmax_output.rows(); ++i) {
        int pred = argmax(softmax_output.row(i));
        int true_class = argmax(y_true.row(i));
        if (pred == true_class)
            ++correct;
    }
    return static_cast<double>(correct) / softmax_output.rows();
}



#endif
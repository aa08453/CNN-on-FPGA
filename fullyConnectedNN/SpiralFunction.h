#ifndef SPIRALFUNCTION_H
#define SPIRALFUNCTION_H

#include <Eigen/Dense>

// Function declaration
void generate_spiral_data(int points_per_class, int num_classes,
                          Eigen::MatrixXd& X, Eigen::VectorXd& y,
                          double noise = 0.2);

#endif
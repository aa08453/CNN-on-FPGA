// for generating data for testing only 

#ifndef SPIRALFUNCTION_H
#define SPIRALFUNCTION_H

#include <Eigen/Dense>

// Function declaration
void generate_spiral_data(int points_per_class, int num_classes,
                          Eigen::MatrixXf& X, Eigen::VectorXf& y,
                          double noise = 0.2);

#endif
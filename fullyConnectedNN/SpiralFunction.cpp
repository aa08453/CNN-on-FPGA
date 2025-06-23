#include "SpiralFunction.h"
#include <random>
#include <cmath>


void generate_spiral_data(int points_per_class, int num_classes,
                          Eigen::MatrixXd& X, Eigen::VectorXd& y,
                          double noise) {
    int total_points = points_per_class * num_classes;
    X.resize(total_points, 2);  // 2 features (x, y)
    y.resize(total_points);     // class labels

    std::random_device rd;
    std::mt19937 gen(rd());
    std::normal_distribution<> noise_dist(0.0, noise);

    for (int class_num = 0; class_num < num_classes; ++class_num) {
        for (int i = 0; i < points_per_class; ++i) {
            double r = static_cast<double>(i) / points_per_class;
            double theta = class_num * 4.0 + r * 4.0;  // 4 radians apart per class
            double x1 = r * std::sin(theta) + noise_dist(gen);
            double x2 = r * std::cos(theta) + noise_dist(gen);

            int ix = class_num * points_per_class + i;
            X(ix, 0) = x1;
            X(ix, 1) = x2;
            y(ix) = class_num;
        }
    }
}



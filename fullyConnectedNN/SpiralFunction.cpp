#include "SpiralFunction.h"
#include <random>
#include <cmath>

void generate_spiral_data(int points_per_class, int num_classes,
                          Eigen::MatrixXf &X, Eigen::VectorXf &y,
                          float noise)
{
    int total_points = points_per_class * num_classes;
    X.resize(total_points, 2); // 2 features (x, y)
    y.resize(total_points);    // class labels

    std::random_device rd;
    std::mt19937 gen(rd());
    std::normal_distribution<float> noise_dist(0.0f, noise);

    for (int class_num = 0; class_num < num_classes; ++class_num)
    {
        for (int i = 0; i < points_per_class; ++i)
        {
            float r = static_cast<float>(i) / points_per_class;
            float theta = class_num * 4.0f + r * 4.0f; // 4 radians apart per class
            float x1 = r * std::sin(theta) + noise_dist(gen);
            float x2 = r * std::cos(theta) + noise_dist(gen);

            int ix = class_num * points_per_class + i;
            X(ix, 0) = x1;
            X(ix, 1) = x2;
            y(ix) = class_num;
        }
    }
}

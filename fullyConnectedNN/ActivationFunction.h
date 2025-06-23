#ifndef ACTIVATIONFUNCTION_H
#define ACTIVATIONFUNCTION_H

#include <Eigen/Dense>

class ActivationFunction {
    public:
        virtual ~ActivationFunction() = default;

        virtual void forward(const Eigen::MatrixXd& input) = 0;

        // virtual void backward() = 0; // override this when implementing backpropagation

        const Eigen::MatrixXd& getOutput() const {
            return output;
        }
    protected:
        Eigen::MatrixXd output;
};

#endif
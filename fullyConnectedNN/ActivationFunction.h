#ifndef ACTIVATIONFUNCTION_H
#define ACTIVATIONFUNCTION_H

#include <Eigen/Dense>

class ActivationFunction {
    public:
        virtual ~ActivationFunction() = default;

        virtual void forward(const Eigen::MatrixXf& input) = 0;

        // virtual void backward(const Eigen::MatrixXf& dvalues) = 0; // override this when implementing backpropagation

        const Eigen::MatrixXf& getOutput() const {
            return output;
        }
        
    protected:
        Eigen::MatrixXf output;
        // Eigen::MatrixXf dinputs; // Gradients on inputs 
};

#endif
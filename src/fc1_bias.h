#ifndef FC1_BIAS_H
#define FC1_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<8, 5> fixed;

fixed fc1_bias[10] = {
  0.125,   0.0,   0.125,   -0.125,   -0.125,   0.125,   0.0,   0.0,   0.0,   0.0, 
};

#endif // FC1_BIAS_H

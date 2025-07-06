#ifndef CONV2_BIAS_H
#define CONV2_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<8, 5> fixed;

fixed conv2_bias[16] = {
  -0.125,   -0.125,   0.0,   -0.25,   -0.125,   -0.25,   -0.25,   -0.125,   0.125,   -0.25,   0.0,   0.0,   0.0,   -0.375,   0.0,   -0.375, 
};

#endif // CONV2_BIAS_H

#ifndef CONV1_BIAS_H
#define CONV1_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<8, 5> fixed;

fixed conv1_bias[8] = {
  0.0,   -0.125,   0.0,   0.0,   -0.25,   0.0,   0.125,   0.0, 
};

#endif // CONV1_BIAS_H

#ifndef FC1_BIAS_H
#define FC1_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<16, 8> fixed;

fixed fc1_bias[10] = {
  0.0625,   0.07421875,   0.0546875,   -0.06640625,   -0.05859375,   0.01171875,   -0.0390625,   -0.05859375, 
  -0.015625,   -0.02734375, 
};

#endif // FC1_BIAS_H

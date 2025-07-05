#ifndef CONV2_BIAS_H
#define CONV2_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<16, 8> fixed;

fixed conv2_bias[16] = {
  -0.0546875,   -0.18359375,   -0.13671875,   -0.1484375,   0.0,   -0.07421875,   -0.16015625,   -0.0703125, 
  -0.01171875,   0.04296875,   0.0234375,   -0.0078125,   -0.125,   -0.0859375,   -0.0078125,   -0.07421875, 

};

#endif // CONV2_BIAS_H

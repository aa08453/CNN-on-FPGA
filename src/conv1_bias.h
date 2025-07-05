#ifndef CONV1_BIAS_H
#define CONV1_BIAS_H

#include <ap_fixed.h>
typedef ap_fixed<16, 8> fixed;

fixed conv1_bias[8] = {
  -0.00390625,   -0.0234375,   -0.046875,   0.05859375,   0.16015625,   0.38671875,   -0.0078125,   0.27734375, 

};

#endif // CONV1_BIAS_H

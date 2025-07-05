#ifndef BIAS2_H
#define BIAS2_H

#include <ap_fixed.h>
typedef ap_fixed<8, 4> fixed;

fixed bias2[16] = {
  -2,   -1,   0,   -2,   -2,   0,   -1,   -1, 
  1,   -1,   -3,   0,   1,   0,   -1,   -1, 

};

#endif // {name.upper()}_H

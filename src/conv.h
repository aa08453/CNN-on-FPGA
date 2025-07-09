//conv.h
// conv.h
#ifndef CONV_H
#define CONV_H

#include <ap_fixed.h>
//typedef ap_fixed<16, 8> fixed;
//typedef float fixed;
//typedef ap_fixed<8, 4> fixed;
typedef ap_fixed<8, 5> fixed;

void conv1(
    fixed input[], fixed outputConv[],
    fixed weight[], fixed bias[],
    int Cin, int Cout, int H, int W, int K
);

void conv2(fixed input[], fixed outputConv[],
	    fixed weight[], fixed bias[]
	);



#endif



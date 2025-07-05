// dense.h
#ifndef DENSE_H
#define DENSE_H

#include <ap_fixed.h>
//typedef ap_fixed<16, 8> fixed;
typedef float fixed;

void dense(
		fixed input[], fixed outputDense[],
		fixed fcWeight[], fixed fcBias[],
		    int inputFeatures, int numClasses
);



#endif

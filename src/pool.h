// pool.h
#ifndef POOL_H
#define POOL_H

#include <ap_fixed.h>
//typedef ap_fixed<16, 8> fixed;
typedef float fixed;

void pool(
		fixed input[], fixed outputPool[],
		    int Cin, int H, int W,
			int P, int stride
);



#endif

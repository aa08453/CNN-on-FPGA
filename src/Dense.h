#include <iostream>
#include <CL/cl.h>
#include "cnpy.h"

class DenseLayer {
	cl_context context;
	cl_command_queue queue;
	cl_program program;
	cl_kernel kernel;

	cl_mem inputBuf;
	cl_mem weightsBuf;
	cl_mem outputBuf;
	cl_mem biasBuf;


public:
	int inputFeatures, numClasses;
	DenseLayer(cl_context ctx, cl_command_queue q, cl_program prog, 
		float input[],
		int inpFeat, int numCl);
	void forward(float out[]);
	~DenseLayer();
};
#include <CL/cl.h>
#include <iostream>
#include <vector>
#include <cstdlib>
#include <cmath>

#define TOL 0.001f
#define LENGTH 1024

const char* KernelSource = R"CLC(
__kernel void vadd(__global float* a, __global float* b, __global float* c, const unsigned int count)
{
    int i = get_global_id(0);
    if (i < count)
        c[i] = a[i] + b[i];
}
)CLC";

void checkError(cl_int err, const char* name) {
    if (err != CL_SUCCESS) {
        std::cerr << "Error: " << name << " (" << err << ")" << std::endl;
        std::exit(EXIT_FAILURE);
    }
}

int main() {
    cl_int err;
    const int count = LENGTH;

    // Host vectors
    std::vector<float> h_a(count), h_b(count), h_c(count), h_d(count);
    std::vector<float> h_e(count), h_f(count), h_g(count);

    // Fill vectors with random data
    for (int i = 0; i < count; ++i) {
        h_a[i] = rand() / (float)RAND_MAX;
        h_b[i] = rand() / (float)RAND_MAX;
        h_e[i] = rand() / (float)RAND_MAX;
        h_g[i] = rand() / (float)RAND_MAX;
    }

    // Get platform/device
    cl_platform_id platform;
    cl_device_id device;
    cl_uint numPlatforms;

    err = clGetPlatformIDs(1, &platform, &numPlatforms);
    checkError(err, "clGetPlatformIDs");

    err = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, NULL);
    checkError(err, "clGetDeviceIDs");

    // Context and queue
    cl_context context = clCreateContext(NULL, 1, &device, NULL, NULL, &err);
    checkError(err, "clCreateContext");

    cl_command_queue queue = clCreateCommandQueue(context, device, 0, &err);
    checkError(err, "clCreateCommandQueue");

    // Program and kernel
    cl_program program = clCreateProgramWithSource(context, 1, &KernelSource, NULL, &err);
    checkError(err, "clCreateProgramWithSource");

    err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
    if (err != CL_SUCCESS) {
        size_t len;
        char buffer[2048];
        clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &len);
        std::cerr << "Build log:\n" << buffer << std::endl;
        checkError(err, "clBuildProgram");
    }

    cl_kernel kernel = clCreateKernel(program, "vadd", &err);
    checkError(err, "clCreateKernel");

    // Buffers
    cl_mem d_a = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(float) * count, h_a.data(), &err);
    cl_mem d_b = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(float) * count, h_b.data(), &err);
    cl_mem d_e = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(float) * count, h_e.data(), &err);
    cl_mem d_g = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(float) * count, h_g.data(), &err);

    cl_mem d_c = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * count, NULL, &err);
    cl_mem d_d = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * count, NULL, &err);
    cl_mem d_f = clCreateBuffer(context, CL_MEM_WRITE_ONLY, sizeof(float) * count, NULL, &err);

    // Kernel 1: c = a + b
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_a);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_b);
    clSetKernelArg(kernel, 2, sizeof(cl_mem), &d_c);
    clSetKernelArg(kernel, 3, sizeof(unsigned int), &count);

    size_t global = count;
    clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global, NULL, 0, NULL, NULL);

    // Kernel 2: d = c + e
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_c);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_e);
    clSetKernelArg(kernel, 2, sizeof(cl_mem), &d_d);
    clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global, NULL, 0, NULL, NULL);

    // Kernel 3: f = d + g
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_d);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_g);
    clSetKernelArg(kernel, 2, sizeof(cl_mem), &d_f);
    clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global, NULL, 0, NULL, NULL);

    // Read results
    clEnqueueReadBuffer(queue, d_f, CL_TRUE, 0, sizeof(float) * count, h_f.data(), 0, NULL, NULL);

    // Verify
    int correct = 0;
    for (int i = 0; i < count; ++i) {
        float expected = h_a[i] + h_b[i] + h_e[i] + h_g[i];
        float diff = expected - h_f[i];
        if (diff * diff < TOL * TOL)
            ++correct;
        else
            std::cout << "Mismatch at " << i << ": expected " << expected << ", got " << h_f[i] << "\n";
    }
    std::cout << "C++ OpenCL: " << correct << "/" << count << " results correct.\n";

    // Cleanup
    clReleaseMemObject(d_a);
    clReleaseMemObject(d_b);
    clReleaseMemObject(d_c);
    clReleaseMemObject(d_d);
    clReleaseMemObject(d_e);
    clReleaseMemObject(d_f);
    clReleaseMemObject(d_g);
    clReleaseProgram(program);
    clReleaseKernel(kernel);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);

    return 0;
}

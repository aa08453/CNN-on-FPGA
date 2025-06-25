#include <arrayfire.h>
#include <af/opencl.h>
#include <CL/cl.h>

int main() {
    af::setBackend(AF_BACKEND_OPENCL);

    af::info();

    return 0;
}

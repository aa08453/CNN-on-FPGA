#ifndef ERR_CODE_H
#define ERR_CODE_H

#include <CL/cl.h>
#include <stdio.h>
#include <stdlib.h>

#define checkError(status, msg) \
    if (status != CL_SUCCESS) { \
        fprintf(stderr, "%s failed (%d): %s\n", msg, status, err_code(status)); \
        exit(EXIT_FAILURE); \
    }

const char* err_code(cl_int err);

#endif

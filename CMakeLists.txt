cmake_minimum_required(VERSION 3.8)

project(CNNConvRe)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(OPENCL_ROOT "C:/Program Files (x86)/Intel/oneAPI/compiler/2025.1") 

set(OpenCL_INCLUDE_DIR "${OPENCL_ROOT}/include")
set(OpenCL_LIBRARY "${OPENCL_ROOT}/lib/OpenCL.lib")


find_package(OpenCL REQUIRED)

include_directories(${OpenCL_INCLUDE_DIR}
"D:/zlib-develop")
link_directories(${OPENCL_ROOT}/lib
"D:/zlib-develop/build/Release")

find_library(ZLIB_LIBRARY NAMES zslib PATHS "D:/zlib-develop/build/Release")


# Add your executable and source files
add_executable(opencl_test 
    #src/CNNConvRe.cpp
    src/cnpy.cpp
 #"src/openCl.cpp"
 #"src/openCLTest.c" 
 #"src/err_code.c" 
 #"src/openCLTest.cpp"
 "src/Convolution.cpp" 
 #"src/cudaTesting.cu"
 "src/Layer.cpp" "src/RELU.cpp" "src/main.cpp")

# Link OpenCL to your executable
target_link_libraries(opencl_test ${OpenCL_LIBRARY} 
${ZLIB_LIBRARY})

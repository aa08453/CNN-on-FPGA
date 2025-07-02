cmake_minimum_required(VERSION 3.8)

project(CNNConvRe)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


file(COPY ${CMAKE_SOURCE_DIR}/src/input_image.npy DESTINATION ${CMAKE_BINARY_DIR})
file(COPY ${CMAKE_SOURCE_DIR}/src/weights.npy DESTINATION ${CMAKE_BINARY_DIR})
file(COPY ${CMAKE_SOURCE_DIR}/src/expected_output.npy DESTINATION ${CMAKE_BINARY_DIR})
file(COPY ${CMAKE_SOURCE_DIR}/src/conv.cl DESTINATION ${CMAKE_BINARY_DIR})


set(OPENCL_ROOT "C:/Program Files (x86)/Intel/oneAPI/compiler/2025.1") 

set(OpenCL_INCLUDE_DIR "${OPENCL_ROOT}/include")
set(OpenCL_LIBRARY "${OPENCL_ROOT}/lib/OpenCL.lib")


find_package(OpenCL REQUIRED)

include_directories(${OpenCL_INCLUDE_DIR}
"${PROJECT_SOURCE_DIR}/external/zlib-develop"
${PROJECT_SOURCE_DIR}/external/eigen-3.4.0)

link_directories(${OPENCL_ROOT}/lib
"${PROJECT_SOURCE_DIR}/external/zlib-develop/build/Release")

find_library(ZLIB_LIBRARY NAMES zs.lib PATHS "${PROJECT_SOURCE_DIR}/external/zlib-develop/build/Release")

add_definitions(-DAF_USE_OPENCL)

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
 "src/Layer.cpp" "src/RELU.cpp" 
 "src/main.cpp" "src/MaxPool.cpp" 
 #"src/afTest.cpp"
 "src/LayerDense.cpp" "src/LayerDense.h" "src/ReluActivation.h" "src/ActivationFunction.h" "src/SoftMaxActivation.h" 
 "src/mnist.h" 
 #"src/datasTest.cpp"
 #"src/reordering.cpp"
 "src/Dense.h" "src/Dense.cpp")

# Link OpenCL to your executable
target_link_libraries(opencl_test ${OpenCL_LIBRARY} 
${ZLIB_LIBRARY})
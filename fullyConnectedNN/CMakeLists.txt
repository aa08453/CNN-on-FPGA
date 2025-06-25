cmake_minimum_required(VERSION 3.10)
project(NeuralNetwork)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


# Include current directory for header files
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# Include Eigen (update path if needed)
include_directories("C:/eigen-3.4.0")

# Add source files
add_executable(NeuralNetwork 
    main.cpp 
    LayerDense.cpp
    SpiralFunction.cpp
)

# Set output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Debug and Release configurations
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MDd /Zi /Od")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MD /O2 /DNDEBUG")
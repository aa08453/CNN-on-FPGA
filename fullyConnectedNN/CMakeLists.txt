cmake_minimum_required(VERSION 3.10)
project(NeuralNetwork)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Configure MSVC-specific settings
if(MSVC)
    # Add compiler flags specific to MSVC
    add_compile_options(/W4)
    # Disable specific warnings if needed
    # add_compile_options(/wd4100)
endif()

# Add Eigen include path - update this to match your Eigen installation
include_directories("C:/eigen-3.4.0")

# Include all header files directory
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# Add all source files
add_executable(NeuralNetwork 
    main.cpp 
    LayerDense.cpp 
    SpiralFunction.cpp
)

# Set the output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
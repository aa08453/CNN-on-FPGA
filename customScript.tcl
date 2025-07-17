open_project cnncustom -reset
set_top cnn
add_files ./src/mnist_dataset.h
add_files ./src/labels.h
add_files ./src/fc1_weight.h
add_files ./src/fc1_bias.h
add_files ./src/conv2_weight.h
add_files ./src/conv2_bias.h
add_files ./src/conv1_weight.h
add_files ./src/conv1_bias.h
add_files ./src/cnn.cpp
add_files -tb ./src/tb2.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"


open_solution "solution" -reset
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%


set_directive_resource -core Mul dense multRes
set_directive_resource -core AddSub dense acc 
set_directive_resource -core Mul conv multRes
set_directive_resource -core AddSub conv sum

set_directive_resource -core Mul conv2 multRes
set_directive_resource -core AddSub conv2 sum


csim_design
csynth_design
cosim_design

export_design -format ip_catalog -description "CNN IP from HLS" -vendor "mycompany.com" -library "cnnlib" -version "1.0"




# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten conv1/H_1
set_directive_loop_flatten conv1/CO_1
set_directive_loop_flatten conv2/VITIS_LOOP_95_2 -off
set_directive_loop_flatten top/DENSE_OUTER
set_directive_array_partition top/pool(ap_fixed<8, 5, (ap_q_mode)5, (ap_o_mode)3, 0>*, ap_fixed<8, 5, (ap_q_mode)5, (ap_o_mode)3, 0>*, int, int, int, int, int)::local_input -dim=1 -type=cyclic -factor=5 pool(ap_fixed<8, 5, (ap_q_mode)5, (ap_o_mode)3, 0>*, ap_fixed<8, 5, (ap_q_mode)5, (ap_o_mode)3, 0>*, int, int, int, int, int)::local_input
set_directive_loop_flatten pool.1/H_LOOP
set_directive_loop_flatten pool.1/CO_LOOP

set SynModuleInfo {
  {SRCNAME conv1_Pipeline_LOAD_W MODELNAME conv1_Pipeline_LOAD_W RTLNAME top_conv1_Pipeline_LOAD_W
    SUBMODULES {
      {MODELNAME top_flow_control_loop_pipe_sequential_init RTLNAME top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv1_Pipeline_LOAD_B MODELNAME conv1_Pipeline_LOAD_B RTLNAME top_conv1_Pipeline_LOAD_B}
  {SRCNAME conv1_Pipeline_LOAD_1 MODELNAME conv1_Pipeline_LOAD_1 RTLNAME top_conv1_Pipeline_LOAD_1}
  {SRCNAME conv1_Pipeline_CO_1_H_1_W_1 MODELNAME conv1_Pipeline_CO_1_H_1_W_1 RTLNAME top_conv1_Pipeline_CO_1_H_1_W_1
    SUBMODULES {
      {MODELNAME top_sparsemux_33_4_8_1_1 RTLNAME top_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_sparsemux_17_3_8_1_1 RTLNAME top_sparsemux_17_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mac_muladd_8s_8s_11s_11_4_1 RTLNAME top_mac_muladd_8s_8s_11s_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv1 MODELNAME conv1 RTLNAME top_conv1
    SUBMODULES {
      {MODELNAME top_conv1_temp_RAM_2P_BRAM_1R1W RTLNAME top_conv1_temp_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool_Pipeline_LOAD_POOL MODELNAME pool_Pipeline_LOAD_POOL RTLNAME top_pool_Pipeline_LOAD_POOL}
  {SRCNAME pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP MODELNAME pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP RTLNAME top_pool_Pipeline_CO_LOOP_H_LOOP_W_LOOP
    SUBMODULES {
      {MODELNAME top_urem_8ns_4ns_3_12_1 RTLNAME top_urem_8ns_4ns_3_12_1 BINDTYPE op TYPE urem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_4ns_11ns_13_1_1 RTLNAME top_mul_4ns_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_13ns_15ns_27_1_1 RTLNAME top_mul_13ns_15ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_sparsemux_11_3_8_1_1 RTLNAME top_sparsemux_11_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME pool MODELNAME pool RTLNAME top_pool}
  {SRCNAME conv2_Pipeline_LOAD_W MODELNAME conv2_Pipeline_LOAD_W RTLNAME top_conv2_Pipeline_LOAD_W}
  {SRCNAME conv2_Pipeline_LOAD_B MODELNAME conv2_Pipeline_LOAD_B RTLNAME top_conv2_Pipeline_LOAD_B}
  {SRCNAME conv2_Pipeline_LOAD_2 MODELNAME conv2_Pipeline_LOAD_2 RTLNAME top_conv2_Pipeline_LOAD_2}
  {SRCNAME conv2_Pipeline_CI_2 MODELNAME conv2_Pipeline_CI_2 RTLNAME top_conv2_Pipeline_CI_2
    SUBMODULES {
      {MODELNAME top_sparsemux_17_3_8_1_1_x RTLNAME top_sparsemux_17_3_8_1_1_x BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mac_muladd_8s_8s_11s_16_4_1 RTLNAME top_mac_muladd_8s_8s_11s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2 MODELNAME conv2 RTLNAME top_conv2
    SUBMODULES {
      {MODELNAME top_conv2_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_RAM_bkb RTLNAME top_conv2_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_RAM_bkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_temp_RAM_2P_BRAM_1R1W RTLNAME top_conv2_temp_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool.1_Pipeline_LOAD_POOL MODELNAME pool_1_Pipeline_LOAD_POOL RTLNAME top_pool_1_Pipeline_LOAD_POOL}
  {SRCNAME pool.1_Pipeline_CO_LOOP_H_LOOP_W_LOOP MODELNAME pool_1_Pipeline_CO_LOOP_H_LOOP_W_LOOP RTLNAME top_pool_1_Pipeline_CO_LOOP_H_LOOP_W_LOOP
    SUBMODULES {
      {MODELNAME top_urem_9ns_4ns_3_13_1 RTLNAME top_urem_9ns_4ns_3_13_1 BINDTYPE op TYPE urem IMPL auto LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_5ns_9ns_12_1_1 RTLNAME top_mul_5ns_9ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_12ns_14ns_25_1_1 RTLNAME top_mul_12ns_14ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool.1 MODELNAME pool_1 RTLNAME top_pool_1}
  {SRCNAME top_Pipeline_LOAD_IN MODELNAME top_Pipeline_LOAD_IN RTLNAME top_top_Pipeline_LOAD_IN}
  {SRCNAME top_Pipeline_LOAD_BIAS MODELNAME top_Pipeline_LOAD_BIAS RTLNAME top_top_Pipeline_LOAD_BIAS}
  {SRCNAME top_Pipeline_DENSE_OUTER_DENSE_INNER MODELNAME top_Pipeline_DENSE_OUTER_DENSE_INNER RTLNAME top_top_Pipeline_DENSE_OUTER_DENSE_INNER
    SUBMODULES {
      {MODELNAME top_sparsemux_21_4_8_1_1 RTLNAME top_sparsemux_21_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME top MODELNAME top RTLNAME top IS_TOP 1
    SUBMODULES {
      {MODELNAME top_pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_RAM_2P_BRAkbM RTLNAME top_pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_RAM_2P_BRAkbM BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_RAM_AUTO_1R1W RTLNAME top_dense_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_temp_7_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_gmem0_m_axi RTLNAME top_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME top_gmem1_m_axi RTLNAME top_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME top_control_s_axi RTLNAME top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}

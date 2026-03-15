set SynModuleInfo {
  {SRCNAME conv1_Pipeline_LOAD_1 MODELNAME conv1_Pipeline_LOAD_1 RTLNAME top_conv1_Pipeline_LOAD_1
    SUBMODULES {
      {MODELNAME top_flow_control_loop_pipe_sequential_init RTLNAME top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv1_Pipeline_CO_1_H_1_W_1 MODELNAME conv1_Pipeline_CO_1_H_1_W_1 RTLNAME top_conv1_Pipeline_CO_1_H_1_W_1
    SUBMODULES {
      {MODELNAME top_urem_8ns_4ns_3_12_1 RTLNAME top_urem_8ns_4ns_3_12_1 BINDTYPE op TYPE urem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME top_sparsemux_33_4_8_1_1 RTLNAME top_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_sparsemux_17_3_4_1_1 RTLNAME top_sparsemux_17_3_4_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mul_4s_8s_12_1_1 RTLNAME top_mul_4s_8s_12_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_13ns_15ns_27_1_1 RTLNAME top_mul_13ns_15ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_sparsemux_17_3_2_1_1 RTLNAME top_sparsemux_17_3_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_sparsemux_17_3_3_1_1 RTLNAME top_sparsemux_17_3_3_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mul_3ns_8s_11_1_1 RTLNAME top_mul_3ns_8s_11_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mul_8s_3ns_11_1_1 RTLNAME top_mul_8s_3ns_11_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mac_muladd_10ns_4ns_5ns_13_4_1 RTLNAME top_mac_muladd_10ns_4ns_5ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv1 MODELNAME conv1 RTLNAME top_conv1
    SUBMODULES {
      {MODELNAME top_conv1_temp_RAM_2P_BRAM_1R1W RTLNAME top_conv1_temp_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pool MODELNAME pool RTLNAME top_pool
    SUBMODULES {
      {MODELNAME top_mul_4ns_11ns_13_1_1 RTLNAME top_mul_4ns_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_sparsemux_11_3_7_1_1 RTLNAME top_sparsemux_11_3_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mac_muladd_8ns_4ns_4ns_11_4_1 RTLNAME top_mac_muladd_8ns_4ns_4ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2_Pipeline_CI_2 MODELNAME conv2_Pipeline_CI_2 RTLNAME top_conv2_Pipeline_CI_2
    SUBMODULES {
      {MODELNAME top_sparsemux_17_3_7_1_1 RTLNAME top_sparsemux_17_3_7_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_sparsemux_17_3_8_1_1 RTLNAME top_sparsemux_17_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mul_4s_7ns_11_1_1 RTLNAME top_mul_4s_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mac_muladd_7ns_3s_11s_12_4_1 RTLNAME top_mac_muladd_7ns_3s_11s_12_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_6_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_4_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_3_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_0_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_1_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_2_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_5_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_7_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_7_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_8_ROM_AUTO_1R RTLNAME top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_8_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv2 MODELNAME conv2 RTLNAME top_conv2
    SUBMODULES {
      {MODELNAME top_sparsemux_33_4_3_1_1 RTLNAME top_sparsemux_33_4_3_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME pool.1 MODELNAME pool_1 RTLNAME top_pool_1
    SUBMODULES {
      {MODELNAME top_mac_muladd_7ns_5ns_3ns_11_4_1 RTLNAME top_mac_muladd_7ns_5ns_3ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME top_Pipeline_DENSE_OUTER_DENSE_INNER MODELNAME top_Pipeline_DENSE_OUTER_DENSE_INNER RTLNAME top_top_Pipeline_DENSE_OUTER_DENSE_INNER
    SUBMODULES {
      {MODELNAME top_sparsemux_21_4_2_1_1 RTLNAME top_sparsemux_21_4_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME top_mul_7ns_4s_11_1_1 RTLNAME top_mul_7ns_4s_11_1_1 BINDTYPE op TYPE mul IMPL fabric LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mac_muladd_10ns_4ns_10ns_13_4_1 RTLNAME top_mac_muladd_10ns_4ns_10ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME top_top_Pipeline_DENSE_OUTER_DENSE_INNER_fc1_weight_ROM_AUTO_1R RTLNAME top_top_Pipeline_DENSE_OUTER_DENSE_INNER_fc1_weight_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME top MODELNAME top RTLNAME top IS_TOP 1
    SUBMODULES {
      {MODELNAME top_outputConv_RAM_2P_BRAM_1R1W RTLNAME top_outputConv_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_outputPool_RAM_2P_BRAM_1R1W RTLNAME top_outputPool_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_outputConv2_RAM_2P_BRAM_1R1W RTLNAME top_outputConv2_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_outputPool2_RAM_AUTO_1R1W RTLNAME top_outputPool2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_gmem0_m_axi RTLNAME top_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME top_control_s_axi RTLNAME top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}

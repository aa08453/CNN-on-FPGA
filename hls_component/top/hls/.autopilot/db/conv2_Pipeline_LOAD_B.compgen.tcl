# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name gmem1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem1 \
    op interface \
    ports { m_axi_gmem1_0_AWVALID { O 1 bit } m_axi_gmem1_0_AWREADY { I 1 bit } m_axi_gmem1_0_AWADDR { O 64 vector } m_axi_gmem1_0_AWID { O 1 vector } m_axi_gmem1_0_AWLEN { O 32 vector } m_axi_gmem1_0_AWSIZE { O 3 vector } m_axi_gmem1_0_AWBURST { O 2 vector } m_axi_gmem1_0_AWLOCK { O 2 vector } m_axi_gmem1_0_AWCACHE { O 4 vector } m_axi_gmem1_0_AWPROT { O 3 vector } m_axi_gmem1_0_AWQOS { O 4 vector } m_axi_gmem1_0_AWREGION { O 4 vector } m_axi_gmem1_0_AWUSER { O 1 vector } m_axi_gmem1_0_WVALID { O 1 bit } m_axi_gmem1_0_WREADY { I 1 bit } m_axi_gmem1_0_WDATA { O 8 vector } m_axi_gmem1_0_WSTRB { O 1 vector } m_axi_gmem1_0_WLAST { O 1 bit } m_axi_gmem1_0_WID { O 1 vector } m_axi_gmem1_0_WUSER { O 1 vector } m_axi_gmem1_0_ARVALID { O 1 bit } m_axi_gmem1_0_ARREADY { I 1 bit } m_axi_gmem1_0_ARADDR { O 64 vector } m_axi_gmem1_0_ARID { O 1 vector } m_axi_gmem1_0_ARLEN { O 32 vector } m_axi_gmem1_0_ARSIZE { O 3 vector } m_axi_gmem1_0_ARBURST { O 2 vector } m_axi_gmem1_0_ARLOCK { O 2 vector } m_axi_gmem1_0_ARCACHE { O 4 vector } m_axi_gmem1_0_ARPROT { O 3 vector } m_axi_gmem1_0_ARQOS { O 4 vector } m_axi_gmem1_0_ARREGION { O 4 vector } m_axi_gmem1_0_ARUSER { O 1 vector } m_axi_gmem1_0_RVALID { I 1 bit } m_axi_gmem1_0_RREADY { O 1 bit } m_axi_gmem1_0_RDATA { I 8 vector } m_axi_gmem1_0_RLAST { I 1 bit } m_axi_gmem1_0_RID { I 1 vector } m_axi_gmem1_0_RFIFONUM { I 11 vector } m_axi_gmem1_0_RUSER { I 1 vector } m_axi_gmem1_0_RRESP { I 2 vector } m_axi_gmem1_0_BVALID { I 1 bit } m_axi_gmem1_0_BREADY { O 1 bit } m_axi_gmem1_0_BRESP { I 2 vector } m_axi_gmem1_0_BID { I 1 vector } m_axi_gmem1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias \
    op interface \
    ports { bias { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1 { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_bias_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia \
    op interface \
    ports { conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia { O 8 vector } conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 \
    op interface \
    ports { conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0 { O 8 vector } conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 \
    op interface \
    ports { conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1 { O 8 vector } conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 \
    op interface \
    ports { conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2 { O 8 vector } conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 \
    op interface \
    ports { conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3 { O 8 vector } conv2_mulap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_bia_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia \
    op interface \
    ports { p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia { O 8 vector } p_ZZ5conv2P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E10local_bia_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName top_flow_control_loop_pipe_sequential_init_U
set CompName top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}



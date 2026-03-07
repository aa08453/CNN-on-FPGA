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
    id 1 \
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
    id 2 \
    name weight \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight \
    op interface \
    ports { weight { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight \
    op interface \
    ports { conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight { O 8 vector } conv1_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_61_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_60_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_59_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_52_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_51_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_50_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_41_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_40_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_39_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 \
    op interface \
    ports { conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10 { O 8 vector } conv1_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_ap_fixed_8_5_ap_q_mode_5_ap_o_mode_3_0_local_wei_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1 \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1 { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei \
    op interface \
    ports { p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei { O 8 vector } p_ZZ5conv1P8ap_fixedILi8ELi5EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_S3_E12local_wei_ap_vld { O 1 bit } } \
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



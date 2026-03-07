# This script segment is generated automatically by AutoPilot

set name top_urem_8ns_4ns_3_12_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 11 ALLOW_PRAGMA 1
}


set name top_mul_4ns_11ns_13_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name top_mul_13ns_15ns_27_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_11_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_11_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_11_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_11_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4 \
    op interface \
    ports { pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_address0 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_ce0 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_q0 { I 8 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_address1 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_ce1 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3 \
    op interface \
    ports { pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_address0 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_ce0 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_q0 { I 8 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_address1 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_ce1 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2 \
    op interface \
    ports { pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_address0 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_ce0 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_q0 { I 8 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_address1 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_ce1 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1 \
    op interface \
    ports { pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_address0 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_ce0 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_q0 { I 8 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_address1 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_ce1 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input \
    op interface \
    ports { pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_address0 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_ce0 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_q0 { I 8 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_address1 { O 11 vector } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_ce1 { O 1 bit } pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_ap_fixed_ap_fixed_8_5_5_3_0_int_int_int_int_int_local_input'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name gmem0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_0_AWVALID { O 1 bit } m_axi_gmem0_0_AWREADY { I 1 bit } m_axi_gmem0_0_AWADDR { O 64 vector } m_axi_gmem0_0_AWID { O 1 vector } m_axi_gmem0_0_AWLEN { O 32 vector } m_axi_gmem0_0_AWSIZE { O 3 vector } m_axi_gmem0_0_AWBURST { O 2 vector } m_axi_gmem0_0_AWLOCK { O 2 vector } m_axi_gmem0_0_AWCACHE { O 4 vector } m_axi_gmem0_0_AWPROT { O 3 vector } m_axi_gmem0_0_AWQOS { O 4 vector } m_axi_gmem0_0_AWREGION { O 4 vector } m_axi_gmem0_0_AWUSER { O 1 vector } m_axi_gmem0_0_WVALID { O 1 bit } m_axi_gmem0_0_WREADY { I 1 bit } m_axi_gmem0_0_WDATA { O 8 vector } m_axi_gmem0_0_WSTRB { O 1 vector } m_axi_gmem0_0_WLAST { O 1 bit } m_axi_gmem0_0_WID { O 1 vector } m_axi_gmem0_0_WUSER { O 1 vector } m_axi_gmem0_0_ARVALID { O 1 bit } m_axi_gmem0_0_ARREADY { I 1 bit } m_axi_gmem0_0_ARADDR { O 64 vector } m_axi_gmem0_0_ARID { O 1 vector } m_axi_gmem0_0_ARLEN { O 32 vector } m_axi_gmem0_0_ARSIZE { O 3 vector } m_axi_gmem0_0_ARBURST { O 2 vector } m_axi_gmem0_0_ARLOCK { O 2 vector } m_axi_gmem0_0_ARCACHE { O 4 vector } m_axi_gmem0_0_ARPROT { O 3 vector } m_axi_gmem0_0_ARQOS { O 4 vector } m_axi_gmem0_0_ARREGION { O 4 vector } m_axi_gmem0_0_ARUSER { O 1 vector } m_axi_gmem0_0_RVALID { I 1 bit } m_axi_gmem0_0_RREADY { O 1 bit } m_axi_gmem0_0_RDATA { I 8 vector } m_axi_gmem0_0_RLAST { I 1 bit } m_axi_gmem0_0_RID { I 1 vector } m_axi_gmem0_0_RFIFONUM { I 11 vector } m_axi_gmem0_0_RUSER { I 1 vector } m_axi_gmem0_0_RRESP { I 2 vector } m_axi_gmem0_0_BVALID { I 1 bit } m_axi_gmem0_0_BREADY { O 1 bit } m_axi_gmem0_0_BRESP { I 2 vector } m_axi_gmem0_0_BID { I 1 vector } m_axi_gmem0_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name outputPool \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputPool \
    op interface \
    ports { outputPool { I 64 vector } } \
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



# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


set name top_mul_4s_7ns_11_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_mac_muladd_7ns_3s_11s_12_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_6_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_4_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_3_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_0_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_1_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_2_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_5_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_7_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_conv2_Pipeline_CI_2_p_ZL12conv2_weight_8_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 185 \
    name input_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_0 \
    op interface \
    ports { input_0_address0 { O 8 vector } input_0_ce0 { O 1 bit } input_0_q0 { I 7 vector } input_0_address1 { O 8 vector } input_0_ce1 { O 1 bit } input_0_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name input_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_1 \
    op interface \
    ports { input_1_address0 { O 8 vector } input_1_ce0 { O 1 bit } input_1_q0 { I 7 vector } input_1_address1 { O 8 vector } input_1_ce1 { O 1 bit } input_1_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name input_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_2 \
    op interface \
    ports { input_2_address0 { O 8 vector } input_2_ce0 { O 1 bit } input_2_q0 { I 7 vector } input_2_address1 { O 8 vector } input_2_ce1 { O 1 bit } input_2_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name input_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_3 \
    op interface \
    ports { input_3_address0 { O 8 vector } input_3_ce0 { O 1 bit } input_3_q0 { I 7 vector } input_3_address1 { O 8 vector } input_3_ce1 { O 1 bit } input_3_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name input_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_4 \
    op interface \
    ports { input_4_address0 { O 8 vector } input_4_ce0 { O 1 bit } input_4_q0 { I 7 vector } input_4_address1 { O 8 vector } input_4_ce1 { O 1 bit } input_4_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name input_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_5 \
    op interface \
    ports { input_5_address0 { O 8 vector } input_5_ce0 { O 1 bit } input_5_q0 { I 7 vector } input_5_address1 { O 8 vector } input_5_ce1 { O 1 bit } input_5_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name input_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_6 \
    op interface \
    ports { input_6_address0 { O 8 vector } input_6_ce0 { O 1 bit } input_6_q0 { I 7 vector } input_6_address1 { O 8 vector } input_6_ce1 { O 1 bit } input_6_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name input_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_7 \
    op interface \
    ports { input_7_address0 { O 8 vector } input_7_ce0 { O 1 bit } input_7_q0 { I 7 vector } input_7_address1 { O 8 vector } input_7_ce1 { O 1 bit } input_7_q1 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name add_ln85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln85 \
    op interface \
    ports { add_ln85 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name add_ln83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln83 \
    op interface \
    ports { add_ln83 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name add_ln83_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln83_1 \
    op interface \
    ports { add_ln83_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name add_ln82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln82 \
    op interface \
    ports { add_ln82 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name and_ln85_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln85_3 \
    op interface \
    ports { and_ln85_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name sext_ln85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln85 \
    op interface \
    ports { sext_ln85 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name zext_ln82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln82 \
    op interface \
    ports { zext_ln82 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name and_ln85_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln85_2 \
    op interface \
    ports { and_ln85_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name zext_ln70_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln70_1 \
    op interface \
    ports { zext_ln70_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name and_ln85_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln85_1 \
    op interface \
    ports { and_ln85_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name shl_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln \
    op interface \
    ports { shl_ln { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name mul_ln104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln104 \
    op interface \
    ports { mul_ln104 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name and_ln85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln85 \
    op interface \
    ports { and_ln85 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name zext_ln85_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln85_1 \
    op interface \
    ports { zext_ln85_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8 \
    op interface \
    ports { conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_i { I 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o { O 8 vector } conv2_ap_fixed_8_5_5_3_0_ap_fixed_8_5_5_3_0_partial_sums_8_o_ap_vld { O 1 bit } } \
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



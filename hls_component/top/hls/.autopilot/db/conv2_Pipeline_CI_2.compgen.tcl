# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_sparsemux_17_3_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler top_mac_muladd_8s_8s_11s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 364 \
    name temp \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp \
    op interface \
    ports { temp_address0 { O 8 vector } temp_ce0 { O 1 bit } temp_q0 { I 8 vector } temp_address1 { O 8 vector } temp_ce1 { O 1 bit } temp_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name temp_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_1 \
    op interface \
    ports { temp_1_address0 { O 8 vector } temp_1_ce0 { O 1 bit } temp_1_q0 { I 8 vector } temp_1_address1 { O 8 vector } temp_1_ce1 { O 1 bit } temp_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name temp_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_2 \
    op interface \
    ports { temp_2_address0 { O 8 vector } temp_2_ce0 { O 1 bit } temp_2_q0 { I 8 vector } temp_2_address1 { O 8 vector } temp_2_ce1 { O 1 bit } temp_2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name temp_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_3 \
    op interface \
    ports { temp_3_address0 { O 8 vector } temp_3_ce0 { O 1 bit } temp_3_q0 { I 8 vector } temp_3_address1 { O 8 vector } temp_3_ce1 { O 1 bit } temp_3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name temp_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_4 \
    op interface \
    ports { temp_4_address0 { O 8 vector } temp_4_ce0 { O 1 bit } temp_4_q0 { I 8 vector } temp_4_address1 { O 8 vector } temp_4_ce1 { O 1 bit } temp_4_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name temp_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_5 \
    op interface \
    ports { temp_5_address0 { O 8 vector } temp_5_ce0 { O 1 bit } temp_5_q0 { I 8 vector } temp_5_address1 { O 8 vector } temp_5_ce1 { O 1 bit } temp_5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name temp_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_6 \
    op interface \
    ports { temp_6_address0 { O 8 vector } temp_6_ce0 { O 1 bit } temp_6_q0 { I 8 vector } temp_6_address1 { O 8 vector } temp_6_ce1 { O 1 bit } temp_6_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 371 \
    name temp_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename temp_7 \
    op interface \
    ports { temp_7_address0 { O 8 vector } temp_7_ce0 { O 1 bit } temp_7_q0 { I 8 vector } temp_7_address1 { O 8 vector } temp_7_ce1 { O 1 bit } temp_7_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'temp_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 382 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 394 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 395 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 396 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 397 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_address0 { O 7 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_ce0 { O 1 bit } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_local_weight'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name add_ln110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln110 \
    op interface \
    ports { add_ln110 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name add_ln108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln108 \
    op interface \
    ports { add_ln108 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name add_ln108_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln108_1 \
    op interface \
    ports { add_ln108_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name add_ln107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln107 \
    op interface \
    ports { add_ln107 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name and_ln110_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln110_3 \
    op interface \
    ports { and_ln110_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name sext_ln110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln110 \
    op interface \
    ports { sext_ln110 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name zext_ln127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln127 \
    op interface \
    ports { zext_ln127 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name and_ln110_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln110_2 \
    op interface \
    ports { and_ln110_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name zext_ln95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln95 \
    op interface \
    ports { zext_ln95 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name and_ln110_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln110_1 \
    op interface \
    ports { and_ln110_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
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
    id 377 \
    name mul_ln107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln107 \
    op interface \
    ports { mul_ln107 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
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
    id 379 \
    name and_ln110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln110 \
    op interface \
    ports { and_ln110 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name zext_ln110_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln110_1 \
    op interface \
    ports { zext_ln110_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1 \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums \
    op interface \
    ports { conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_i { I 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o { O 8 vector } conv2_ap_fixed_ap_fixed_ap_fixed_ap_fixed_8_5_5_3_0_partial_sums_o_ap_vld { O 1 bit } } \
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



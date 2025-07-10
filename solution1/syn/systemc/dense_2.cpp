#include "dense.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void dense::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && 
         !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2411_p2.read()))) {
        c_0_reg_2298 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state47.read()) && 
                esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
        c_0_reg_2298 = c_reg_10932.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        i2_0_reg_2287 = ap_const_lv13_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state19.read())) {
        i2_0_reg_2287 = i_1_reg_10863.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state40.read())) {
        i3_0_0_reg_2332 = add_ln33_96_reg_11116.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state29.read())) {
        i3_0_0_reg_2332 = ap_const_lv10_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_0_reg_2276 = ap_const_lv10_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        i_0_reg_2276 = i_reg_10799.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state40.read())) {
        p_Val2_1_0_reg_2321 = add_ln703_111_fu_10768_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state29.read())) {
        p_Val2_1_0_reg_2321 = sum_V_reg_10948.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && 
         !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2411_p2.read()))) {
        phi_mul_reg_2309 = ap_const_lv13_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state47.read()) && 
                esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
        phi_mul_reg_2309 = add_ln35_112_reg_10924.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_fu_2490_p2.read()))) {
        add_ln33_96_reg_11116 = add_ln33_96_fu_3124_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read())) {
        add_ln35_112_reg_10924 = add_ln35_112_fu_2449_p2.read();
        c_reg_10932 = c_fu_2461_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read())) {
        add_ln703_100_reg_12797 = add_ln703_100_fu_10716_p2.read();
        add_ln703_102_reg_12802 = add_ln703_102_fu_10726_p2.read();
        add_ln703_105_reg_12807 = add_ln703_105_fu_10739_p2.read();
        add_ln703_81_reg_12787 = add_ln703_81_fu_10669_p2.read();
        add_ln703_94_reg_12792 = add_ln703_94_fu_10688_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state39.read())) {
        add_ln703_109_reg_12812 = add_ln703_109_fu_10759_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        add_ln703_10_reg_11617 = add_ln703_10_fu_5430_p2.read();
        add_ln703_5_reg_11607 = add_ln703_5_fu_5407_p2.read();
        add_ln703_7_reg_11612 = add_ln703_7_fu_5417_p2.read();
        trunc_ln708_15_reg_11367 = mul_ln1118_16_fu_4272_p2.read().range(10, 3);
        trunc_ln708_16_reg_11372 = mul_ln1118_17_fu_4296_p2.read().range(10, 3);
        trunc_ln708_17_reg_11377 = mul_ln1118_18_fu_4320_p2.read().range(10, 3);
        trunc_ln708_18_reg_11382 = mul_ln1118_19_fu_4344_p2.read().range(10, 3);
        trunc_ln708_19_reg_11387 = mul_ln1118_20_fu_4368_p2.read().range(10, 3);
        trunc_ln708_20_reg_11392 = mul_ln1118_21_fu_4392_p2.read().range(10, 3);
        trunc_ln708_21_reg_11397 = mul_ln1118_22_fu_4416_p2.read().range(10, 3);
        trunc_ln708_22_reg_11402 = mul_ln1118_23_fu_4440_p2.read().range(10, 3);
        trunc_ln708_23_reg_11407 = mul_ln1118_24_fu_4464_p2.read().range(10, 3);
        trunc_ln708_24_reg_11412 = mul_ln1118_25_fu_4488_p2.read().range(10, 3);
        trunc_ln708_25_reg_11417 = mul_ln1118_26_fu_4512_p2.read().range(10, 3);
        trunc_ln708_26_reg_11422 = mul_ln1118_27_fu_4536_p2.read().range(10, 3);
        trunc_ln708_27_reg_11427 = mul_ln1118_28_fu_4560_p2.read().range(10, 3);
        trunc_ln708_28_reg_11432 = mul_ln1118_29_fu_4584_p2.read().range(10, 3);
        trunc_ln708_29_reg_11437 = mul_ln1118_30_fu_4608_p2.read().range(10, 3);
        trunc_ln708_30_reg_11442 = mul_ln1118_31_fu_4632_p2.read().range(10, 3);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        add_ln703_12_reg_11862 = add_ln703_12_fu_6560_p2.read();
        add_ln703_18_reg_11867 = add_ln703_18_fu_6588_p2.read();
        add_ln703_24_reg_11872 = add_ln703_24_fu_6617_p2.read();
        add_ln703_28_reg_11877 = add_ln703_28_fu_6627_p2.read();
        trunc_ln708_31_reg_11622 = mul_ln1118_32_fu_5444_p2.read().range(10, 3);
        trunc_ln708_32_reg_11627 = mul_ln1118_33_fu_5468_p2.read().range(10, 3);
        trunc_ln708_33_reg_11632 = mul_ln1118_34_fu_5492_p2.read().range(10, 3);
        trunc_ln708_34_reg_11637 = mul_ln1118_35_fu_5516_p2.read().range(10, 3);
        trunc_ln708_35_reg_11642 = mul_ln1118_36_fu_5540_p2.read().range(10, 3);
        trunc_ln708_36_reg_11647 = mul_ln1118_37_fu_5564_p2.read().range(10, 3);
        trunc_ln708_37_reg_11652 = mul_ln1118_38_fu_5588_p2.read().range(10, 3);
        trunc_ln708_38_reg_11657 = mul_ln1118_39_fu_5612_p2.read().range(10, 3);
        trunc_ln708_39_reg_11662 = mul_ln1118_40_fu_5636_p2.read().range(10, 3);
        trunc_ln708_40_reg_11667 = mul_ln1118_41_fu_5660_p2.read().range(10, 3);
        trunc_ln708_41_reg_11672 = mul_ln1118_42_fu_5684_p2.read().range(10, 3);
        trunc_ln708_42_reg_11677 = mul_ln1118_43_fu_5708_p2.read().range(10, 3);
        trunc_ln708_43_reg_11682 = mul_ln1118_44_fu_5732_p2.read().range(10, 3);
        trunc_ln708_44_reg_11687 = mul_ln1118_45_fu_5756_p2.read().range(10, 3);
        trunc_ln708_45_reg_11692 = mul_ln1118_46_fu_5780_p2.read().range(10, 3);
        trunc_ln708_46_reg_11697 = mul_ln1118_47_fu_5804_p2.read().range(10, 3);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        add_ln703_26_reg_12122 = add_ln703_26_fu_7756_p2.read();
        add_ln703_32_reg_12127 = add_ln703_32_fu_7775_p2.read();
        add_ln703_34_reg_12132 = add_ln703_34_fu_7784_p2.read();
        add_ln703_37_reg_12137 = add_ln703_37_fu_7797_p2.read();
        add_ln703_41_reg_12142 = add_ln703_41_fu_7807_p2.read();
        add_ln703_42_reg_12147 = add_ln703_42_fu_7812_p2.read();
        trunc_ln708_47_reg_11882 = mul_ln1118_48_fu_6640_p2.read().range(10, 3);
        trunc_ln708_48_reg_11887 = mul_ln1118_49_fu_6664_p2.read().range(10, 3);
        trunc_ln708_49_reg_11892 = mul_ln1118_50_fu_6688_p2.read().range(10, 3);
        trunc_ln708_50_reg_11897 = mul_ln1118_51_fu_6712_p2.read().range(10, 3);
        trunc_ln708_51_reg_11902 = mul_ln1118_52_fu_6736_p2.read().range(10, 3);
        trunc_ln708_52_reg_11907 = mul_ln1118_53_fu_6760_p2.read().range(10, 3);
        trunc_ln708_53_reg_11912 = mul_ln1118_54_fu_6784_p2.read().range(10, 3);
        trunc_ln708_54_reg_11917 = mul_ln1118_55_fu_6808_p2.read().range(10, 3);
        trunc_ln708_55_reg_11922 = mul_ln1118_56_fu_6832_p2.read().range(10, 3);
        trunc_ln708_56_reg_11927 = mul_ln1118_57_fu_6856_p2.read().range(10, 3);
        trunc_ln708_57_reg_11932 = mul_ln1118_58_fu_6880_p2.read().range(10, 3);
        trunc_ln708_58_reg_11937 = mul_ln1118_59_fu_6904_p2.read().range(10, 3);
        trunc_ln708_59_reg_11942 = mul_ln1118_60_fu_6928_p2.read().range(10, 3);
        trunc_ln708_60_reg_11947 = mul_ln1118_61_fu_6952_p2.read().range(10, 3);
        trunc_ln708_61_reg_11952 = mul_ln1118_62_fu_6976_p2.read().range(10, 3);
        trunc_ln708_62_reg_11957 = mul_ln1118_63_fu_7000_p2.read().range(10, 3);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        add_ln703_39_reg_12392 = add_ln703_39_fu_8940_p2.read();
        add_ln703_45_reg_12397 = add_ln703_45_fu_8954_p2.read();
        add_ln703_47_reg_12402 = add_ln703_47_fu_8963_p2.read();
        add_ln703_50_reg_12407 = add_ln703_50_fu_8976_p2.read();
        add_ln703_60_reg_12412 = add_ln703_60_fu_9005_p2.read();
        trunc_ln708_63_reg_12152 = mul_ln1118_64_fu_7824_p2.read().range(10, 3);
        trunc_ln708_64_reg_12157 = mul_ln1118_65_fu_7848_p2.read().range(10, 3);
        trunc_ln708_65_reg_12162 = mul_ln1118_66_fu_7872_p2.read().range(10, 3);
        trunc_ln708_66_reg_12167 = mul_ln1118_67_fu_7896_p2.read().range(10, 3);
        trunc_ln708_67_reg_12172 = mul_ln1118_68_fu_7920_p2.read().range(10, 3);
        trunc_ln708_68_reg_12177 = mul_ln1118_69_fu_7944_p2.read().range(10, 3);
        trunc_ln708_69_reg_12182 = mul_ln1118_70_fu_7968_p2.read().range(10, 3);
        trunc_ln708_70_reg_12187 = mul_ln1118_71_fu_7992_p2.read().range(10, 3);
        trunc_ln708_71_reg_12192 = mul_ln1118_72_fu_8016_p2.read().range(10, 3);
        trunc_ln708_72_reg_12197 = mul_ln1118_73_fu_8040_p2.read().range(10, 3);
        trunc_ln708_73_reg_12202 = mul_ln1118_74_fu_8064_p2.read().range(10, 3);
        trunc_ln708_74_reg_12207 = mul_ln1118_75_fu_8088_p2.read().range(10, 3);
        trunc_ln708_75_reg_12212 = mul_ln1118_76_fu_8112_p2.read().range(10, 3);
        trunc_ln708_76_reg_12217 = mul_ln1118_77_fu_8136_p2.read().range(10, 3);
        trunc_ln708_77_reg_12222 = mul_ln1118_78_fu_8160_p2.read().range(10, 3);
        trunc_ln708_78_reg_12227 = mul_ln1118_79_fu_8184_p2.read().range(10, 3);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        add_ln703_54_reg_12657 = add_ln703_54_fu_10145_p2.read();
        add_ln703_62_reg_12662 = add_ln703_62_fu_10154_p2.read();
        add_ln703_65_reg_12667 = add_ln703_65_fu_10167_p2.read();
        add_ln703_73_reg_12672 = add_ln703_73_fu_10196_p2.read();
        add_ln703_75_reg_12677 = add_ln703_75_fu_10206_p2.read();
        trunc_ln708_79_reg_12417 = mul_ln1118_80_fu_9019_p2.read().range(10, 3);
        trunc_ln708_80_reg_12422 = mul_ln1118_81_fu_9043_p2.read().range(10, 3);
        trunc_ln708_81_reg_12427 = mul_ln1118_82_fu_9067_p2.read().range(10, 3);
        trunc_ln708_82_reg_12432 = mul_ln1118_83_fu_9091_p2.read().range(10, 3);
        trunc_ln708_83_reg_12437 = mul_ln1118_84_fu_9115_p2.read().range(10, 3);
        trunc_ln708_84_reg_12442 = mul_ln1118_85_fu_9139_p2.read().range(10, 3);
        trunc_ln708_85_reg_12447 = mul_ln1118_86_fu_9163_p2.read().range(10, 3);
        trunc_ln708_86_reg_12452 = mul_ln1118_87_fu_9187_p2.read().range(10, 3);
        trunc_ln708_87_reg_12457 = mul_ln1118_88_fu_9211_p2.read().range(10, 3);
        trunc_ln708_88_reg_12462 = mul_ln1118_89_fu_9235_p2.read().range(10, 3);
        trunc_ln708_89_reg_12467 = mul_ln1118_90_fu_9259_p2.read().range(10, 3);
        trunc_ln708_90_reg_12472 = mul_ln1118_91_fu_9283_p2.read().range(10, 3);
        trunc_ln708_91_reg_12477 = mul_ln1118_92_fu_9307_p2.read().range(10, 3);
        trunc_ln708_92_reg_12482 = mul_ln1118_93_fu_9331_p2.read().range(10, 3);
        trunc_ln708_93_reg_12487 = mul_ln1118_94_fu_9355_p2.read().range(10, 3);
        trunc_ln708_94_reg_12492 = mul_ln1118_95_fu_9379_p2.read().range(10, 3);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        add_ln703_67_reg_12762 = add_ln703_67_fu_10599_p2.read();
        add_ln703_79_reg_12767 = add_ln703_79_fu_10618_p2.read();
        add_ln703_87_reg_12772 = add_ln703_87_fu_10646_p2.read();
        add_ln703_89_reg_12777 = add_ln703_89_fu_10656_p2.read();
        add_ln703_90_reg_12782 = add_ln703_90_fu_10661_p2.read();
        trunc_ln708_100_reg_12707 = mul_ln1118_101_fu_10339_p2.read().range(10, 3);
        trunc_ln708_101_reg_12712 = mul_ln1118_102_fu_10363_p2.read().range(10, 3);
        trunc_ln708_102_reg_12717 = mul_ln1118_103_fu_10387_p2.read().range(10, 3);
        trunc_ln708_103_reg_12722 = mul_ln1118_104_fu_10411_p2.read().range(10, 3);
        trunc_ln708_104_reg_12727 = mul_ln1118_105_fu_10435_p2.read().range(10, 3);
        trunc_ln708_105_reg_12732 = mul_ln1118_106_fu_10459_p2.read().range(10, 3);
        trunc_ln708_106_reg_12737 = mul_ln1118_107_fu_10483_p2.read().range(10, 3);
        trunc_ln708_107_reg_12742 = mul_ln1118_108_fu_10507_p2.read().range(10, 3);
        trunc_ln708_108_reg_12747 = mul_ln1118_109_fu_10531_p2.read().range(10, 3);
        trunc_ln708_109_reg_12752 = mul_ln1118_110_fu_10555_p2.read().range(10, 3);
        trunc_ln708_110_reg_12757 = mul_ln1118_111_fu_10579_p2.read().range(10, 3);
        trunc_ln708_95_reg_12682 = mul_ln1118_96_fu_10219_p2.read().range(10, 3);
        trunc_ln708_96_reg_12687 = mul_ln1118_97_fu_10243_p2.read().range(10, 3);
        trunc_ln708_97_reg_12692 = mul_ln1118_98_fu_10267_p2.read().range(10, 3);
        trunc_ln708_98_reg_12697 = mul_ln1118_99_fu_10291_p2.read().range(10, 3);
        trunc_ln708_99_reg_12702 = mul_ln1118_100_fu_10315_p2.read().range(10, 3);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln33_fu_2490_p2.read()))) {
        fcBias_V_addr_1_reg_11121 =  (sc_lv<32>) (sext_ln203_fu_3134_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_fu_2455_p2.read()))) {
        fcBias_V_addr_reg_10942 =  (sc_lv<32>) (sext_ln31_fu_2476_p1.read());
        zext_ln31_reg_10937 = zext_ln31_fu_2467_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
        i_1_reg_10863 = i_1_fu_2417_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        i_reg_10799 = i_fu_2379_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        input_V_addr_1_read_reg_10804 = m_axi_input_V_RDATA.read();
        temp_0_V_addr_reg_10820 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_1_V_addr_reg_10825 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_2_V_addr_reg_10830 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_3_V_addr_reg_10835 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_4_V_addr_reg_10840 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_5_V_addr_reg_10845 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_6_V_addr_reg_10850 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        temp_7_V_addr_reg_10855 =  (sc_lv<7>) (zext_ln203_fu_2399_p1.read());
        trunc_ln203_reg_10816 = trunc_ln203_fu_2385_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
        input_V_addr_read_reg_10868 = m_axi_input_V_RDATA.read();
        tempWeight_0_V_addr_reg_10884 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_1_V_addr_reg_10889 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_2_V_addr_reg_10894 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_3_V_addr_reg_10899 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_4_V_addr_reg_10904 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_5_V_addr_reg_10909 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_6_V_addr_reg_10914 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        tempWeight_7_V_addr_reg_10919 =  (sc_lv<10>) (zext_ln203_1_fu_2437_p1.read());
        trunc_ln203_1_reg_10880 = trunc_ln203_1_fu_2423_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        input_V_addr_reg_10785 =  (sc_lv<32>) (sext_ln8_1_fu_2359_p1.read());
        sext_ln7_reg_10791 = sext_ln7_fu_2369_p1.read();
        sext_ln8_reg_10780 = sext_ln8_fu_2355_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state28.read()) && esl_seteq<1,1,1>(m_axi_input_V_RVALID.read(), ap_const_logic_1))) {
        sum_V_reg_10948 = m_axi_input_V_RDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        trunc_ln2_reg_11127 = mul_ln1118_fu_3152_p2.read().range(10, 3);
        trunc_ln708_10_reg_11182 = mul_ln1118_11_fu_3416_p2.read().range(10, 3);
        trunc_ln708_11_reg_11187 = mul_ln1118_12_fu_3440_p2.read().range(10, 3);
        trunc_ln708_12_reg_11192 = mul_ln1118_13_fu_3464_p2.read().range(10, 3);
        trunc_ln708_13_reg_11197 = mul_ln1118_14_fu_3488_p2.read().range(10, 3);
        trunc_ln708_14_reg_11202 = mul_ln1118_15_fu_3512_p2.read().range(10, 3);
        trunc_ln708_1_reg_11132 = mul_ln1118_1_fu_3176_p2.read().range(10, 3);
        trunc_ln708_2_reg_11137 = mul_ln1118_2_fu_3200_p2.read().range(10, 3);
        trunc_ln708_3_reg_11142 = mul_ln1118_3_fu_3224_p2.read().range(10, 3);
        trunc_ln708_4_reg_11147 = mul_ln1118_4_fu_3248_p2.read().range(10, 3);
        trunc_ln708_5_reg_11152 = mul_ln1118_5_fu_3272_p2.read().range(10, 3);
        trunc_ln708_6_reg_11157 = mul_ln1118_6_fu_3296_p2.read().range(10, 3);
        trunc_ln708_7_reg_11162 = mul_ln1118_7_fu_3320_p2.read().range(10, 3);
        trunc_ln708_8_reg_11167 = mul_ln1118_8_fu_3344_p2.read().range(10, 3);
        trunc_ln708_9_reg_11172 = mul_ln1118_9_fu_3368_p2.read().range(10, 3);
        trunc_ln708_s_reg_11177 = mul_ln1118_10_fu_3392_p2.read().range(10, 3);
    }
}

void dense::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_ARREADY.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
                ap_NS_fsm = ap_ST_fsm_state11;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state16;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 65536 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2411_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state20;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
                ap_NS_fsm = ap_ST_fsm_state18;
            } else {
                ap_NS_fsm = ap_ST_fsm_state17;
            }
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state19;
            break;
        case 262144 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 524288 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_fu_2455_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state21;
            }
            break;
        case 1048576 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()) && esl_seteq<1,1,1>(m_axi_input_V_ARREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state22;
            } else {
                ap_NS_fsm = ap_ST_fsm_state21;
            }
            break;
        case 2097152 : 
            ap_NS_fsm = ap_ST_fsm_state23;
            break;
        case 4194304 : 
            ap_NS_fsm = ap_ST_fsm_state24;
            break;
        case 8388608 : 
            ap_NS_fsm = ap_ST_fsm_state25;
            break;
        case 16777216 : 
            ap_NS_fsm = ap_ST_fsm_state26;
            break;
        case 33554432 : 
            ap_NS_fsm = ap_ST_fsm_state27;
            break;
        case 67108864 : 
            ap_NS_fsm = ap_ST_fsm_state28;
            break;
        case 134217728 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state28.read()) && esl_seteq<1,1,1>(m_axi_input_V_RVALID.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state29;
            } else {
                ap_NS_fsm = ap_ST_fsm_state28;
            }
            break;
        case 268435456 : 
            ap_NS_fsm = ap_ST_fsm_state30;
            break;
        case 536870912 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln33_fu_2490_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state41;
            } else {
                ap_NS_fsm = ap_ST_fsm_state31;
            }
            break;
        case 1073741824 : 
            ap_NS_fsm = ap_ST_fsm_state32;
            break;
        case 2147483648 : 
            ap_NS_fsm = ap_ST_fsm_state33;
            break;
        case 4294967296 : 
            ap_NS_fsm = ap_ST_fsm_state34;
            break;
        case 8589934592 : 
            ap_NS_fsm = ap_ST_fsm_state35;
            break;
        case 17179869184 : 
            ap_NS_fsm = ap_ST_fsm_state36;
            break;
        case 34359738368 : 
            ap_NS_fsm = ap_ST_fsm_state37;
            break;
        case 68719476736 : 
            ap_NS_fsm = ap_ST_fsm_state38;
            break;
        case 137438953472 : 
            ap_NS_fsm = ap_ST_fsm_state39;
            break;
        case 274877906944 : 
            ap_NS_fsm = ap_ST_fsm_state40;
            break;
        case 549755813888 : 
            ap_NS_fsm = ap_ST_fsm_state30;
            break;
        case 1099511627776 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state41.read()) && esl_seteq<1,1,1>(m_axi_input_V_AWREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state42;
            } else {
                ap_NS_fsm = ap_ST_fsm_state41;
            }
            break;
        case 2199023255552 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && esl_seteq<1,1,1>(m_axi_input_V_WREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state43;
            } else {
                ap_NS_fsm = ap_ST_fsm_state42;
            }
            break;
        case 4398046511104 : 
            ap_NS_fsm = ap_ST_fsm_state44;
            break;
        case 8796093022208 : 
            ap_NS_fsm = ap_ST_fsm_state45;
            break;
        case 17592186044416 : 
            ap_NS_fsm = ap_ST_fsm_state46;
            break;
        case 35184372088832 : 
            ap_NS_fsm = ap_ST_fsm_state47;
            break;
        case 70368744177664 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state47.read()) && esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state20;
            } else {
                ap_NS_fsm = ap_ST_fsm_state47;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<47>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
            break;
    }
}

}


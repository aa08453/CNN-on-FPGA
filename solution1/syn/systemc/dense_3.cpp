#include "dense.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void dense::thread_add_ln203_fu_3130_p2() {
    add_ln203_fu_3130_p2 = (!zext_ln31_reg_10937.read().is_01() || !sext_ln7_reg_10791.read().is_01())? sc_lv<33>(): (sc_biguint<33>(zext_ln31_reg_10937.read()) + sc_bigint<33>(sext_ln7_reg_10791.read()));
}

void dense::thread_add_ln31_fu_2471_p2() {
    add_ln31_fu_2471_p2 = (!sext_ln8_reg_10780.read().is_01() || !zext_ln31_fu_2467_p1.read().is_01())? sc_lv<33>(): (sc_bigint<33>(sext_ln8_reg_10780.read()) + sc_biguint<33>(zext_ln31_fu_2467_p1.read()));
}

void dense::thread_add_ln33_10_fu_3988_p2() {
    add_ln33_10_fu_3988_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1A));
}

void dense::thread_add_ln33_11_fu_4034_p2() {
    add_ln33_11_fu_4034_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1B));
}

void dense::thread_add_ln33_12_fu_4080_p2() {
    add_ln33_12_fu_4080_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1C));
}

void dense::thread_add_ln33_13_fu_4126_p2() {
    add_ln33_13_fu_4126_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1D));
}

void dense::thread_add_ln33_14_fu_4172_p2() {
    add_ln33_14_fu_4172_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1E));
}

void dense::thread_add_ln33_15_fu_4218_p2() {
    add_ln33_15_fu_4218_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_1F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_1F));
}

void dense::thread_add_ln33_16_fu_4648_p2() {
    add_ln33_16_fu_4648_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_20.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_20));
}

void dense::thread_add_ln33_17_fu_4694_p2() {
    add_ln33_17_fu_4694_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_21.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_21));
}

void dense::thread_add_ln33_18_fu_4740_p2() {
    add_ln33_18_fu_4740_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_22.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_22));
}

void dense::thread_add_ln33_19_fu_4786_p2() {
    add_ln33_19_fu_4786_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_23.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_23));
}

void dense::thread_add_ln33_1_fu_3574_p2() {
    add_ln33_1_fu_3574_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_11.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_11));
}

void dense::thread_add_ln33_20_fu_4832_p2() {
    add_ln33_20_fu_4832_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_24.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_24));
}

void dense::thread_add_ln33_21_fu_4878_p2() {
    add_ln33_21_fu_4878_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_25.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_25));
}

void dense::thread_add_ln33_22_fu_4924_p2() {
    add_ln33_22_fu_4924_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_26.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_26));
}

void dense::thread_add_ln33_23_fu_4970_p2() {
    add_ln33_23_fu_4970_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_27.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_27));
}

void dense::thread_add_ln33_24_fu_5016_p2() {
    add_ln33_24_fu_5016_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_28.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_28));
}

void dense::thread_add_ln33_25_fu_5062_p2() {
    add_ln33_25_fu_5062_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_29.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_29));
}

void dense::thread_add_ln33_26_fu_5108_p2() {
    add_ln33_26_fu_5108_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2A));
}

void dense::thread_add_ln33_27_fu_5154_p2() {
    add_ln33_27_fu_5154_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2B));
}

void dense::thread_add_ln33_28_fu_5200_p2() {
    add_ln33_28_fu_5200_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2C));
}

void dense::thread_add_ln33_29_fu_5246_p2() {
    add_ln33_29_fu_5246_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2D));
}

void dense::thread_add_ln33_2_fu_3620_p2() {
    add_ln33_2_fu_3620_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_12.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_12));
}

void dense::thread_add_ln33_30_fu_5292_p2() {
    add_ln33_30_fu_5292_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2E));
}

void dense::thread_add_ln33_31_fu_5338_p2() {
    add_ln33_31_fu_5338_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_2F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_2F));
}

void dense::thread_add_ln33_32_fu_5820_p2() {
    add_ln33_32_fu_5820_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_30.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_30));
}

void dense::thread_add_ln33_33_fu_5866_p2() {
    add_ln33_33_fu_5866_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_31.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_31));
}

void dense::thread_add_ln33_34_fu_5912_p2() {
    add_ln33_34_fu_5912_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_32.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_32));
}

void dense::thread_add_ln33_35_fu_5958_p2() {
    add_ln33_35_fu_5958_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_33.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_33));
}

void dense::thread_add_ln33_36_fu_6004_p2() {
    add_ln33_36_fu_6004_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_34.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_34));
}

void dense::thread_add_ln33_37_fu_6050_p2() {
    add_ln33_37_fu_6050_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_35.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_35));
}

void dense::thread_add_ln33_38_fu_6096_p2() {
    add_ln33_38_fu_6096_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_36.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_36));
}

void dense::thread_add_ln33_39_fu_6142_p2() {
    add_ln33_39_fu_6142_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_37.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_37));
}

void dense::thread_add_ln33_3_fu_3666_p2() {
    add_ln33_3_fu_3666_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_13.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_13));
}

void dense::thread_add_ln33_40_fu_6188_p2() {
    add_ln33_40_fu_6188_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_38.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_38));
}

void dense::thread_add_ln33_41_fu_6234_p2() {
    add_ln33_41_fu_6234_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_39.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_39));
}

void dense::thread_add_ln33_42_fu_6280_p2() {
    add_ln33_42_fu_6280_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3A));
}

void dense::thread_add_ln33_43_fu_6326_p2() {
    add_ln33_43_fu_6326_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3B));
}

void dense::thread_add_ln33_44_fu_6372_p2() {
    add_ln33_44_fu_6372_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3C));
}

void dense::thread_add_ln33_45_fu_6418_p2() {
    add_ln33_45_fu_6418_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3D));
}

void dense::thread_add_ln33_46_fu_6464_p2() {
    add_ln33_46_fu_6464_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3E));
}

void dense::thread_add_ln33_47_fu_6510_p2() {
    add_ln33_47_fu_6510_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_3F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_3F));
}

void dense::thread_add_ln33_48_fu_7016_p2() {
    add_ln33_48_fu_7016_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_40.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_40));
}

void dense::thread_add_ln33_49_fu_7062_p2() {
    add_ln33_49_fu_7062_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_41.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_41));
}

void dense::thread_add_ln33_4_fu_3712_p2() {
    add_ln33_4_fu_3712_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_14.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_14));
}

void dense::thread_add_ln33_50_fu_7108_p2() {
    add_ln33_50_fu_7108_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_42.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_42));
}

void dense::thread_add_ln33_51_fu_7154_p2() {
    add_ln33_51_fu_7154_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_43.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_43));
}

void dense::thread_add_ln33_52_fu_7200_p2() {
    add_ln33_52_fu_7200_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_44.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_44));
}

void dense::thread_add_ln33_53_fu_7246_p2() {
    add_ln33_53_fu_7246_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_45.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_45));
}

void dense::thread_add_ln33_54_fu_7292_p2() {
    add_ln33_54_fu_7292_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_46.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_46));
}

void dense::thread_add_ln33_55_fu_7338_p2() {
    add_ln33_55_fu_7338_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_47.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_47));
}

void dense::thread_add_ln33_56_fu_7384_p2() {
    add_ln33_56_fu_7384_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_48.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_48));
}

void dense::thread_add_ln33_57_fu_7430_p2() {
    add_ln33_57_fu_7430_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_49.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_49));
}

void dense::thread_add_ln33_58_fu_7476_p2() {
    add_ln33_58_fu_7476_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4A));
}

void dense::thread_add_ln33_59_fu_7522_p2() {
    add_ln33_59_fu_7522_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4B));
}

void dense::thread_add_ln33_5_fu_3758_p2() {
    add_ln33_5_fu_3758_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_15.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_15));
}

void dense::thread_add_ln33_60_fu_7568_p2() {
    add_ln33_60_fu_7568_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4C));
}

void dense::thread_add_ln33_61_fu_7614_p2() {
    add_ln33_61_fu_7614_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4D));
}

void dense::thread_add_ln33_62_fu_7660_p2() {
    add_ln33_62_fu_7660_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4E));
}

void dense::thread_add_ln33_63_fu_7706_p2() {
    add_ln33_63_fu_7706_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_4F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_4F));
}

void dense::thread_add_ln33_64_fu_8200_p2() {
    add_ln33_64_fu_8200_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_50.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_50));
}

void dense::thread_add_ln33_65_fu_8246_p2() {
    add_ln33_65_fu_8246_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_51.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_51));
}

void dense::thread_add_ln33_66_fu_8292_p2() {
    add_ln33_66_fu_8292_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_52.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_52));
}

void dense::thread_add_ln33_67_fu_8338_p2() {
    add_ln33_67_fu_8338_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_53.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_53));
}

void dense::thread_add_ln33_68_fu_8384_p2() {
    add_ln33_68_fu_8384_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_54.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_54));
}

void dense::thread_add_ln33_69_fu_8430_p2() {
    add_ln33_69_fu_8430_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_55.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_55));
}

void dense::thread_add_ln33_6_fu_3804_p2() {
    add_ln33_6_fu_3804_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_16.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_16));
}

void dense::thread_add_ln33_70_fu_8476_p2() {
    add_ln33_70_fu_8476_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_56.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_56));
}

void dense::thread_add_ln33_71_fu_8522_p2() {
    add_ln33_71_fu_8522_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_57.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_57));
}

void dense::thread_add_ln33_72_fu_8568_p2() {
    add_ln33_72_fu_8568_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_58.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_58));
}

void dense::thread_add_ln33_73_fu_8614_p2() {
    add_ln33_73_fu_8614_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_59.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_59));
}

void dense::thread_add_ln33_74_fu_8660_p2() {
    add_ln33_74_fu_8660_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5A));
}

void dense::thread_add_ln33_75_fu_8706_p2() {
    add_ln33_75_fu_8706_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5B));
}

void dense::thread_add_ln33_76_fu_8752_p2() {
    add_ln33_76_fu_8752_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5C));
}

void dense::thread_add_ln33_77_fu_8798_p2() {
    add_ln33_77_fu_8798_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5D));
}

void dense::thread_add_ln33_78_fu_8844_p2() {
    add_ln33_78_fu_8844_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5E));
}

void dense::thread_add_ln33_79_fu_8890_p2() {
    add_ln33_79_fu_8890_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_5F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_5F));
}

void dense::thread_add_ln33_7_fu_3850_p2() {
    add_ln33_7_fu_3850_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_17.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_17));
}

void dense::thread_add_ln33_80_fu_9395_p2() {
    add_ln33_80_fu_9395_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_60.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_60));
}

void dense::thread_add_ln33_81_fu_9441_p2() {
    add_ln33_81_fu_9441_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_61.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_61));
}

void dense::thread_add_ln33_82_fu_9487_p2() {
    add_ln33_82_fu_9487_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_62.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_62));
}

void dense::thread_add_ln33_83_fu_9533_p2() {
    add_ln33_83_fu_9533_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_63.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_63));
}

void dense::thread_add_ln33_84_fu_9579_p2() {
    add_ln33_84_fu_9579_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_64.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_64));
}

void dense::thread_add_ln33_85_fu_9625_p2() {
    add_ln33_85_fu_9625_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_65.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_65));
}

void dense::thread_add_ln33_86_fu_9671_p2() {
    add_ln33_86_fu_9671_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_66.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_66));
}

void dense::thread_add_ln33_87_fu_9717_p2() {
    add_ln33_87_fu_9717_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_67.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_67));
}

void dense::thread_add_ln33_88_fu_9763_p2() {
    add_ln33_88_fu_9763_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_68.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_68));
}

void dense::thread_add_ln33_89_fu_9809_p2() {
    add_ln33_89_fu_9809_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_69.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_69));
}

void dense::thread_add_ln33_8_fu_3896_p2() {
    add_ln33_8_fu_3896_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_18.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_18));
}

void dense::thread_add_ln33_90_fu_9855_p2() {
    add_ln33_90_fu_9855_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6A.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6A));
}

void dense::thread_add_ln33_91_fu_9901_p2() {
    add_ln33_91_fu_9901_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6B.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6B));
}

void dense::thread_add_ln33_92_fu_9947_p2() {
    add_ln33_92_fu_9947_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6C.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6C));
}

void dense::thread_add_ln33_93_fu_9993_p2() {
    add_ln33_93_fu_9993_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6D.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6D));
}

void dense::thread_add_ln33_94_fu_10039_p2() {
    add_ln33_94_fu_10039_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6E.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6E));
}

void dense::thread_add_ln33_95_fu_10085_p2() {
    add_ln33_95_fu_10085_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_6F.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_6F));
}

void dense::thread_add_ln33_96_fu_3124_p2() {
    add_ln33_96_fu_3124_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_70.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_70));
}

void dense::thread_add_ln33_9_fu_3942_p2() {
    add_ln33_9_fu_3942_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_19.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_19));
}

void dense::thread_add_ln33_fu_3528_p2() {
    add_ln33_fu_3528_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_10.is_01())? sc_lv<10>(): (sc_biguint<10>(i3_0_0_reg_2332.read()) + sc_biguint<10>(ap_const_lv10_10));
}

void dense::thread_add_ln35_100_fu_9589_p2() {
    add_ln35_100_fu_9589_p2 = (!zext_ln33_99_fu_9585_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_99_fu_9585_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_101_fu_9635_p2() {
    add_ln35_101_fu_9635_p2 = (!zext_ln33_100_fu_9631_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_100_fu_9631_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_102_fu_9681_p2() {
    add_ln35_102_fu_9681_p2 = (!zext_ln33_101_fu_9677_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_101_fu_9677_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_103_fu_9727_p2() {
    add_ln35_103_fu_9727_p2 = (!zext_ln33_102_fu_9723_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_102_fu_9723_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_104_fu_9773_p2() {
    add_ln35_104_fu_9773_p2 = (!zext_ln33_103_fu_9769_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_103_fu_9769_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_105_fu_9819_p2() {
    add_ln35_105_fu_9819_p2 = (!zext_ln33_104_fu_9815_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_104_fu_9815_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_106_fu_9865_p2() {
    add_ln35_106_fu_9865_p2 = (!zext_ln33_105_fu_9861_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_105_fu_9861_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_107_fu_9911_p2() {
    add_ln35_107_fu_9911_p2 = (!zext_ln33_106_fu_9907_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_106_fu_9907_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_108_fu_9957_p2() {
    add_ln35_108_fu_9957_p2 = (!zext_ln33_107_fu_9953_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_107_fu_9953_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_109_fu_10003_p2() {
    add_ln35_109_fu_10003_p2 = (!zext_ln33_108_fu_9999_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_108_fu_9999_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_10_fu_2858_p2() {
    add_ln35_10_fu_2858_p2 = (!zext_ln33_9_fu_2854_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_9_fu_2854_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_110_fu_10049_p2() {
    add_ln35_110_fu_10049_p2 = (!zext_ln33_109_fu_10045_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_109_fu_10045_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_111_fu_10095_p2() {
    add_ln35_111_fu_10095_p2 = (!zext_ln33_110_fu_10091_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_110_fu_10091_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_112_fu_2449_p2() {
    add_ln35_112_fu_2449_p2 = (!phi_mul_reg_2309.read().is_01() || !ap_const_lv13_310.is_01())? sc_lv<13>(): (sc_biguint<13>(phi_mul_reg_2309.read()) + sc_biguint<13>(ap_const_lv13_310));
}

void dense::thread_add_ln35_11_fu_2904_p2() {
    add_ln35_11_fu_2904_p2 = (!zext_ln33_10_fu_2900_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_10_fu_2900_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_12_fu_2950_p2() {
    add_ln35_12_fu_2950_p2 = (!zext_ln33_11_fu_2946_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_11_fu_2946_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_13_fu_2996_p2() {
    add_ln35_13_fu_2996_p2 = (!zext_ln33_12_fu_2992_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_12_fu_2992_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_14_fu_3042_p2() {
    add_ln35_14_fu_3042_p2 = (!zext_ln33_13_fu_3038_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_13_fu_3038_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_15_fu_3088_p2() {
    add_ln35_15_fu_3088_p2 = (!zext_ln33_14_fu_3084_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_14_fu_3084_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_16_fu_3538_p2() {
    add_ln35_16_fu_3538_p2 = (!zext_ln33_15_fu_3534_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_15_fu_3534_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_17_fu_3584_p2() {
    add_ln35_17_fu_3584_p2 = (!zext_ln33_16_fu_3580_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_16_fu_3580_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_18_fu_3630_p2() {
    add_ln35_18_fu_3630_p2 = (!zext_ln33_17_fu_3626_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_17_fu_3626_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_19_fu_3676_p2() {
    add_ln35_19_fu_3676_p2 = (!zext_ln33_18_fu_3672_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_18_fu_3672_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_1_fu_2549_p2() {
    add_ln35_1_fu_2549_p2 = (!zext_ln33_fu_2545_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_fu_2545_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_20_fu_3722_p2() {
    add_ln35_20_fu_3722_p2 = (!zext_ln33_19_fu_3718_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_19_fu_3718_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_21_fu_3768_p2() {
    add_ln35_21_fu_3768_p2 = (!zext_ln33_20_fu_3764_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_20_fu_3764_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_22_fu_3814_p2() {
    add_ln35_22_fu_3814_p2 = (!zext_ln33_21_fu_3810_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_21_fu_3810_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_23_fu_3860_p2() {
    add_ln35_23_fu_3860_p2 = (!zext_ln33_22_fu_3856_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_22_fu_3856_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_24_fu_3906_p2() {
    add_ln35_24_fu_3906_p2 = (!zext_ln33_23_fu_3902_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_23_fu_3902_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_25_fu_3952_p2() {
    add_ln35_25_fu_3952_p2 = (!zext_ln33_24_fu_3948_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_24_fu_3948_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_26_fu_3998_p2() {
    add_ln35_26_fu_3998_p2 = (!zext_ln33_25_fu_3994_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_25_fu_3994_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_27_fu_4044_p2() {
    add_ln35_27_fu_4044_p2 = (!zext_ln33_26_fu_4040_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_26_fu_4040_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_28_fu_4090_p2() {
    add_ln35_28_fu_4090_p2 = (!zext_ln33_27_fu_4086_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_27_fu_4086_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_29_fu_4136_p2() {
    add_ln35_29_fu_4136_p2 = (!zext_ln33_28_fu_4132_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_28_fu_4132_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_2_fu_2580_p2() {
    add_ln35_2_fu_2580_p2 = (!zext_ln33_1_fu_2576_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_1_fu_2576_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_30_fu_4182_p2() {
    add_ln35_30_fu_4182_p2 = (!zext_ln33_29_fu_4178_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_29_fu_4178_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_31_fu_4228_p2() {
    add_ln35_31_fu_4228_p2 = (!zext_ln33_30_fu_4224_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_30_fu_4224_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_32_fu_4658_p2() {
    add_ln35_32_fu_4658_p2 = (!zext_ln33_31_fu_4654_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_31_fu_4654_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_33_fu_4704_p2() {
    add_ln35_33_fu_4704_p2 = (!zext_ln33_32_fu_4700_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_32_fu_4700_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_34_fu_4750_p2() {
    add_ln35_34_fu_4750_p2 = (!zext_ln33_33_fu_4746_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_33_fu_4746_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_35_fu_4796_p2() {
    add_ln35_35_fu_4796_p2 = (!zext_ln33_34_fu_4792_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_34_fu_4792_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_36_fu_4842_p2() {
    add_ln35_36_fu_4842_p2 = (!zext_ln33_35_fu_4838_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_35_fu_4838_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_37_fu_4888_p2() {
    add_ln35_37_fu_4888_p2 = (!zext_ln33_36_fu_4884_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_36_fu_4884_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_38_fu_4934_p2() {
    add_ln35_38_fu_4934_p2 = (!zext_ln33_37_fu_4930_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_37_fu_4930_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_39_fu_4980_p2() {
    add_ln35_39_fu_4980_p2 = (!zext_ln33_38_fu_4976_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_38_fu_4976_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_3_fu_2611_p2() {
    add_ln35_3_fu_2611_p2 = (!zext_ln33_2_fu_2607_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_2_fu_2607_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_40_fu_5026_p2() {
    add_ln35_40_fu_5026_p2 = (!zext_ln33_39_fu_5022_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_39_fu_5022_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_41_fu_5072_p2() {
    add_ln35_41_fu_5072_p2 = (!zext_ln33_40_fu_5068_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_40_fu_5068_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_42_fu_5118_p2() {
    add_ln35_42_fu_5118_p2 = (!zext_ln33_41_fu_5114_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_41_fu_5114_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_43_fu_5164_p2() {
    add_ln35_43_fu_5164_p2 = (!zext_ln33_42_fu_5160_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_42_fu_5160_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_44_fu_5210_p2() {
    add_ln35_44_fu_5210_p2 = (!zext_ln33_43_fu_5206_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_43_fu_5206_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_45_fu_5256_p2() {
    add_ln35_45_fu_5256_p2 = (!zext_ln33_44_fu_5252_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_44_fu_5252_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_46_fu_5302_p2() {
    add_ln35_46_fu_5302_p2 = (!zext_ln33_45_fu_5298_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_45_fu_5298_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_47_fu_5348_p2() {
    add_ln35_47_fu_5348_p2 = (!zext_ln33_46_fu_5344_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_46_fu_5344_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_48_fu_5830_p2() {
    add_ln35_48_fu_5830_p2 = (!zext_ln33_47_fu_5826_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_47_fu_5826_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_49_fu_5876_p2() {
    add_ln35_49_fu_5876_p2 = (!zext_ln33_48_fu_5872_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_48_fu_5872_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_4_fu_2642_p2() {
    add_ln35_4_fu_2642_p2 = (!zext_ln33_3_fu_2638_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_3_fu_2638_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_50_fu_5922_p2() {
    add_ln35_50_fu_5922_p2 = (!zext_ln33_49_fu_5918_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_49_fu_5918_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_51_fu_5968_p2() {
    add_ln35_51_fu_5968_p2 = (!zext_ln33_50_fu_5964_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_50_fu_5964_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_52_fu_6014_p2() {
    add_ln35_52_fu_6014_p2 = (!zext_ln33_51_fu_6010_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_51_fu_6010_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_53_fu_6060_p2() {
    add_ln35_53_fu_6060_p2 = (!zext_ln33_52_fu_6056_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_52_fu_6056_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_54_fu_6106_p2() {
    add_ln35_54_fu_6106_p2 = (!zext_ln33_53_fu_6102_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_53_fu_6102_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_55_fu_6152_p2() {
    add_ln35_55_fu_6152_p2 = (!zext_ln33_54_fu_6148_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_54_fu_6148_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_56_fu_6198_p2() {
    add_ln35_56_fu_6198_p2 = (!zext_ln33_55_fu_6194_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_55_fu_6194_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_57_fu_6244_p2() {
    add_ln35_57_fu_6244_p2 = (!zext_ln33_56_fu_6240_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_56_fu_6240_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_58_fu_6290_p2() {
    add_ln35_58_fu_6290_p2 = (!zext_ln33_57_fu_6286_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_57_fu_6286_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_59_fu_6336_p2() {
    add_ln35_59_fu_6336_p2 = (!zext_ln33_58_fu_6332_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_58_fu_6332_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_5_fu_2673_p2() {
    add_ln35_5_fu_2673_p2 = (!zext_ln33_4_fu_2669_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_4_fu_2669_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_60_fu_6382_p2() {
    add_ln35_60_fu_6382_p2 = (!zext_ln33_59_fu_6378_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_59_fu_6378_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_61_fu_6428_p2() {
    add_ln35_61_fu_6428_p2 = (!zext_ln33_60_fu_6424_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_60_fu_6424_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_62_fu_6474_p2() {
    add_ln35_62_fu_6474_p2 = (!zext_ln33_61_fu_6470_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_61_fu_6470_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_63_fu_6520_p2() {
    add_ln35_63_fu_6520_p2 = (!zext_ln33_62_fu_6516_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_62_fu_6516_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_64_fu_7026_p2() {
    add_ln35_64_fu_7026_p2 = (!zext_ln33_63_fu_7022_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_63_fu_7022_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_65_fu_7072_p2() {
    add_ln35_65_fu_7072_p2 = (!zext_ln33_64_fu_7068_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_64_fu_7068_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_66_fu_7118_p2() {
    add_ln35_66_fu_7118_p2 = (!zext_ln33_65_fu_7114_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_65_fu_7114_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_67_fu_7164_p2() {
    add_ln35_67_fu_7164_p2 = (!zext_ln33_66_fu_7160_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_66_fu_7160_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_68_fu_7210_p2() {
    add_ln35_68_fu_7210_p2 = (!zext_ln33_67_fu_7206_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_67_fu_7206_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_69_fu_7256_p2() {
    add_ln35_69_fu_7256_p2 = (!zext_ln33_68_fu_7252_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_68_fu_7252_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_6_fu_2704_p2() {
    add_ln35_6_fu_2704_p2 = (!zext_ln33_5_fu_2700_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_5_fu_2700_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_70_fu_7302_p2() {
    add_ln35_70_fu_7302_p2 = (!zext_ln33_69_fu_7298_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_69_fu_7298_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_71_fu_7348_p2() {
    add_ln35_71_fu_7348_p2 = (!zext_ln33_70_fu_7344_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_70_fu_7344_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_72_fu_7394_p2() {
    add_ln35_72_fu_7394_p2 = (!zext_ln33_71_fu_7390_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_71_fu_7390_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_73_fu_7440_p2() {
    add_ln35_73_fu_7440_p2 = (!zext_ln33_72_fu_7436_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_72_fu_7436_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_74_fu_7486_p2() {
    add_ln35_74_fu_7486_p2 = (!zext_ln33_73_fu_7482_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_73_fu_7482_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_75_fu_7532_p2() {
    add_ln35_75_fu_7532_p2 = (!zext_ln33_74_fu_7528_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_74_fu_7528_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_76_fu_7578_p2() {
    add_ln35_76_fu_7578_p2 = (!zext_ln33_75_fu_7574_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_75_fu_7574_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_77_fu_7624_p2() {
    add_ln35_77_fu_7624_p2 = (!zext_ln33_76_fu_7620_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_76_fu_7620_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_78_fu_7670_p2() {
    add_ln35_78_fu_7670_p2 = (!zext_ln33_77_fu_7666_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_77_fu_7666_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_79_fu_7716_p2() {
    add_ln35_79_fu_7716_p2 = (!zext_ln33_78_fu_7712_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_78_fu_7712_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_7_fu_2735_p2() {
    add_ln35_7_fu_2735_p2 = (!zext_ln33_6_fu_2731_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_6_fu_2731_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_80_fu_8210_p2() {
    add_ln35_80_fu_8210_p2 = (!zext_ln33_79_fu_8206_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_79_fu_8206_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_81_fu_8256_p2() {
    add_ln35_81_fu_8256_p2 = (!zext_ln33_80_fu_8252_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_80_fu_8252_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_82_fu_8302_p2() {
    add_ln35_82_fu_8302_p2 = (!zext_ln33_81_fu_8298_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_81_fu_8298_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_83_fu_8348_p2() {
    add_ln35_83_fu_8348_p2 = (!zext_ln33_82_fu_8344_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_82_fu_8344_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_84_fu_8394_p2() {
    add_ln35_84_fu_8394_p2 = (!zext_ln33_83_fu_8390_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_83_fu_8390_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_85_fu_8440_p2() {
    add_ln35_85_fu_8440_p2 = (!zext_ln33_84_fu_8436_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_84_fu_8436_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_86_fu_8486_p2() {
    add_ln35_86_fu_8486_p2 = (!zext_ln33_85_fu_8482_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_85_fu_8482_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_87_fu_8532_p2() {
    add_ln35_87_fu_8532_p2 = (!zext_ln33_86_fu_8528_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_86_fu_8528_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_88_fu_8578_p2() {
    add_ln35_88_fu_8578_p2 = (!zext_ln33_87_fu_8574_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_87_fu_8574_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_89_fu_8624_p2() {
    add_ln35_89_fu_8624_p2 = (!zext_ln33_88_fu_8620_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_88_fu_8620_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_8_fu_2766_p2() {
    add_ln35_8_fu_2766_p2 = (!zext_ln33_7_fu_2762_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_7_fu_2762_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_90_fu_8670_p2() {
    add_ln35_90_fu_8670_p2 = (!zext_ln33_89_fu_8666_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_89_fu_8666_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_91_fu_8716_p2() {
    add_ln35_91_fu_8716_p2 = (!zext_ln33_90_fu_8712_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_90_fu_8712_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_92_fu_8762_p2() {
    add_ln35_92_fu_8762_p2 = (!zext_ln33_91_fu_8758_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_91_fu_8758_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_93_fu_8808_p2() {
    add_ln35_93_fu_8808_p2 = (!zext_ln33_92_fu_8804_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_92_fu_8804_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_94_fu_8854_p2() {
    add_ln35_94_fu_8854_p2 = (!zext_ln33_93_fu_8850_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_93_fu_8850_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_95_fu_8900_p2() {
    add_ln35_95_fu_8900_p2 = (!zext_ln33_94_fu_8896_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_94_fu_8896_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_96_fu_9405_p2() {
    add_ln35_96_fu_9405_p2 = (!zext_ln33_95_fu_9401_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_95_fu_9401_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_97_fu_9451_p2() {
    add_ln35_97_fu_9451_p2 = (!zext_ln33_96_fu_9447_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_96_fu_9447_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_98_fu_9497_p2() {
    add_ln35_98_fu_9497_p2 = (!zext_ln33_97_fu_9493_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_97_fu_9493_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_99_fu_9543_p2() {
    add_ln35_99_fu_9543_p2 = (!zext_ln33_98_fu_9539_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_98_fu_9539_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_9_fu_2812_p2() {
    add_ln35_9_fu_2812_p2 = (!zext_ln33_8_fu_2808_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(zext_ln33_8_fu_2808_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln35_fu_2496_p2() {
    add_ln35_fu_2496_p2 = (!i3_0_0_cast_fu_2486_p1.read().is_01() || !phi_mul_reg_2309.read().is_01())? sc_lv<13>(): (sc_biguint<13>(i3_0_0_cast_fu_2486_p1.read()) + sc_biguint<13>(phi_mul_reg_2309.read()));
}

void dense::thread_add_ln703_100_fu_10716_p2() {
    add_ln703_100_fu_10716_p2 = (!add_ln703_96_fu_10697_p2.read().is_01() || !add_ln703_99_fu_10710_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_96_fu_10697_p2.read()) + sc_biguint<8>(add_ln703_99_fu_10710_p2.read()));
}

void dense::thread_add_ln703_101_fu_10722_p2() {
    add_ln703_101_fu_10722_p2 = (!trunc_ln708_106_reg_12737.read().is_01() || !trunc_ln708_105_reg_12732.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_106_reg_12737.read()) + sc_biguint<8>(trunc_ln708_105_reg_12732.read()));
}

void dense::thread_add_ln703_102_fu_10726_p2() {
    add_ln703_102_fu_10726_p2 = (!trunc_ln708_104_reg_12727.read().is_01() || !add_ln703_101_fu_10722_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_104_reg_12727.read()) + sc_biguint<8>(add_ln703_101_fu_10722_p2.read()));
}

void dense::thread_add_ln703_103_fu_10731_p2() {
    add_ln703_103_fu_10731_p2 = (!trunc_ln708_108_reg_12747.read().is_01() || !trunc_ln708_107_reg_12742.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_108_reg_12747.read()) + sc_biguint<8>(trunc_ln708_107_reg_12742.read()));
}

void dense::thread_add_ln703_104_fu_10735_p2() {
    add_ln703_104_fu_10735_p2 = (!trunc_ln708_110_reg_12757.read().is_01() || !trunc_ln708_109_reg_12752.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_110_reg_12757.read()) + sc_biguint<8>(trunc_ln708_109_reg_12752.read()));
}

void dense::thread_add_ln703_105_fu_10739_p2() {
    add_ln703_105_fu_10739_p2 = (!add_ln703_103_fu_10731_p2.read().is_01() || !add_ln703_104_fu_10735_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_103_fu_10731_p2.read()) + sc_biguint<8>(add_ln703_104_fu_10735_p2.read()));
}

void dense::thread_add_ln703_106_fu_10745_p2() {
    add_ln703_106_fu_10745_p2 = (!add_ln703_102_reg_12802.read().is_01() || !add_ln703_105_reg_12807.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_102_reg_12802.read()) + sc_biguint<8>(add_ln703_105_reg_12807.read()));
}

void dense::thread_add_ln703_107_fu_10749_p2() {
    add_ln703_107_fu_10749_p2 = (!add_ln703_100_reg_12797.read().is_01() || !add_ln703_106_fu_10745_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_100_reg_12797.read()) + sc_biguint<8>(add_ln703_106_fu_10745_p2.read()));
}

void dense::thread_add_ln703_108_fu_10754_p2() {
    add_ln703_108_fu_10754_p2 = (!add_ln703_94_reg_12792.read().is_01() || !add_ln703_107_fu_10749_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_94_reg_12792.read()) + sc_biguint<8>(add_ln703_107_fu_10749_p2.read()));
}

void dense::thread_add_ln703_109_fu_10759_p2() {
    add_ln703_109_fu_10759_p2 = (!add_ln703_81_reg_12787.read().is_01() || !add_ln703_108_fu_10754_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_81_reg_12787.read()) + sc_biguint<8>(add_ln703_108_fu_10754_p2.read()));
}

void dense::thread_add_ln703_10_fu_5430_p2() {
    add_ln703_10_fu_5430_p2 = (!add_ln703_8_fu_5422_p2.read().is_01() || !add_ln703_9_fu_5426_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_8_fu_5422_p2.read()) + sc_biguint<8>(add_ln703_9_fu_5426_p2.read()));
}

void dense::thread_add_ln703_110_fu_10764_p2() {
    add_ln703_110_fu_10764_p2 = (!add_ln703_54_reg_12657.read().is_01() || !add_ln703_109_reg_12812.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_54_reg_12657.read()) + sc_biguint<8>(add_ln703_109_reg_12812.read()));
}

void dense::thread_add_ln703_111_fu_10768_p2() {
    add_ln703_111_fu_10768_p2 = (!add_ln703_110_fu_10764_p2.read().is_01() || !p_Val2_1_0_reg_2321.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_110_fu_10764_p2.read()) + sc_biguint<8>(p_Val2_1_0_reg_2321.read()));
}

void dense::thread_add_ln703_11_fu_6556_p2() {
    add_ln703_11_fu_6556_p2 = (!add_ln703_7_reg_11612.read().is_01() || !add_ln703_10_reg_11617.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_7_reg_11612.read()) + sc_biguint<8>(add_ln703_10_reg_11617.read()));
}

void dense::thread_add_ln703_12_fu_6560_p2() {
    add_ln703_12_fu_6560_p2 = (!add_ln703_5_reg_11607.read().is_01() || !add_ln703_11_fu_6556_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_5_reg_11607.read()) + sc_biguint<8>(add_ln703_11_fu_6556_p2.read()));
}

void dense::thread_add_ln703_13_fu_6565_p2() {
    add_ln703_13_fu_6565_p2 = (!trunc_ln708_15_reg_11367.read().is_01() || !trunc_ln708_14_reg_11202.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_15_reg_11367.read()) + sc_biguint<8>(trunc_ln708_14_reg_11202.read()));
}

void dense::thread_add_ln703_14_fu_6569_p2() {
    add_ln703_14_fu_6569_p2 = (!trunc_ln708_13_reg_11197.read().is_01() || !add_ln703_13_fu_6565_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_13_reg_11197.read()) + sc_biguint<8>(add_ln703_13_fu_6565_p2.read()));
}

void dense::thread_add_ln703_15_fu_6574_p2() {
    add_ln703_15_fu_6574_p2 = (!trunc_ln708_17_reg_11377.read().is_01() || !trunc_ln708_16_reg_11372.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_17_reg_11377.read()) + sc_biguint<8>(trunc_ln708_16_reg_11372.read()));
}

void dense::thread_add_ln703_16_fu_6578_p2() {
    add_ln703_16_fu_6578_p2 = (!trunc_ln708_19_reg_11387.read().is_01() || !trunc_ln708_18_reg_11382.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_19_reg_11387.read()) + sc_biguint<8>(trunc_ln708_18_reg_11382.read()));
}

void dense::thread_add_ln703_17_fu_6582_p2() {
    add_ln703_17_fu_6582_p2 = (!add_ln703_15_fu_6574_p2.read().is_01() || !add_ln703_16_fu_6578_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_15_fu_6574_p2.read()) + sc_biguint<8>(add_ln703_16_fu_6578_p2.read()));
}

void dense::thread_add_ln703_18_fu_6588_p2() {
    add_ln703_18_fu_6588_p2 = (!add_ln703_14_fu_6569_p2.read().is_01() || !add_ln703_17_fu_6582_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_14_fu_6569_p2.read()) + sc_biguint<8>(add_ln703_17_fu_6582_p2.read()));
}

void dense::thread_add_ln703_19_fu_6594_p2() {
    add_ln703_19_fu_6594_p2 = (!trunc_ln708_22_reg_11402.read().is_01() || !trunc_ln708_21_reg_11397.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_22_reg_11402.read()) + sc_biguint<8>(trunc_ln708_21_reg_11397.read()));
}

void dense::thread_add_ln703_1_fu_5388_p2() {
    add_ln703_1_fu_5388_p2 = (!trunc_ln2_reg_11127.read().is_01() || !add_ln703_fu_5384_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln2_reg_11127.read()) + sc_biguint<8>(add_ln703_fu_5384_p2.read()));
}

void dense::thread_add_ln703_20_fu_6598_p2() {
    add_ln703_20_fu_6598_p2 = (!trunc_ln708_20_reg_11392.read().is_01() || !add_ln703_19_fu_6594_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_20_reg_11392.read()) + sc_biguint<8>(add_ln703_19_fu_6594_p2.read()));
}

void dense::thread_add_ln703_21_fu_6603_p2() {
    add_ln703_21_fu_6603_p2 = (!trunc_ln708_24_reg_11412.read().is_01() || !trunc_ln708_23_reg_11407.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_24_reg_11412.read()) + sc_biguint<8>(trunc_ln708_23_reg_11407.read()));
}

void dense::thread_add_ln703_22_fu_6607_p2() {
    add_ln703_22_fu_6607_p2 = (!trunc_ln708_26_reg_11422.read().is_01() || !trunc_ln708_25_reg_11417.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_26_reg_11422.read()) + sc_biguint<8>(trunc_ln708_25_reg_11417.read()));
}

void dense::thread_add_ln703_23_fu_6611_p2() {
    add_ln703_23_fu_6611_p2 = (!add_ln703_21_fu_6603_p2.read().is_01() || !add_ln703_22_fu_6607_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_21_fu_6603_p2.read()) + sc_biguint<8>(add_ln703_22_fu_6607_p2.read()));
}

void dense::thread_add_ln703_24_fu_6617_p2() {
    add_ln703_24_fu_6617_p2 = (!add_ln703_20_fu_6598_p2.read().is_01() || !add_ln703_23_fu_6611_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_20_fu_6598_p2.read()) + sc_biguint<8>(add_ln703_23_fu_6611_p2.read()));
}

void dense::thread_add_ln703_25_fu_7752_p2() {
    add_ln703_25_fu_7752_p2 = (!add_ln703_18_reg_11867.read().is_01() || !add_ln703_24_reg_11872.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_18_reg_11867.read()) + sc_biguint<8>(add_ln703_24_reg_11872.read()));
}

void dense::thread_add_ln703_26_fu_7756_p2() {
    add_ln703_26_fu_7756_p2 = (!add_ln703_12_reg_11862.read().is_01() || !add_ln703_25_fu_7752_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_12_reg_11862.read()) + sc_biguint<8>(add_ln703_25_fu_7752_p2.read()));
}

void dense::thread_add_ln703_27_fu_6623_p2() {
    add_ln703_27_fu_6623_p2 = (!trunc_ln708_29_reg_11437.read().is_01() || !trunc_ln708_28_reg_11432.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_29_reg_11437.read()) + sc_biguint<8>(trunc_ln708_28_reg_11432.read()));
}

void dense::thread_add_ln703_28_fu_6627_p2() {
    add_ln703_28_fu_6627_p2 = (!trunc_ln708_27_reg_11427.read().is_01() || !add_ln703_27_fu_6623_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_27_reg_11427.read()) + sc_biguint<8>(add_ln703_27_fu_6623_p2.read()));
}

void dense::thread_add_ln703_29_fu_7761_p2() {
    add_ln703_29_fu_7761_p2 = (!trunc_ln708_31_reg_11622.read().is_01() || !trunc_ln708_30_reg_11442.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_31_reg_11622.read()) + sc_biguint<8>(trunc_ln708_30_reg_11442.read()));
}

void dense::thread_add_ln703_2_fu_5393_p2() {
    add_ln703_2_fu_5393_p2 = (!trunc_ln708_4_reg_11147.read().is_01() || !trunc_ln708_3_reg_11142.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_4_reg_11147.read()) + sc_biguint<8>(trunc_ln708_3_reg_11142.read()));
}

void dense::thread_add_ln703_30_fu_7765_p2() {
    add_ln703_30_fu_7765_p2 = (!trunc_ln708_33_reg_11632.read().is_01() || !trunc_ln708_32_reg_11627.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_33_reg_11632.read()) + sc_biguint<8>(trunc_ln708_32_reg_11627.read()));
}

void dense::thread_add_ln703_31_fu_7769_p2() {
    add_ln703_31_fu_7769_p2 = (!add_ln703_29_fu_7761_p2.read().is_01() || !add_ln703_30_fu_7765_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_29_fu_7761_p2.read()) + sc_biguint<8>(add_ln703_30_fu_7765_p2.read()));
}

void dense::thread_add_ln703_32_fu_7775_p2() {
    add_ln703_32_fu_7775_p2 = (!add_ln703_28_reg_11877.read().is_01() || !add_ln703_31_fu_7769_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_28_reg_11877.read()) + sc_biguint<8>(add_ln703_31_fu_7769_p2.read()));
}

void dense::thread_add_ln703_33_fu_7780_p2() {
    add_ln703_33_fu_7780_p2 = (!trunc_ln708_36_reg_11647.read().is_01() || !trunc_ln708_35_reg_11642.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_36_reg_11647.read()) + sc_biguint<8>(trunc_ln708_35_reg_11642.read()));
}

void dense::thread_add_ln703_34_fu_7784_p2() {
    add_ln703_34_fu_7784_p2 = (!trunc_ln708_34_reg_11637.read().is_01() || !add_ln703_33_fu_7780_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_34_reg_11637.read()) + sc_biguint<8>(add_ln703_33_fu_7780_p2.read()));
}

void dense::thread_add_ln703_35_fu_7789_p2() {
    add_ln703_35_fu_7789_p2 = (!trunc_ln708_38_reg_11657.read().is_01() || !trunc_ln708_37_reg_11652.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_38_reg_11657.read()) + sc_biguint<8>(trunc_ln708_37_reg_11652.read()));
}

void dense::thread_add_ln703_36_fu_7793_p2() {
    add_ln703_36_fu_7793_p2 = (!trunc_ln708_40_reg_11667.read().is_01() || !trunc_ln708_39_reg_11662.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_40_reg_11667.read()) + sc_biguint<8>(trunc_ln708_39_reg_11662.read()));
}

void dense::thread_add_ln703_37_fu_7797_p2() {
    add_ln703_37_fu_7797_p2 = (!add_ln703_35_fu_7789_p2.read().is_01() || !add_ln703_36_fu_7793_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_35_fu_7789_p2.read()) + sc_biguint<8>(add_ln703_36_fu_7793_p2.read()));
}

void dense::thread_add_ln703_38_fu_8936_p2() {
    add_ln703_38_fu_8936_p2 = (!add_ln703_34_reg_12132.read().is_01() || !add_ln703_37_reg_12137.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_34_reg_12132.read()) + sc_biguint<8>(add_ln703_37_reg_12137.read()));
}

void dense::thread_add_ln703_39_fu_8940_p2() {
    add_ln703_39_fu_8940_p2 = (!add_ln703_32_reg_12127.read().is_01() || !add_ln703_38_fu_8936_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_32_reg_12127.read()) + sc_biguint<8>(add_ln703_38_fu_8936_p2.read()));
}

void dense::thread_add_ln703_3_fu_5397_p2() {
    add_ln703_3_fu_5397_p2 = (!trunc_ln708_6_reg_11157.read().is_01() || !trunc_ln708_5_reg_11152.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_6_reg_11157.read()) + sc_biguint<8>(trunc_ln708_5_reg_11152.read()));
}

void dense::thread_add_ln703_40_fu_7803_p2() {
    add_ln703_40_fu_7803_p2 = (!trunc_ln708_43_reg_11682.read().is_01() || !trunc_ln708_42_reg_11677.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_43_reg_11682.read()) + sc_biguint<8>(trunc_ln708_42_reg_11677.read()));
}

void dense::thread_add_ln703_41_fu_7807_p2() {
    add_ln703_41_fu_7807_p2 = (!trunc_ln708_41_reg_11672.read().is_01() || !add_ln703_40_fu_7803_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_41_reg_11672.read()) + sc_biguint<8>(add_ln703_40_fu_7803_p2.read()));
}

void dense::thread_add_ln703_42_fu_7812_p2() {
    add_ln703_42_fu_7812_p2 = (!trunc_ln708_45_reg_11692.read().is_01() || !trunc_ln708_44_reg_11687.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_45_reg_11692.read()) + sc_biguint<8>(trunc_ln708_44_reg_11687.read()));
}

void dense::thread_add_ln703_43_fu_8945_p2() {
    add_ln703_43_fu_8945_p2 = (!trunc_ln708_47_reg_11882.read().is_01() || !trunc_ln708_46_reg_11697.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_47_reg_11882.read()) + sc_biguint<8>(trunc_ln708_46_reg_11697.read()));
}

void dense::thread_add_ln703_44_fu_8949_p2() {
    add_ln703_44_fu_8949_p2 = (!add_ln703_42_reg_12147.read().is_01() || !add_ln703_43_fu_8945_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_42_reg_12147.read()) + sc_biguint<8>(add_ln703_43_fu_8945_p2.read()));
}

void dense::thread_add_ln703_45_fu_8954_p2() {
    add_ln703_45_fu_8954_p2 = (!add_ln703_41_reg_12142.read().is_01() || !add_ln703_44_fu_8949_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_41_reg_12142.read()) + sc_biguint<8>(add_ln703_44_fu_8949_p2.read()));
}

void dense::thread_add_ln703_46_fu_8959_p2() {
    add_ln703_46_fu_8959_p2 = (!trunc_ln708_50_reg_11897.read().is_01() || !trunc_ln708_49_reg_11892.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_50_reg_11897.read()) + sc_biguint<8>(trunc_ln708_49_reg_11892.read()));
}

void dense::thread_add_ln703_47_fu_8963_p2() {
    add_ln703_47_fu_8963_p2 = (!trunc_ln708_48_reg_11887.read().is_01() || !add_ln703_46_fu_8959_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_48_reg_11887.read()) + sc_biguint<8>(add_ln703_46_fu_8959_p2.read()));
}

void dense::thread_add_ln703_48_fu_8968_p2() {
    add_ln703_48_fu_8968_p2 = (!trunc_ln708_52_reg_11907.read().is_01() || !trunc_ln708_51_reg_11902.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_52_reg_11907.read()) + sc_biguint<8>(trunc_ln708_51_reg_11902.read()));
}

void dense::thread_add_ln703_49_fu_8972_p2() {
    add_ln703_49_fu_8972_p2 = (!trunc_ln708_54_reg_11917.read().is_01() || !trunc_ln708_53_reg_11912.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_54_reg_11917.read()) + sc_biguint<8>(trunc_ln708_53_reg_11912.read()));
}

void dense::thread_add_ln703_4_fu_5401_p2() {
    add_ln703_4_fu_5401_p2 = (!add_ln703_2_fu_5393_p2.read().is_01() || !add_ln703_3_fu_5397_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_2_fu_5393_p2.read()) + sc_biguint<8>(add_ln703_3_fu_5397_p2.read()));
}

void dense::thread_add_ln703_50_fu_8976_p2() {
    add_ln703_50_fu_8976_p2 = (!add_ln703_48_fu_8968_p2.read().is_01() || !add_ln703_49_fu_8972_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_48_fu_8968_p2.read()) + sc_biguint<8>(add_ln703_49_fu_8972_p2.read()));
}

void dense::thread_add_ln703_51_fu_10131_p2() {
    add_ln703_51_fu_10131_p2 = (!add_ln703_47_reg_12402.read().is_01() || !add_ln703_50_reg_12407.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_47_reg_12402.read()) + sc_biguint<8>(add_ln703_50_reg_12407.read()));
}

void dense::thread_add_ln703_52_fu_10135_p2() {
    add_ln703_52_fu_10135_p2 = (!add_ln703_45_reg_12397.read().is_01() || !add_ln703_51_fu_10131_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_45_reg_12397.read()) + sc_biguint<8>(add_ln703_51_fu_10131_p2.read()));
}

void dense::thread_add_ln703_53_fu_10140_p2() {
    add_ln703_53_fu_10140_p2 = (!add_ln703_39_reg_12392.read().is_01() || !add_ln703_52_fu_10135_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_39_reg_12392.read()) + sc_biguint<8>(add_ln703_52_fu_10135_p2.read()));
}

void dense::thread_add_ln703_54_fu_10145_p2() {
    add_ln703_54_fu_10145_p2 = (!add_ln703_26_reg_12122.read().is_01() || !add_ln703_53_fu_10140_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_26_reg_12122.read()) + sc_biguint<8>(add_ln703_53_fu_10140_p2.read()));
}

void dense::thread_add_ln703_55_fu_8982_p2() {
    add_ln703_55_fu_8982_p2 = (!trunc_ln708_57_reg_11932.read().is_01() || !trunc_ln708_56_reg_11927.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_57_reg_11932.read()) + sc_biguint<8>(trunc_ln708_56_reg_11927.read()));
}

void dense::thread_add_ln703_56_fu_8986_p2() {
    add_ln703_56_fu_8986_p2 = (!trunc_ln708_55_reg_11922.read().is_01() || !add_ln703_55_fu_8982_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_55_reg_11922.read()) + sc_biguint<8>(add_ln703_55_fu_8982_p2.read()));
}

void dense::thread_add_ln703_57_fu_8991_p2() {
    add_ln703_57_fu_8991_p2 = (!trunc_ln708_59_reg_11942.read().is_01() || !trunc_ln708_58_reg_11937.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_59_reg_11942.read()) + sc_biguint<8>(trunc_ln708_58_reg_11937.read()));
}

void dense::thread_add_ln703_58_fu_8995_p2() {
    add_ln703_58_fu_8995_p2 = (!trunc_ln708_61_reg_11952.read().is_01() || !trunc_ln708_60_reg_11947.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_61_reg_11952.read()) + sc_biguint<8>(trunc_ln708_60_reg_11947.read()));
}

void dense::thread_add_ln703_59_fu_8999_p2() {
    add_ln703_59_fu_8999_p2 = (!add_ln703_57_fu_8991_p2.read().is_01() || !add_ln703_58_fu_8995_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_57_fu_8991_p2.read()) + sc_biguint<8>(add_ln703_58_fu_8995_p2.read()));
}

void dense::thread_add_ln703_5_fu_5407_p2() {
    add_ln703_5_fu_5407_p2 = (!add_ln703_1_fu_5388_p2.read().is_01() || !add_ln703_4_fu_5401_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_1_fu_5388_p2.read()) + sc_biguint<8>(add_ln703_4_fu_5401_p2.read()));
}

void dense::thread_add_ln703_60_fu_9005_p2() {
    add_ln703_60_fu_9005_p2 = (!add_ln703_56_fu_8986_p2.read().is_01() || !add_ln703_59_fu_8999_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_56_fu_8986_p2.read()) + sc_biguint<8>(add_ln703_59_fu_8999_p2.read()));
}

void dense::thread_add_ln703_61_fu_10150_p2() {
    add_ln703_61_fu_10150_p2 = (!trunc_ln708_64_reg_12157.read().is_01() || !trunc_ln708_63_reg_12152.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_64_reg_12157.read()) + sc_biguint<8>(trunc_ln708_63_reg_12152.read()));
}

void dense::thread_add_ln703_62_fu_10154_p2() {
    add_ln703_62_fu_10154_p2 = (!trunc_ln708_62_reg_11957.read().is_01() || !add_ln703_61_fu_10150_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_62_reg_11957.read()) + sc_biguint<8>(add_ln703_61_fu_10150_p2.read()));
}

void dense::thread_add_ln703_63_fu_10159_p2() {
    add_ln703_63_fu_10159_p2 = (!trunc_ln708_66_reg_12167.read().is_01() || !trunc_ln708_65_reg_12162.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_66_reg_12167.read()) + sc_biguint<8>(trunc_ln708_65_reg_12162.read()));
}

void dense::thread_add_ln703_64_fu_10163_p2() {
    add_ln703_64_fu_10163_p2 = (!trunc_ln708_68_reg_12177.read().is_01() || !trunc_ln708_67_reg_12172.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_68_reg_12177.read()) + sc_biguint<8>(trunc_ln708_67_reg_12172.read()));
}

void dense::thread_add_ln703_65_fu_10167_p2() {
    add_ln703_65_fu_10167_p2 = (!add_ln703_63_fu_10159_p2.read().is_01() || !add_ln703_64_fu_10163_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_63_fu_10159_p2.read()) + sc_biguint<8>(add_ln703_64_fu_10163_p2.read()));
}

void dense::thread_add_ln703_66_fu_10595_p2() {
    add_ln703_66_fu_10595_p2 = (!add_ln703_62_reg_12662.read().is_01() || !add_ln703_65_reg_12667.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_62_reg_12662.read()) + sc_biguint<8>(add_ln703_65_reg_12667.read()));
}

void dense::thread_add_ln703_67_fu_10599_p2() {
    add_ln703_67_fu_10599_p2 = (!add_ln703_60_reg_12412.read().is_01() || !add_ln703_66_fu_10595_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_60_reg_12412.read()) + sc_biguint<8>(add_ln703_66_fu_10595_p2.read()));
}

void dense::thread_add_ln703_68_fu_10173_p2() {
    add_ln703_68_fu_10173_p2 = (!trunc_ln708_71_reg_12192.read().is_01() || !trunc_ln708_70_reg_12187.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_71_reg_12192.read()) + sc_biguint<8>(trunc_ln708_70_reg_12187.read()));
}

void dense::thread_add_ln703_69_fu_10177_p2() {
    add_ln703_69_fu_10177_p2 = (!trunc_ln708_69_reg_12182.read().is_01() || !add_ln703_68_fu_10173_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_69_reg_12182.read()) + sc_biguint<8>(add_ln703_68_fu_10173_p2.read()));
}

void dense::thread_add_ln703_6_fu_5413_p2() {
    add_ln703_6_fu_5413_p2 = (!trunc_ln708_9_reg_11172.read().is_01() || !trunc_ln708_8_reg_11167.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_9_reg_11172.read()) + sc_biguint<8>(trunc_ln708_8_reg_11167.read()));
}

void dense::thread_add_ln703_70_fu_10182_p2() {
    add_ln703_70_fu_10182_p2 = (!trunc_ln708_73_reg_12202.read().is_01() || !trunc_ln708_72_reg_12197.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_73_reg_12202.read()) + sc_biguint<8>(trunc_ln708_72_reg_12197.read()));
}

void dense::thread_add_ln703_71_fu_10186_p2() {
    add_ln703_71_fu_10186_p2 = (!trunc_ln708_75_reg_12212.read().is_01() || !trunc_ln708_74_reg_12207.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_75_reg_12212.read()) + sc_biguint<8>(trunc_ln708_74_reg_12207.read()));
}

void dense::thread_add_ln703_72_fu_10190_p2() {
    add_ln703_72_fu_10190_p2 = (!add_ln703_70_fu_10182_p2.read().is_01() || !add_ln703_71_fu_10186_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_70_fu_10182_p2.read()) + sc_biguint<8>(add_ln703_71_fu_10186_p2.read()));
}

void dense::thread_add_ln703_73_fu_10196_p2() {
    add_ln703_73_fu_10196_p2 = (!add_ln703_69_fu_10177_p2.read().is_01() || !add_ln703_72_fu_10190_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_69_fu_10177_p2.read()) + sc_biguint<8>(add_ln703_72_fu_10190_p2.read()));
}

void dense::thread_add_ln703_74_fu_10202_p2() {
    add_ln703_74_fu_10202_p2 = (!trunc_ln708_78_reg_12227.read().is_01() || !trunc_ln708_77_reg_12222.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_78_reg_12227.read()) + sc_biguint<8>(trunc_ln708_77_reg_12222.read()));
}

void dense::thread_add_ln703_75_fu_10206_p2() {
    add_ln703_75_fu_10206_p2 = (!trunc_ln708_76_reg_12217.read().is_01() || !add_ln703_74_fu_10202_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_76_reg_12217.read()) + sc_biguint<8>(add_ln703_74_fu_10202_p2.read()));
}

void dense::thread_add_ln703_76_fu_10604_p2() {
    add_ln703_76_fu_10604_p2 = (!trunc_ln708_80_reg_12422.read().is_01() || !trunc_ln708_79_reg_12417.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_80_reg_12422.read()) + sc_biguint<8>(trunc_ln708_79_reg_12417.read()));
}

void dense::thread_add_ln703_77_fu_10608_p2() {
    add_ln703_77_fu_10608_p2 = (!trunc_ln708_82_reg_12432.read().is_01() || !trunc_ln708_81_reg_12427.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_82_reg_12432.read()) + sc_biguint<8>(trunc_ln708_81_reg_12427.read()));
}

void dense::thread_add_ln703_78_fu_10612_p2() {
    add_ln703_78_fu_10612_p2 = (!add_ln703_76_fu_10604_p2.read().is_01() || !add_ln703_77_fu_10608_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_76_fu_10604_p2.read()) + sc_biguint<8>(add_ln703_77_fu_10608_p2.read()));
}

void dense::thread_add_ln703_79_fu_10618_p2() {
    add_ln703_79_fu_10618_p2 = (!add_ln703_75_reg_12677.read().is_01() || !add_ln703_78_fu_10612_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_75_reg_12677.read()) + sc_biguint<8>(add_ln703_78_fu_10612_p2.read()));
}

void dense::thread_add_ln703_7_fu_5417_p2() {
    add_ln703_7_fu_5417_p2 = (!trunc_ln708_7_reg_11162.read().is_01() || !add_ln703_6_fu_5413_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_7_reg_11162.read()) + sc_biguint<8>(add_ln703_6_fu_5413_p2.read()));
}

void dense::thread_add_ln703_80_fu_10665_p2() {
    add_ln703_80_fu_10665_p2 = (!add_ln703_73_reg_12672.read().is_01() || !add_ln703_79_reg_12767.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_73_reg_12672.read()) + sc_biguint<8>(add_ln703_79_reg_12767.read()));
}

void dense::thread_add_ln703_81_fu_10669_p2() {
    add_ln703_81_fu_10669_p2 = (!add_ln703_67_reg_12762.read().is_01() || !add_ln703_80_fu_10665_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_67_reg_12762.read()) + sc_biguint<8>(add_ln703_80_fu_10665_p2.read()));
}

void dense::thread_add_ln703_82_fu_10623_p2() {
    add_ln703_82_fu_10623_p2 = (!trunc_ln708_85_reg_12447.read().is_01() || !trunc_ln708_84_reg_12442.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_85_reg_12447.read()) + sc_biguint<8>(trunc_ln708_84_reg_12442.read()));
}

void dense::thread_add_ln703_83_fu_10627_p2() {
    add_ln703_83_fu_10627_p2 = (!trunc_ln708_83_reg_12437.read().is_01() || !add_ln703_82_fu_10623_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_83_reg_12437.read()) + sc_biguint<8>(add_ln703_82_fu_10623_p2.read()));
}

void dense::thread_add_ln703_84_fu_10632_p2() {
    add_ln703_84_fu_10632_p2 = (!trunc_ln708_87_reg_12457.read().is_01() || !trunc_ln708_86_reg_12452.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_87_reg_12457.read()) + sc_biguint<8>(trunc_ln708_86_reg_12452.read()));
}

void dense::thread_add_ln703_85_fu_10636_p2() {
    add_ln703_85_fu_10636_p2 = (!trunc_ln708_89_reg_12467.read().is_01() || !trunc_ln708_88_reg_12462.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_89_reg_12467.read()) + sc_biguint<8>(trunc_ln708_88_reg_12462.read()));
}

void dense::thread_add_ln703_86_fu_10640_p2() {
    add_ln703_86_fu_10640_p2 = (!add_ln703_84_fu_10632_p2.read().is_01() || !add_ln703_85_fu_10636_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_84_fu_10632_p2.read()) + sc_biguint<8>(add_ln703_85_fu_10636_p2.read()));
}

void dense::thread_add_ln703_87_fu_10646_p2() {
    add_ln703_87_fu_10646_p2 = (!add_ln703_83_fu_10627_p2.read().is_01() || !add_ln703_86_fu_10640_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_83_fu_10627_p2.read()) + sc_biguint<8>(add_ln703_86_fu_10640_p2.read()));
}

void dense::thread_add_ln703_88_fu_10652_p2() {
    add_ln703_88_fu_10652_p2 = (!trunc_ln708_92_reg_12482.read().is_01() || !trunc_ln708_91_reg_12477.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_92_reg_12482.read()) + sc_biguint<8>(trunc_ln708_91_reg_12477.read()));
}

void dense::thread_add_ln703_89_fu_10656_p2() {
    add_ln703_89_fu_10656_p2 = (!trunc_ln708_90_reg_12472.read().is_01() || !add_ln703_88_fu_10652_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_90_reg_12472.read()) + sc_biguint<8>(add_ln703_88_fu_10652_p2.read()));
}

void dense::thread_add_ln703_8_fu_5422_p2() {
    add_ln703_8_fu_5422_p2 = (!trunc_ln708_10_reg_11182.read().is_01() || !trunc_ln708_s_reg_11177.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_10_reg_11182.read()) + sc_biguint<8>(trunc_ln708_s_reg_11177.read()));
}

void dense::thread_add_ln703_90_fu_10661_p2() {
    add_ln703_90_fu_10661_p2 = (!trunc_ln708_94_reg_12492.read().is_01() || !trunc_ln708_93_reg_12487.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_94_reg_12492.read()) + sc_biguint<8>(trunc_ln708_93_reg_12487.read()));
}

void dense::thread_add_ln703_91_fu_10674_p2() {
    add_ln703_91_fu_10674_p2 = (!trunc_ln708_96_reg_12687.read().is_01() || !trunc_ln708_95_reg_12682.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_96_reg_12687.read()) + sc_biguint<8>(trunc_ln708_95_reg_12682.read()));
}

void dense::thread_add_ln703_92_fu_10678_p2() {
    add_ln703_92_fu_10678_p2 = (!add_ln703_90_reg_12782.read().is_01() || !add_ln703_91_fu_10674_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_90_reg_12782.read()) + sc_biguint<8>(add_ln703_91_fu_10674_p2.read()));
}

void dense::thread_add_ln703_93_fu_10683_p2() {
    add_ln703_93_fu_10683_p2 = (!add_ln703_89_reg_12777.read().is_01() || !add_ln703_92_fu_10678_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_89_reg_12777.read()) + sc_biguint<8>(add_ln703_92_fu_10678_p2.read()));
}

void dense::thread_add_ln703_94_fu_10688_p2() {
    add_ln703_94_fu_10688_p2 = (!add_ln703_87_reg_12772.read().is_01() || !add_ln703_93_fu_10683_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_87_reg_12772.read()) + sc_biguint<8>(add_ln703_93_fu_10683_p2.read()));
}

void dense::thread_add_ln703_95_fu_10693_p2() {
    add_ln703_95_fu_10693_p2 = (!trunc_ln708_99_reg_12702.read().is_01() || !trunc_ln708_98_reg_12697.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_99_reg_12702.read()) + sc_biguint<8>(trunc_ln708_98_reg_12697.read()));
}

void dense::thread_add_ln703_96_fu_10697_p2() {
    add_ln703_96_fu_10697_p2 = (!trunc_ln708_97_reg_12692.read().is_01() || !add_ln703_95_fu_10693_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_97_reg_12692.read()) + sc_biguint<8>(add_ln703_95_fu_10693_p2.read()));
}

void dense::thread_add_ln703_97_fu_10702_p2() {
    add_ln703_97_fu_10702_p2 = (!trunc_ln708_101_reg_12712.read().is_01() || !trunc_ln708_100_reg_12707.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_101_reg_12712.read()) + sc_biguint<8>(trunc_ln708_100_reg_12707.read()));
}

void dense::thread_add_ln703_98_fu_10706_p2() {
    add_ln703_98_fu_10706_p2 = (!trunc_ln708_103_reg_12722.read().is_01() || !trunc_ln708_102_reg_12717.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_103_reg_12722.read()) + sc_biguint<8>(trunc_ln708_102_reg_12717.read()));
}

void dense::thread_add_ln703_99_fu_10710_p2() {
    add_ln703_99_fu_10710_p2 = (!add_ln703_97_fu_10702_p2.read().is_01() || !add_ln703_98_fu_10706_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(add_ln703_97_fu_10702_p2.read()) + sc_biguint<8>(add_ln703_98_fu_10706_p2.read()));
}

void dense::thread_add_ln703_9_fu_5426_p2() {
    add_ln703_9_fu_5426_p2 = (!trunc_ln708_12_reg_11192.read().is_01() || !trunc_ln708_11_reg_11187.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_12_reg_11192.read()) + sc_biguint<8>(trunc_ln708_11_reg_11187.read()));
}

void dense::thread_add_ln703_fu_5384_p2() {
    add_ln703_fu_5384_p2 = (!trunc_ln708_2_reg_11137.read().is_01() || !trunc_ln708_1_reg_11132.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln708_2_reg_11137.read()) + sc_biguint<8>(trunc_ln708_1_reg_11132.read()));
}

void dense::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dense::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void dense::thread_ap_CS_fsm_state16() {
    ap_CS_fsm_state16 = ap_CS_fsm.read()[15];
}

void dense::thread_ap_CS_fsm_state17() {
    ap_CS_fsm_state17 = ap_CS_fsm.read()[16];
}

void dense::thread_ap_CS_fsm_state18() {
    ap_CS_fsm_state18 = ap_CS_fsm.read()[17];
}

void dense::thread_ap_CS_fsm_state19() {
    ap_CS_fsm_state19 = ap_CS_fsm.read()[18];
}

void dense::thread_ap_CS_fsm_state20() {
    ap_CS_fsm_state20 = ap_CS_fsm.read()[19];
}

void dense::thread_ap_CS_fsm_state21() {
    ap_CS_fsm_state21 = ap_CS_fsm.read()[20];
}

void dense::thread_ap_CS_fsm_state28() {
    ap_CS_fsm_state28 = ap_CS_fsm.read()[27];
}

void dense::thread_ap_CS_fsm_state29() {
    ap_CS_fsm_state29 = ap_CS_fsm.read()[28];
}

void dense::thread_ap_CS_fsm_state30() {
    ap_CS_fsm_state30 = ap_CS_fsm.read()[29];
}

void dense::thread_ap_CS_fsm_state31() {
    ap_CS_fsm_state31 = ap_CS_fsm.read()[30];
}

void dense::thread_ap_CS_fsm_state32() {
    ap_CS_fsm_state32 = ap_CS_fsm.read()[31];
}

void dense::thread_ap_CS_fsm_state33() {
    ap_CS_fsm_state33 = ap_CS_fsm.read()[32];
}

void dense::thread_ap_CS_fsm_state34() {
    ap_CS_fsm_state34 = ap_CS_fsm.read()[33];
}

void dense::thread_ap_CS_fsm_state35() {
    ap_CS_fsm_state35 = ap_CS_fsm.read()[34];
}

void dense::thread_ap_CS_fsm_state36() {
    ap_CS_fsm_state36 = ap_CS_fsm.read()[35];
}

void dense::thread_ap_CS_fsm_state37() {
    ap_CS_fsm_state37 = ap_CS_fsm.read()[36];
}

void dense::thread_ap_CS_fsm_state38() {
    ap_CS_fsm_state38 = ap_CS_fsm.read()[37];
}

void dense::thread_ap_CS_fsm_state39() {
    ap_CS_fsm_state39 = ap_CS_fsm.read()[38];
}

void dense::thread_ap_CS_fsm_state40() {
    ap_CS_fsm_state40 = ap_CS_fsm.read()[39];
}

void dense::thread_ap_CS_fsm_state41() {
    ap_CS_fsm_state41 = ap_CS_fsm.read()[40];
}

void dense::thread_ap_CS_fsm_state42() {
    ap_CS_fsm_state42 = ap_CS_fsm.read()[41];
}

void dense::thread_ap_CS_fsm_state47() {
    ap_CS_fsm_state47 = ap_CS_fsm.read()[46];
}

void dense::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void dense::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void dense::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void dense::thread_ap_block_state17() {
    ap_block_state17 = (esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read()));
}

void dense::thread_ap_block_state8() {
    ap_block_state8 = (esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read()));
}

void dense::thread_ap_block_state8_io() {
    ap_block_state8_io = (esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_ARREADY.read()));
}

void dense::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_fu_2455_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dense::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dense::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_fu_2455_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dense::thread_c_fu_2461_p2() {
    c_fu_2461_p2 = (!c_0_reg_2298.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(c_0_reg_2298.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dense::thread_i3_0_0_cast_fu_2486_p1() {
    i3_0_0_cast_fu_2486_p1 = esl_zext<13,10>(i3_0_0_reg_2332.read());
}

void dense::thread_i_1_fu_2417_p2() {
    i_1_fu_2417_p2 = (!i2_0_reg_2287.read().is_01() || !ap_const_lv13_1.is_01())? sc_lv<13>(): (sc_biguint<13>(i2_0_reg_2287.read()) + sc_biguint<13>(ap_const_lv13_1));
}

void dense::thread_i_fu_2379_p2() {
    i_fu_2379_p2 = (!i_0_reg_2276.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(i_0_reg_2276.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void dense::thread_icmp_ln15_fu_2373_p2() {
    icmp_ln15_fu_2373_p2 = (!i_0_reg_2276.read().is_01() || !ap_const_lv10_310.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_2276.read() == ap_const_lv10_310);
}

void dense::thread_icmp_ln20_fu_2411_p2() {
    icmp_ln20_fu_2411_p2 = (!i2_0_reg_2287.read().is_01() || !ap_const_lv13_1EA0.is_01())? sc_lv<1>(): sc_lv<1>(i2_0_reg_2287.read() == ap_const_lv13_1EA0);
}

void dense::thread_icmp_ln30_fu_2455_p2() {
    icmp_ln30_fu_2455_p2 = (!c_0_reg_2298.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(c_0_reg_2298.read() == ap_const_lv4_A);
}

void dense::thread_icmp_ln33_fu_2490_p2() {
    icmp_ln33_fu_2490_p2 = (!i3_0_0_reg_2332.read().is_01() || !ap_const_lv10_310.is_01())? sc_lv<1>(): sc_lv<1>(i3_0_0_reg_2332.read() == ap_const_lv10_310);
}

void dense::thread_input_V_blk_n_AR() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()))) {
        input_V_blk_n_AR = m_axi_input_V_ARREADY.read();
    } else {
        input_V_blk_n_AR = ap_const_logic_1;
    }
}

void dense::thread_input_V_blk_n_AW() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state41.read())) {
        input_V_blk_n_AW = m_axi_input_V_AWREADY.read();
    } else {
        input_V_blk_n_AW = ap_const_logic_1;
    }
}

void dense::thread_input_V_blk_n_B() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state47.read())) {
        input_V_blk_n_B = m_axi_input_V_BVALID.read();
    } else {
        input_V_blk_n_B = ap_const_logic_1;
    }
}

void dense::thread_input_V_blk_n_R() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && 
          esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state28.read()))) {
        input_V_blk_n_R = m_axi_input_V_RVALID.read();
    } else {
        input_V_blk_n_R = ap_const_logic_1;
    }
}

void dense::thread_input_V_blk_n_W() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read())) {
        input_V_blk_n_W = m_axi_input_V_WREADY.read();
    } else {
        input_V_blk_n_W = ap_const_logic_1;
    }
}

void dense::thread_lshr_ln1116_100_fu_9963_p4() {
    lshr_ln1116_100_fu_9963_p4 = add_ln33_92_fu_9947_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_101_fu_10009_p4() {
    lshr_ln1116_101_fu_10009_p4 = add_ln33_93_fu_9993_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_102_fu_10055_p4() {
    lshr_ln1116_102_fu_10055_p4 = add_ln33_94_fu_10039_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_103_fu_10101_p4() {
    lshr_ln1116_103_fu_10101_p4 = add_ln33_95_fu_10085_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_10_fu_3636_p4() {
    lshr_ln1116_10_fu_3636_p4 = add_ln33_2_fu_3620_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_11_fu_3682_p4() {
    lshr_ln1116_11_fu_3682_p4 = add_ln33_3_fu_3666_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_12_fu_3728_p4() {
    lshr_ln1116_12_fu_3728_p4 = add_ln33_4_fu_3712_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_13_fu_3774_p4() {
    lshr_ln1116_13_fu_3774_p4 = add_ln33_5_fu_3758_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_14_fu_3820_p4() {
    lshr_ln1116_14_fu_3820_p4 = add_ln33_6_fu_3804_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_15_fu_3866_p4() {
    lshr_ln1116_15_fu_3866_p4 = add_ln33_7_fu_3850_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_16_fu_3912_p4() {
    lshr_ln1116_16_fu_3912_p4 = add_ln33_8_fu_3896_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_17_fu_3958_p4() {
    lshr_ln1116_17_fu_3958_p4 = add_ln33_9_fu_3942_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_18_fu_4004_p4() {
    lshr_ln1116_18_fu_4004_p4 = add_ln33_10_fu_3988_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_19_fu_4050_p4() {
    lshr_ln1116_19_fu_4050_p4 = add_ln33_11_fu_4034_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_1_fu_2772_p4() {
    lshr_ln1116_1_fu_2772_p4 = or_ln33_7_fu_2756_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_20_fu_4096_p4() {
    lshr_ln1116_20_fu_4096_p4 = add_ln33_12_fu_4080_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_21_fu_4142_p4() {
    lshr_ln1116_21_fu_4142_p4 = add_ln33_13_fu_4126_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_22_fu_4188_p4() {
    lshr_ln1116_22_fu_4188_p4 = add_ln33_14_fu_4172_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_23_fu_4234_p4() {
    lshr_ln1116_23_fu_4234_p4 = add_ln33_15_fu_4218_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_24_fu_4664_p4() {
    lshr_ln1116_24_fu_4664_p4 = add_ln33_16_fu_4648_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_25_fu_4710_p4() {
    lshr_ln1116_25_fu_4710_p4 = add_ln33_17_fu_4694_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_26_fu_4756_p4() {
    lshr_ln1116_26_fu_4756_p4 = add_ln33_18_fu_4740_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_27_fu_4802_p4() {
    lshr_ln1116_27_fu_4802_p4 = add_ln33_19_fu_4786_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_28_fu_4848_p4() {
    lshr_ln1116_28_fu_4848_p4 = add_ln33_20_fu_4832_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_29_fu_4894_p4() {
    lshr_ln1116_29_fu_4894_p4 = add_ln33_21_fu_4878_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_2_fu_2818_p4() {
    lshr_ln1116_2_fu_2818_p4 = or_ln33_8_fu_2802_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_30_fu_4940_p4() {
    lshr_ln1116_30_fu_4940_p4 = add_ln33_22_fu_4924_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_31_fu_4986_p4() {
    lshr_ln1116_31_fu_4986_p4 = add_ln33_23_fu_4970_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_32_fu_5032_p4() {
    lshr_ln1116_32_fu_5032_p4 = add_ln33_24_fu_5016_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_33_fu_5078_p4() {
    lshr_ln1116_33_fu_5078_p4 = add_ln33_25_fu_5062_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_34_fu_5124_p4() {
    lshr_ln1116_34_fu_5124_p4 = add_ln33_26_fu_5108_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_35_fu_5170_p4() {
    lshr_ln1116_35_fu_5170_p4 = add_ln33_27_fu_5154_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_36_fu_5216_p4() {
    lshr_ln1116_36_fu_5216_p4 = add_ln33_28_fu_5200_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_37_fu_5262_p4() {
    lshr_ln1116_37_fu_5262_p4 = add_ln33_29_fu_5246_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_38_fu_5308_p4() {
    lshr_ln1116_38_fu_5308_p4 = add_ln33_30_fu_5292_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_39_fu_5354_p4() {
    lshr_ln1116_39_fu_5354_p4 = add_ln33_31_fu_5338_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_3_fu_2864_p4() {
    lshr_ln1116_3_fu_2864_p4 = or_ln33_9_fu_2848_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_40_fu_5836_p4() {
    lshr_ln1116_40_fu_5836_p4 = add_ln33_32_fu_5820_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_41_fu_5882_p4() {
    lshr_ln1116_41_fu_5882_p4 = add_ln33_33_fu_5866_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_42_fu_5928_p4() {
    lshr_ln1116_42_fu_5928_p4 = add_ln33_34_fu_5912_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_43_fu_5974_p4() {
    lshr_ln1116_43_fu_5974_p4 = add_ln33_35_fu_5958_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_44_fu_6020_p4() {
    lshr_ln1116_44_fu_6020_p4 = add_ln33_36_fu_6004_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_45_fu_6066_p4() {
    lshr_ln1116_45_fu_6066_p4 = add_ln33_37_fu_6050_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_46_fu_6112_p4() {
    lshr_ln1116_46_fu_6112_p4 = add_ln33_38_fu_6096_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_47_fu_6158_p4() {
    lshr_ln1116_47_fu_6158_p4 = add_ln33_39_fu_6142_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_48_fu_6204_p4() {
    lshr_ln1116_48_fu_6204_p4 = add_ln33_40_fu_6188_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_49_fu_6250_p4() {
    lshr_ln1116_49_fu_6250_p4 = add_ln33_41_fu_6234_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_4_fu_2910_p4() {
    lshr_ln1116_4_fu_2910_p4 = or_ln33_10_fu_2894_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_50_fu_6296_p4() {
    lshr_ln1116_50_fu_6296_p4 = add_ln33_42_fu_6280_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_51_fu_6342_p4() {
    lshr_ln1116_51_fu_6342_p4 = add_ln33_43_fu_6326_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_52_fu_6388_p4() {
    lshr_ln1116_52_fu_6388_p4 = add_ln33_44_fu_6372_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_53_fu_6434_p4() {
    lshr_ln1116_53_fu_6434_p4 = add_ln33_45_fu_6418_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_54_fu_6480_p4() {
    lshr_ln1116_54_fu_6480_p4 = add_ln33_46_fu_6464_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_55_fu_6526_p4() {
    lshr_ln1116_55_fu_6526_p4 = add_ln33_47_fu_6510_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_56_fu_7032_p4() {
    lshr_ln1116_56_fu_7032_p4 = add_ln33_48_fu_7016_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_57_fu_7078_p4() {
    lshr_ln1116_57_fu_7078_p4 = add_ln33_49_fu_7062_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_58_fu_7124_p4() {
    lshr_ln1116_58_fu_7124_p4 = add_ln33_50_fu_7108_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_59_fu_7170_p4() {
    lshr_ln1116_59_fu_7170_p4 = add_ln33_51_fu_7154_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_5_fu_2956_p4() {
    lshr_ln1116_5_fu_2956_p4 = or_ln33_11_fu_2940_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_60_fu_7216_p4() {
    lshr_ln1116_60_fu_7216_p4 = add_ln33_52_fu_7200_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_61_fu_7262_p4() {
    lshr_ln1116_61_fu_7262_p4 = add_ln33_53_fu_7246_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_62_fu_7308_p4() {
    lshr_ln1116_62_fu_7308_p4 = add_ln33_54_fu_7292_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_63_fu_7354_p4() {
    lshr_ln1116_63_fu_7354_p4 = add_ln33_55_fu_7338_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_64_fu_7400_p4() {
    lshr_ln1116_64_fu_7400_p4 = add_ln33_56_fu_7384_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_65_fu_7446_p4() {
    lshr_ln1116_65_fu_7446_p4 = add_ln33_57_fu_7430_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_66_fu_7492_p4() {
    lshr_ln1116_66_fu_7492_p4 = add_ln33_58_fu_7476_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_67_fu_7538_p4() {
    lshr_ln1116_67_fu_7538_p4 = add_ln33_59_fu_7522_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_68_fu_7584_p4() {
    lshr_ln1116_68_fu_7584_p4 = add_ln33_60_fu_7568_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_69_fu_7630_p4() {
    lshr_ln1116_69_fu_7630_p4 = add_ln33_61_fu_7614_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_6_fu_3002_p4() {
    lshr_ln1116_6_fu_3002_p4 = or_ln33_12_fu_2986_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_70_fu_7676_p4() {
    lshr_ln1116_70_fu_7676_p4 = add_ln33_62_fu_7660_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_71_fu_7722_p4() {
    lshr_ln1116_71_fu_7722_p4 = add_ln33_63_fu_7706_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_72_fu_8216_p4() {
    lshr_ln1116_72_fu_8216_p4 = add_ln33_64_fu_8200_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_73_fu_8262_p4() {
    lshr_ln1116_73_fu_8262_p4 = add_ln33_65_fu_8246_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_74_fu_8308_p4() {
    lshr_ln1116_74_fu_8308_p4 = add_ln33_66_fu_8292_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_75_fu_8354_p4() {
    lshr_ln1116_75_fu_8354_p4 = add_ln33_67_fu_8338_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_76_fu_8400_p4() {
    lshr_ln1116_76_fu_8400_p4 = add_ln33_68_fu_8384_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_77_fu_8446_p4() {
    lshr_ln1116_77_fu_8446_p4 = add_ln33_69_fu_8430_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_78_fu_8492_p4() {
    lshr_ln1116_78_fu_8492_p4 = add_ln33_70_fu_8476_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_79_fu_8538_p4() {
    lshr_ln1116_79_fu_8538_p4 = add_ln33_71_fu_8522_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_7_fu_3048_p4() {
    lshr_ln1116_7_fu_3048_p4 = or_ln33_13_fu_3032_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_80_fu_8584_p4() {
    lshr_ln1116_80_fu_8584_p4 = add_ln33_72_fu_8568_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_81_fu_8630_p4() {
    lshr_ln1116_81_fu_8630_p4 = add_ln33_73_fu_8614_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_82_fu_8676_p4() {
    lshr_ln1116_82_fu_8676_p4 = add_ln33_74_fu_8660_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_83_fu_8722_p4() {
    lshr_ln1116_83_fu_8722_p4 = add_ln33_75_fu_8706_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_84_fu_8768_p4() {
    lshr_ln1116_84_fu_8768_p4 = add_ln33_76_fu_8752_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_85_fu_8814_p4() {
    lshr_ln1116_85_fu_8814_p4 = add_ln33_77_fu_8798_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_86_fu_8860_p4() {
    lshr_ln1116_86_fu_8860_p4 = add_ln33_78_fu_8844_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_87_fu_8906_p4() {
    lshr_ln1116_87_fu_8906_p4 = add_ln33_79_fu_8890_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_88_fu_9411_p4() {
    lshr_ln1116_88_fu_9411_p4 = add_ln33_80_fu_9395_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_89_fu_9457_p4() {
    lshr_ln1116_89_fu_9457_p4 = add_ln33_81_fu_9441_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_8_fu_3094_p4() {
    lshr_ln1116_8_fu_3094_p4 = or_ln33_14_fu_3078_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_90_fu_9503_p4() {
    lshr_ln1116_90_fu_9503_p4 = add_ln33_82_fu_9487_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_91_fu_9549_p4() {
    lshr_ln1116_91_fu_9549_p4 = add_ln33_83_fu_9533_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_92_fu_9595_p4() {
    lshr_ln1116_92_fu_9595_p4 = add_ln33_84_fu_9579_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_93_fu_9641_p4() {
    lshr_ln1116_93_fu_9641_p4 = add_ln33_85_fu_9625_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_94_fu_9687_p4() {
    lshr_ln1116_94_fu_9687_p4 = add_ln33_86_fu_9671_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_95_fu_9733_p4() {
    lshr_ln1116_95_fu_9733_p4 = add_ln33_87_fu_9717_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_96_fu_9779_p4() {
    lshr_ln1116_96_fu_9779_p4 = add_ln33_88_fu_9763_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_97_fu_9825_p4() {
    lshr_ln1116_97_fu_9825_p4 = add_ln33_89_fu_9809_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_98_fu_9871_p4() {
    lshr_ln1116_98_fu_9871_p4 = add_ln33_90_fu_9855_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_99_fu_9917_p4() {
    lshr_ln1116_99_fu_9917_p4 = add_ln33_91_fu_9901_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_9_fu_3544_p4() {
    lshr_ln1116_9_fu_3544_p4 = add_ln33_fu_3528_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1116_s_fu_3590_p4() {
    lshr_ln1116_s_fu_3590_p4 = add_ln33_1_fu_3574_p2.read().range(9, 3);
}

void dense::thread_lshr_ln1117_100_fu_9656_p4() {
    lshr_ln1117_100_fu_9656_p4 = add_ln35_101_fu_9635_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_101_fu_9702_p4() {
    lshr_ln1117_101_fu_9702_p4 = add_ln35_102_fu_9681_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_102_fu_9748_p4() {
    lshr_ln1117_102_fu_9748_p4 = add_ln35_103_fu_9727_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_103_fu_9794_p4() {
    lshr_ln1117_103_fu_9794_p4 = add_ln35_104_fu_9773_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_104_fu_9840_p4() {
    lshr_ln1117_104_fu_9840_p4 = add_ln35_105_fu_9819_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_105_fu_9886_p4() {
    lshr_ln1117_105_fu_9886_p4 = add_ln35_106_fu_9865_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_106_fu_9932_p4() {
    lshr_ln1117_106_fu_9932_p4 = add_ln35_107_fu_9911_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_107_fu_9978_p4() {
    lshr_ln1117_107_fu_9978_p4 = add_ln35_108_fu_9957_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_108_fu_10024_p4() {
    lshr_ln1117_108_fu_10024_p4 = add_ln35_109_fu_10003_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_109_fu_10070_p4() {
    lshr_ln1117_109_fu_10070_p4 = add_ln35_110_fu_10049_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_10_fu_2925_p4() {
    lshr_ln1117_10_fu_2925_p4 = add_ln35_11_fu_2904_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_110_fu_10116_p4() {
    lshr_ln1117_110_fu_10116_p4 = add_ln35_111_fu_10095_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_11_fu_2971_p4() {
    lshr_ln1117_11_fu_2971_p4 = add_ln35_12_fu_2950_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_12_fu_3017_p4() {
    lshr_ln1117_12_fu_3017_p4 = add_ln35_13_fu_2996_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_13_fu_3063_p4() {
    lshr_ln1117_13_fu_3063_p4 = add_ln35_14_fu_3042_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_14_fu_3109_p4() {
    lshr_ln1117_14_fu_3109_p4 = add_ln35_15_fu_3088_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_15_fu_3559_p4() {
    lshr_ln1117_15_fu_3559_p4 = add_ln35_16_fu_3538_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_16_fu_3605_p4() {
    lshr_ln1117_16_fu_3605_p4 = add_ln35_17_fu_3584_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_17_fu_3651_p4() {
    lshr_ln1117_17_fu_3651_p4 = add_ln35_18_fu_3630_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_18_fu_3697_p4() {
    lshr_ln1117_18_fu_3697_p4 = add_ln35_19_fu_3676_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_19_fu_3743_p4() {
    lshr_ln1117_19_fu_3743_p4 = add_ln35_20_fu_3722_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_1_fu_2555_p4() {
    lshr_ln1117_1_fu_2555_p4 = add_ln35_1_fu_2549_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_20_fu_3789_p4() {
    lshr_ln1117_20_fu_3789_p4 = add_ln35_21_fu_3768_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_21_fu_3835_p4() {
    lshr_ln1117_21_fu_3835_p4 = add_ln35_22_fu_3814_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_22_fu_3881_p4() {
    lshr_ln1117_22_fu_3881_p4 = add_ln35_23_fu_3860_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_23_fu_3927_p4() {
    lshr_ln1117_23_fu_3927_p4 = add_ln35_24_fu_3906_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_24_fu_3973_p4() {
    lshr_ln1117_24_fu_3973_p4 = add_ln35_25_fu_3952_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_25_fu_4019_p4() {
    lshr_ln1117_25_fu_4019_p4 = add_ln35_26_fu_3998_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_26_fu_4065_p4() {
    lshr_ln1117_26_fu_4065_p4 = add_ln35_27_fu_4044_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_27_fu_4111_p4() {
    lshr_ln1117_27_fu_4111_p4 = add_ln35_28_fu_4090_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_28_fu_4157_p4() {
    lshr_ln1117_28_fu_4157_p4 = add_ln35_29_fu_4136_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_29_fu_4203_p4() {
    lshr_ln1117_29_fu_4203_p4 = add_ln35_30_fu_4182_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_2_fu_2586_p4() {
    lshr_ln1117_2_fu_2586_p4 = add_ln35_2_fu_2580_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_30_fu_4249_p4() {
    lshr_ln1117_30_fu_4249_p4 = add_ln35_31_fu_4228_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_31_fu_4679_p4() {
    lshr_ln1117_31_fu_4679_p4 = add_ln35_32_fu_4658_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_32_fu_4725_p4() {
    lshr_ln1117_32_fu_4725_p4 = add_ln35_33_fu_4704_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_33_fu_4771_p4() {
    lshr_ln1117_33_fu_4771_p4 = add_ln35_34_fu_4750_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_34_fu_4817_p4() {
    lshr_ln1117_34_fu_4817_p4 = add_ln35_35_fu_4796_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_35_fu_4863_p4() {
    lshr_ln1117_35_fu_4863_p4 = add_ln35_36_fu_4842_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_36_fu_4909_p4() {
    lshr_ln1117_36_fu_4909_p4 = add_ln35_37_fu_4888_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_37_fu_4955_p4() {
    lshr_ln1117_37_fu_4955_p4 = add_ln35_38_fu_4934_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_38_fu_5001_p4() {
    lshr_ln1117_38_fu_5001_p4 = add_ln35_39_fu_4980_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_39_fu_5047_p4() {
    lshr_ln1117_39_fu_5047_p4 = add_ln35_40_fu_5026_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_3_fu_2617_p4() {
    lshr_ln1117_3_fu_2617_p4 = add_ln35_3_fu_2611_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_40_fu_5093_p4() {
    lshr_ln1117_40_fu_5093_p4 = add_ln35_41_fu_5072_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_41_fu_5139_p4() {
    lshr_ln1117_41_fu_5139_p4 = add_ln35_42_fu_5118_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_42_fu_5185_p4() {
    lshr_ln1117_42_fu_5185_p4 = add_ln35_43_fu_5164_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_43_fu_5231_p4() {
    lshr_ln1117_43_fu_5231_p4 = add_ln35_44_fu_5210_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_44_fu_5277_p4() {
    lshr_ln1117_44_fu_5277_p4 = add_ln35_45_fu_5256_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_45_fu_5323_p4() {
    lshr_ln1117_45_fu_5323_p4 = add_ln35_46_fu_5302_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_46_fu_5369_p4() {
    lshr_ln1117_46_fu_5369_p4 = add_ln35_47_fu_5348_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_47_fu_5851_p4() {
    lshr_ln1117_47_fu_5851_p4 = add_ln35_48_fu_5830_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_48_fu_5897_p4() {
    lshr_ln1117_48_fu_5897_p4 = add_ln35_49_fu_5876_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_49_fu_5943_p4() {
    lshr_ln1117_49_fu_5943_p4 = add_ln35_50_fu_5922_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_4_fu_2648_p4() {
    lshr_ln1117_4_fu_2648_p4 = add_ln35_4_fu_2642_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_50_fu_5989_p4() {
    lshr_ln1117_50_fu_5989_p4 = add_ln35_51_fu_5968_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_51_fu_6035_p4() {
    lshr_ln1117_51_fu_6035_p4 = add_ln35_52_fu_6014_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_52_fu_6081_p4() {
    lshr_ln1117_52_fu_6081_p4 = add_ln35_53_fu_6060_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_53_fu_6127_p4() {
    lshr_ln1117_53_fu_6127_p4 = add_ln35_54_fu_6106_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_54_fu_6173_p4() {
    lshr_ln1117_54_fu_6173_p4 = add_ln35_55_fu_6152_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_55_fu_6219_p4() {
    lshr_ln1117_55_fu_6219_p4 = add_ln35_56_fu_6198_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_56_fu_6265_p4() {
    lshr_ln1117_56_fu_6265_p4 = add_ln35_57_fu_6244_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_57_fu_6311_p4() {
    lshr_ln1117_57_fu_6311_p4 = add_ln35_58_fu_6290_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_58_fu_6357_p4() {
    lshr_ln1117_58_fu_6357_p4 = add_ln35_59_fu_6336_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_59_fu_6403_p4() {
    lshr_ln1117_59_fu_6403_p4 = add_ln35_60_fu_6382_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_5_fu_2679_p4() {
    lshr_ln1117_5_fu_2679_p4 = add_ln35_5_fu_2673_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_60_fu_6449_p4() {
    lshr_ln1117_60_fu_6449_p4 = add_ln35_61_fu_6428_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_61_fu_6495_p4() {
    lshr_ln1117_61_fu_6495_p4 = add_ln35_62_fu_6474_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_62_fu_6541_p4() {
    lshr_ln1117_62_fu_6541_p4 = add_ln35_63_fu_6520_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_63_fu_7047_p4() {
    lshr_ln1117_63_fu_7047_p4 = add_ln35_64_fu_7026_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_64_fu_7093_p4() {
    lshr_ln1117_64_fu_7093_p4 = add_ln35_65_fu_7072_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_65_fu_7139_p4() {
    lshr_ln1117_65_fu_7139_p4 = add_ln35_66_fu_7118_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_66_fu_7185_p4() {
    lshr_ln1117_66_fu_7185_p4 = add_ln35_67_fu_7164_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_67_fu_7231_p4() {
    lshr_ln1117_67_fu_7231_p4 = add_ln35_68_fu_7210_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_68_fu_7277_p4() {
    lshr_ln1117_68_fu_7277_p4 = add_ln35_69_fu_7256_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_69_fu_7323_p4() {
    lshr_ln1117_69_fu_7323_p4 = add_ln35_70_fu_7302_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_6_fu_2710_p4() {
    lshr_ln1117_6_fu_2710_p4 = add_ln35_6_fu_2704_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_70_fu_7369_p4() {
    lshr_ln1117_70_fu_7369_p4 = add_ln35_71_fu_7348_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_71_fu_7415_p4() {
    lshr_ln1117_71_fu_7415_p4 = add_ln35_72_fu_7394_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_72_fu_7461_p4() {
    lshr_ln1117_72_fu_7461_p4 = add_ln35_73_fu_7440_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_73_fu_7507_p4() {
    lshr_ln1117_73_fu_7507_p4 = add_ln35_74_fu_7486_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_74_fu_7553_p4() {
    lshr_ln1117_74_fu_7553_p4 = add_ln35_75_fu_7532_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_75_fu_7599_p4() {
    lshr_ln1117_75_fu_7599_p4 = add_ln35_76_fu_7578_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_76_fu_7645_p4() {
    lshr_ln1117_76_fu_7645_p4 = add_ln35_77_fu_7624_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_77_fu_7691_p4() {
    lshr_ln1117_77_fu_7691_p4 = add_ln35_78_fu_7670_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_78_fu_7737_p4() {
    lshr_ln1117_78_fu_7737_p4 = add_ln35_79_fu_7716_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_79_fu_8231_p4() {
    lshr_ln1117_79_fu_8231_p4 = add_ln35_80_fu_8210_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_7_fu_2741_p4() {
    lshr_ln1117_7_fu_2741_p4 = add_ln35_7_fu_2735_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_80_fu_8277_p4() {
    lshr_ln1117_80_fu_8277_p4 = add_ln35_81_fu_8256_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_81_fu_8323_p4() {
    lshr_ln1117_81_fu_8323_p4 = add_ln35_82_fu_8302_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_82_fu_8369_p4() {
    lshr_ln1117_82_fu_8369_p4 = add_ln35_83_fu_8348_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_83_fu_8415_p4() {
    lshr_ln1117_83_fu_8415_p4 = add_ln35_84_fu_8394_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_84_fu_8461_p4() {
    lshr_ln1117_84_fu_8461_p4 = add_ln35_85_fu_8440_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_85_fu_8507_p4() {
    lshr_ln1117_85_fu_8507_p4 = add_ln35_86_fu_8486_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_86_fu_8553_p4() {
    lshr_ln1117_86_fu_8553_p4 = add_ln35_87_fu_8532_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_87_fu_8599_p4() {
    lshr_ln1117_87_fu_8599_p4 = add_ln35_88_fu_8578_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_88_fu_8645_p4() {
    lshr_ln1117_88_fu_8645_p4 = add_ln35_89_fu_8624_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_89_fu_8691_p4() {
    lshr_ln1117_89_fu_8691_p4 = add_ln35_90_fu_8670_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_8_fu_2787_p4() {
    lshr_ln1117_8_fu_2787_p4 = add_ln35_8_fu_2766_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_90_fu_8737_p4() {
    lshr_ln1117_90_fu_8737_p4 = add_ln35_91_fu_8716_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_91_fu_8783_p4() {
    lshr_ln1117_91_fu_8783_p4 = add_ln35_92_fu_8762_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_92_fu_8829_p4() {
    lshr_ln1117_92_fu_8829_p4 = add_ln35_93_fu_8808_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_93_fu_8875_p4() {
    lshr_ln1117_93_fu_8875_p4 = add_ln35_94_fu_8854_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_94_fu_8921_p4() {
    lshr_ln1117_94_fu_8921_p4 = add_ln35_95_fu_8900_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_95_fu_9426_p4() {
    lshr_ln1117_95_fu_9426_p4 = add_ln35_96_fu_9405_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_96_fu_9472_p4() {
    lshr_ln1117_96_fu_9472_p4 = add_ln35_97_fu_9451_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_97_fu_9518_p4() {
    lshr_ln1117_97_fu_9518_p4 = add_ln35_98_fu_9497_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_98_fu_9564_p4() {
    lshr_ln1117_98_fu_9564_p4 = add_ln35_99_fu_9543_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_99_fu_9610_p4() {
    lshr_ln1117_99_fu_9610_p4 = add_ln35_100_fu_9589_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_9_fu_2833_p4() {
    lshr_ln1117_9_fu_2833_p4 = add_ln35_9_fu_2812_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1117_s_fu_2879_p4() {
    lshr_ln1117_s_fu_2879_p4 = add_ln35_10_fu_2858_p2.read().range(12, 3);
}

void dense::thread_lshr_ln1_fu_2502_p4() {
    lshr_ln1_fu_2502_p4 = i3_0_0_reg_2332.read().range(9, 3);
}

void dense::thread_lshr_ln203_1_fu_2427_p4() {
    lshr_ln203_1_fu_2427_p4 = i2_0_reg_2287.read().range(12, 3);
}

void dense::thread_lshr_ln2_fu_2524_p4() {
    lshr_ln2_fu_2524_p4 = add_ln35_fu_2496_p2.read().range(12, 3);
}

void dense::thread_lshr_ln_fu_2389_p4() {
    lshr_ln_fu_2389_p4 = i_0_reg_2276.read().range(9, 3);
}

void dense::thread_m_axi_input_V_ARADDR() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()) && 
         esl_seteq<1,1,1>(m_axi_input_V_ARREADY.read(), ap_const_logic_1))) {
        m_axi_input_V_ARADDR = fcBias_V_addr_reg_10942.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
                esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1) && 
                !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        m_axi_input_V_ARADDR = input_V_addr_reg_10785.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_ARREADY.read())))) {
        m_axi_input_V_ARADDR =  (sc_lv<32>) (sext_ln7_1_fu_2344_p1.read());
    } else {
        m_axi_input_V_ARADDR = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dense::thread_m_axi_input_V_ARBURST() {
    m_axi_input_V_ARBURST = ap_const_lv2_0;
}

void dense::thread_m_axi_input_V_ARCACHE() {
    m_axi_input_V_ARCACHE = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_ARID() {
    m_axi_input_V_ARID = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_ARLEN() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()) && 
         esl_seteq<1,1,1>(m_axi_input_V_ARREADY.read(), ap_const_logic_1))) {
        m_axi_input_V_ARLEN = ap_const_lv32_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
                esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1) && 
                !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        m_axi_input_V_ARLEN = ap_const_lv32_1EA0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_ARREADY.read())))) {
        m_axi_input_V_ARLEN = ap_const_lv32_310;
    } else {
        m_axi_input_V_ARLEN = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dense::thread_m_axi_input_V_ARLOCK() {
    m_axi_input_V_ARLOCK = ap_const_lv2_0;
}

void dense::thread_m_axi_input_V_ARPROT() {
    m_axi_input_V_ARPROT = ap_const_lv3_0;
}

void dense::thread_m_axi_input_V_ARQOS() {
    m_axi_input_V_ARQOS = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_ARREGION() {
    m_axi_input_V_ARREGION = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_ARSIZE() {
    m_axi_input_V_ARSIZE = ap_const_lv3_0;
}

void dense::thread_m_axi_input_V_ARUSER() {
    m_axi_input_V_ARUSER = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_ARVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_ARREADY.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_1) && 
          !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()) && 
          esl_seteq<1,1,1>(m_axi_input_V_ARREADY.read(), ap_const_logic_1)))) {
        m_axi_input_V_ARVALID = ap_const_logic_1;
    } else {
        m_axi_input_V_ARVALID = ap_const_logic_0;
    }
}

void dense::thread_m_axi_input_V_AWADDR() {
    m_axi_input_V_AWADDR = fcBias_V_addr_1_reg_11121.read();
}

void dense::thread_m_axi_input_V_AWBURST() {
    m_axi_input_V_AWBURST = ap_const_lv2_0;
}

void dense::thread_m_axi_input_V_AWCACHE() {
    m_axi_input_V_AWCACHE = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_AWID() {
    m_axi_input_V_AWID = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_AWLEN() {
    m_axi_input_V_AWLEN = ap_const_lv32_1;
}

void dense::thread_m_axi_input_V_AWLOCK() {
    m_axi_input_V_AWLOCK = ap_const_lv2_0;
}

void dense::thread_m_axi_input_V_AWPROT() {
    m_axi_input_V_AWPROT = ap_const_lv3_0;
}

void dense::thread_m_axi_input_V_AWQOS() {
    m_axi_input_V_AWQOS = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_AWREGION() {
    m_axi_input_V_AWREGION = ap_const_lv4_0;
}

void dense::thread_m_axi_input_V_AWSIZE() {
    m_axi_input_V_AWSIZE = ap_const_lv3_0;
}

void dense::thread_m_axi_input_V_AWUSER() {
    m_axi_input_V_AWUSER = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_AWVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state41.read()) && 
         esl_seteq<1,1,1>(m_axi_input_V_AWREADY.read(), ap_const_logic_1))) {
        m_axi_input_V_AWVALID = ap_const_logic_1;
    } else {
        m_axi_input_V_AWVALID = ap_const_logic_0;
    }
}

void dense::thread_m_axi_input_V_BREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state47.read()) && 
         esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
        m_axi_input_V_BREADY = ap_const_logic_1;
    } else {
        m_axi_input_V_BREADY = ap_const_logic_0;
    }
}

void dense::thread_m_axi_input_V_RREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
          !((esl_seteq<1,1,1>(icmp_ln15_fu_2373_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && 
          esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(icmp_ln20_fu_2411_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state28.read()) && 
          esl_seteq<1,1,1>(m_axi_input_V_RVALID.read(), ap_const_logic_1)))) {
        m_axi_input_V_RREADY = ap_const_logic_1;
    } else {
        m_axi_input_V_RREADY = ap_const_logic_0;
    }
}

void dense::thread_m_axi_input_V_WDATA() {
    m_axi_input_V_WDATA = p_Val2_1_0_reg_2321.read();
}

void dense::thread_m_axi_input_V_WID() {
    m_axi_input_V_WID = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_WLAST() {
    m_axi_input_V_WLAST = ap_const_logic_0;
}

void dense::thread_m_axi_input_V_WSTRB() {
    m_axi_input_V_WSTRB = ap_const_lv1_1;
}

void dense::thread_m_axi_input_V_WUSER() {
    m_axi_input_V_WUSER = ap_const_lv1_0;
}

void dense::thread_m_axi_input_V_WVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
         esl_seteq<1,1,1>(m_axi_input_V_WREADY.read(), ap_const_logic_1))) {
        m_axi_input_V_WVALID = ap_const_logic_1;
    } else {
        m_axi_input_V_WVALID = ap_const_logic_0;
    }
}

void dense::thread_mul_ln1118_100_fu_10315_p0() {
    mul_ln1118_100_fu_10315_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_100_fu_10315_p1() {
    mul_ln1118_100_fu_10315_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_100_fu_10315_p2() {
    mul_ln1118_100_fu_10315_p2 = (!mul_ln1118_100_fu_10315_p0.read().is_01() || !mul_ln1118_100_fu_10315_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_100_fu_10315_p0.read()) * sc_bigint<8>(mul_ln1118_100_fu_10315_p1.read());
}

void dense::thread_mul_ln1118_101_fu_10339_p0() {
    mul_ln1118_101_fu_10339_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_101_fu_10339_p1() {
    mul_ln1118_101_fu_10339_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_101_fu_10339_p2() {
    mul_ln1118_101_fu_10339_p2 = (!mul_ln1118_101_fu_10339_p0.read().is_01() || !mul_ln1118_101_fu_10339_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_101_fu_10339_p0.read()) * sc_bigint<8>(mul_ln1118_101_fu_10339_p1.read());
}

void dense::thread_mul_ln1118_102_fu_10363_p0() {
    mul_ln1118_102_fu_10363_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_102_fu_10363_p1() {
    mul_ln1118_102_fu_10363_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_102_fu_10363_p2() {
    mul_ln1118_102_fu_10363_p2 = (!mul_ln1118_102_fu_10363_p0.read().is_01() || !mul_ln1118_102_fu_10363_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_102_fu_10363_p0.read()) * sc_bigint<8>(mul_ln1118_102_fu_10363_p1.read());
}

void dense::thread_mul_ln1118_103_fu_10387_p0() {
    mul_ln1118_103_fu_10387_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_103_fu_10387_p1() {
    mul_ln1118_103_fu_10387_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_103_fu_10387_p2() {
    mul_ln1118_103_fu_10387_p2 = (!mul_ln1118_103_fu_10387_p0.read().is_01() || !mul_ln1118_103_fu_10387_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_103_fu_10387_p0.read()) * sc_bigint<8>(mul_ln1118_103_fu_10387_p1.read());
}

void dense::thread_mul_ln1118_104_fu_10411_p0() {
    mul_ln1118_104_fu_10411_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_104_fu_10411_p1() {
    mul_ln1118_104_fu_10411_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_104_fu_10411_p2() {
    mul_ln1118_104_fu_10411_p2 = (!mul_ln1118_104_fu_10411_p0.read().is_01() || !mul_ln1118_104_fu_10411_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_104_fu_10411_p0.read()) * sc_bigint<8>(mul_ln1118_104_fu_10411_p1.read());
}

void dense::thread_mul_ln1118_105_fu_10435_p0() {
    mul_ln1118_105_fu_10435_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_105_fu_10435_p1() {
    mul_ln1118_105_fu_10435_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_105_fu_10435_p2() {
    mul_ln1118_105_fu_10435_p2 = (!mul_ln1118_105_fu_10435_p0.read().is_01() || !mul_ln1118_105_fu_10435_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_105_fu_10435_p0.read()) * sc_bigint<8>(mul_ln1118_105_fu_10435_p1.read());
}

void dense::thread_mul_ln1118_106_fu_10459_p0() {
    mul_ln1118_106_fu_10459_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_106_fu_10459_p1() {
    mul_ln1118_106_fu_10459_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_106_fu_10459_p2() {
    mul_ln1118_106_fu_10459_p2 = (!mul_ln1118_106_fu_10459_p0.read().is_01() || !mul_ln1118_106_fu_10459_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_106_fu_10459_p0.read()) * sc_bigint<8>(mul_ln1118_106_fu_10459_p1.read());
}

void dense::thread_mul_ln1118_107_fu_10483_p0() {
    mul_ln1118_107_fu_10483_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_107_fu_10483_p1() {
    mul_ln1118_107_fu_10483_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_107_fu_10483_p2() {
    mul_ln1118_107_fu_10483_p2 = (!mul_ln1118_107_fu_10483_p0.read().is_01() || !mul_ln1118_107_fu_10483_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_107_fu_10483_p0.read()) * sc_bigint<8>(mul_ln1118_107_fu_10483_p1.read());
}

void dense::thread_mul_ln1118_108_fu_10507_p0() {
    mul_ln1118_108_fu_10507_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_108_fu_10507_p1() {
    mul_ln1118_108_fu_10507_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_108_fu_10507_p2() {
    mul_ln1118_108_fu_10507_p2 = (!mul_ln1118_108_fu_10507_p0.read().is_01() || !mul_ln1118_108_fu_10507_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_108_fu_10507_p0.read()) * sc_bigint<8>(mul_ln1118_108_fu_10507_p1.read());
}

void dense::thread_mul_ln1118_109_fu_10531_p0() {
    mul_ln1118_109_fu_10531_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_109_fu_10531_p1() {
    mul_ln1118_109_fu_10531_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_109_fu_10531_p2() {
    mul_ln1118_109_fu_10531_p2 = (!mul_ln1118_109_fu_10531_p0.read().is_01() || !mul_ln1118_109_fu_10531_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_109_fu_10531_p0.read()) * sc_bigint<8>(mul_ln1118_109_fu_10531_p1.read());
}

void dense::thread_mul_ln1118_10_fu_3392_p0() {
    mul_ln1118_10_fu_3392_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_10_fu_3392_p1() {
    mul_ln1118_10_fu_3392_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_10_fu_3392_p2() {
    mul_ln1118_10_fu_3392_p2 = (!mul_ln1118_10_fu_3392_p0.read().is_01() || !mul_ln1118_10_fu_3392_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_10_fu_3392_p0.read()) * sc_bigint<8>(mul_ln1118_10_fu_3392_p1.read());
}

void dense::thread_mul_ln1118_110_fu_10555_p0() {
    mul_ln1118_110_fu_10555_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_110_fu_10555_p1() {
    mul_ln1118_110_fu_10555_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_110_fu_10555_p2() {
    mul_ln1118_110_fu_10555_p2 = (!mul_ln1118_110_fu_10555_p0.read().is_01() || !mul_ln1118_110_fu_10555_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_110_fu_10555_p0.read()) * sc_bigint<8>(mul_ln1118_110_fu_10555_p1.read());
}

void dense::thread_mul_ln1118_111_fu_10579_p0() {
    mul_ln1118_111_fu_10579_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_111_fu_10579_p1() {
    mul_ln1118_111_fu_10579_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_111_fu_10579_p2() {
    mul_ln1118_111_fu_10579_p2 = (!mul_ln1118_111_fu_10579_p0.read().is_01() || !mul_ln1118_111_fu_10579_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_111_fu_10579_p0.read()) * sc_bigint<8>(mul_ln1118_111_fu_10579_p1.read());
}

void dense::thread_mul_ln1118_11_fu_3416_p0() {
    mul_ln1118_11_fu_3416_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_11_fu_3416_p1() {
    mul_ln1118_11_fu_3416_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_11_fu_3416_p2() {
    mul_ln1118_11_fu_3416_p2 = (!mul_ln1118_11_fu_3416_p0.read().is_01() || !mul_ln1118_11_fu_3416_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_11_fu_3416_p0.read()) * sc_bigint<8>(mul_ln1118_11_fu_3416_p1.read());
}

void dense::thread_mul_ln1118_12_fu_3440_p0() {
    mul_ln1118_12_fu_3440_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_12_fu_3440_p1() {
    mul_ln1118_12_fu_3440_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_12_fu_3440_p2() {
    mul_ln1118_12_fu_3440_p2 = (!mul_ln1118_12_fu_3440_p0.read().is_01() || !mul_ln1118_12_fu_3440_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_12_fu_3440_p0.read()) * sc_bigint<8>(mul_ln1118_12_fu_3440_p1.read());
}

void dense::thread_mul_ln1118_13_fu_3464_p0() {
    mul_ln1118_13_fu_3464_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_13_fu_3464_p1() {
    mul_ln1118_13_fu_3464_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_13_fu_3464_p2() {
    mul_ln1118_13_fu_3464_p2 = (!mul_ln1118_13_fu_3464_p0.read().is_01() || !mul_ln1118_13_fu_3464_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_13_fu_3464_p0.read()) * sc_bigint<8>(mul_ln1118_13_fu_3464_p1.read());
}

void dense::thread_mul_ln1118_14_fu_3488_p0() {
    mul_ln1118_14_fu_3488_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_14_fu_3488_p1() {
    mul_ln1118_14_fu_3488_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_14_fu_3488_p2() {
    mul_ln1118_14_fu_3488_p2 = (!mul_ln1118_14_fu_3488_p0.read().is_01() || !mul_ln1118_14_fu_3488_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_14_fu_3488_p0.read()) * sc_bigint<8>(mul_ln1118_14_fu_3488_p1.read());
}

void dense::thread_mul_ln1118_15_fu_3512_p0() {
    mul_ln1118_15_fu_3512_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_15_fu_3512_p1() {
    mul_ln1118_15_fu_3512_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_15_fu_3512_p2() {
    mul_ln1118_15_fu_3512_p2 = (!mul_ln1118_15_fu_3512_p0.read().is_01() || !mul_ln1118_15_fu_3512_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_15_fu_3512_p0.read()) * sc_bigint<8>(mul_ln1118_15_fu_3512_p1.read());
}

void dense::thread_mul_ln1118_16_fu_4272_p0() {
    mul_ln1118_16_fu_4272_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_16_fu_4272_p1() {
    mul_ln1118_16_fu_4272_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_16_fu_4272_p2() {
    mul_ln1118_16_fu_4272_p2 = (!mul_ln1118_16_fu_4272_p0.read().is_01() || !mul_ln1118_16_fu_4272_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_16_fu_4272_p0.read()) * sc_bigint<8>(mul_ln1118_16_fu_4272_p1.read());
}

void dense::thread_mul_ln1118_17_fu_4296_p0() {
    mul_ln1118_17_fu_4296_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_17_fu_4296_p1() {
    mul_ln1118_17_fu_4296_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_17_fu_4296_p2() {
    mul_ln1118_17_fu_4296_p2 = (!mul_ln1118_17_fu_4296_p0.read().is_01() || !mul_ln1118_17_fu_4296_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_17_fu_4296_p0.read()) * sc_bigint<8>(mul_ln1118_17_fu_4296_p1.read());
}

void dense::thread_mul_ln1118_18_fu_4320_p0() {
    mul_ln1118_18_fu_4320_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_18_fu_4320_p1() {
    mul_ln1118_18_fu_4320_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_18_fu_4320_p2() {
    mul_ln1118_18_fu_4320_p2 = (!mul_ln1118_18_fu_4320_p0.read().is_01() || !mul_ln1118_18_fu_4320_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_18_fu_4320_p0.read()) * sc_bigint<8>(mul_ln1118_18_fu_4320_p1.read());
}

void dense::thread_mul_ln1118_19_fu_4344_p0() {
    mul_ln1118_19_fu_4344_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_19_fu_4344_p1() {
    mul_ln1118_19_fu_4344_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_19_fu_4344_p2() {
    mul_ln1118_19_fu_4344_p2 = (!mul_ln1118_19_fu_4344_p0.read().is_01() || !mul_ln1118_19_fu_4344_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_19_fu_4344_p0.read()) * sc_bigint<8>(mul_ln1118_19_fu_4344_p1.read());
}

void dense::thread_mul_ln1118_1_fu_3176_p0() {
    mul_ln1118_1_fu_3176_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_1_fu_3176_p1() {
    mul_ln1118_1_fu_3176_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_1_fu_3176_p2() {
    mul_ln1118_1_fu_3176_p2 = (!mul_ln1118_1_fu_3176_p0.read().is_01() || !mul_ln1118_1_fu_3176_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_1_fu_3176_p0.read()) * sc_bigint<8>(mul_ln1118_1_fu_3176_p1.read());
}

void dense::thread_mul_ln1118_20_fu_4368_p0() {
    mul_ln1118_20_fu_4368_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_20_fu_4368_p1() {
    mul_ln1118_20_fu_4368_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_20_fu_4368_p2() {
    mul_ln1118_20_fu_4368_p2 = (!mul_ln1118_20_fu_4368_p0.read().is_01() || !mul_ln1118_20_fu_4368_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_20_fu_4368_p0.read()) * sc_bigint<8>(mul_ln1118_20_fu_4368_p1.read());
}

void dense::thread_mul_ln1118_21_fu_4392_p0() {
    mul_ln1118_21_fu_4392_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_21_fu_4392_p1() {
    mul_ln1118_21_fu_4392_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_21_fu_4392_p2() {
    mul_ln1118_21_fu_4392_p2 = (!mul_ln1118_21_fu_4392_p0.read().is_01() || !mul_ln1118_21_fu_4392_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_21_fu_4392_p0.read()) * sc_bigint<8>(mul_ln1118_21_fu_4392_p1.read());
}

void dense::thread_mul_ln1118_22_fu_4416_p0() {
    mul_ln1118_22_fu_4416_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_22_fu_4416_p1() {
    mul_ln1118_22_fu_4416_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_22_fu_4416_p2() {
    mul_ln1118_22_fu_4416_p2 = (!mul_ln1118_22_fu_4416_p0.read().is_01() || !mul_ln1118_22_fu_4416_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_22_fu_4416_p0.read()) * sc_bigint<8>(mul_ln1118_22_fu_4416_p1.read());
}

void dense::thread_mul_ln1118_23_fu_4440_p0() {
    mul_ln1118_23_fu_4440_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_23_fu_4440_p1() {
    mul_ln1118_23_fu_4440_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_23_fu_4440_p2() {
    mul_ln1118_23_fu_4440_p2 = (!mul_ln1118_23_fu_4440_p0.read().is_01() || !mul_ln1118_23_fu_4440_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_23_fu_4440_p0.read()) * sc_bigint<8>(mul_ln1118_23_fu_4440_p1.read());
}

void dense::thread_mul_ln1118_24_fu_4464_p0() {
    mul_ln1118_24_fu_4464_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_24_fu_4464_p1() {
    mul_ln1118_24_fu_4464_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_24_fu_4464_p2() {
    mul_ln1118_24_fu_4464_p2 = (!mul_ln1118_24_fu_4464_p0.read().is_01() || !mul_ln1118_24_fu_4464_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_24_fu_4464_p0.read()) * sc_bigint<8>(mul_ln1118_24_fu_4464_p1.read());
}

void dense::thread_mul_ln1118_25_fu_4488_p0() {
    mul_ln1118_25_fu_4488_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_25_fu_4488_p1() {
    mul_ln1118_25_fu_4488_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_25_fu_4488_p2() {
    mul_ln1118_25_fu_4488_p2 = (!mul_ln1118_25_fu_4488_p0.read().is_01() || !mul_ln1118_25_fu_4488_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_25_fu_4488_p0.read()) * sc_bigint<8>(mul_ln1118_25_fu_4488_p1.read());
}

void dense::thread_mul_ln1118_26_fu_4512_p0() {
    mul_ln1118_26_fu_4512_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_26_fu_4512_p1() {
    mul_ln1118_26_fu_4512_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_26_fu_4512_p2() {
    mul_ln1118_26_fu_4512_p2 = (!mul_ln1118_26_fu_4512_p0.read().is_01() || !mul_ln1118_26_fu_4512_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_26_fu_4512_p0.read()) * sc_bigint<8>(mul_ln1118_26_fu_4512_p1.read());
}

void dense::thread_mul_ln1118_27_fu_4536_p0() {
    mul_ln1118_27_fu_4536_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_27_fu_4536_p1() {
    mul_ln1118_27_fu_4536_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_27_fu_4536_p2() {
    mul_ln1118_27_fu_4536_p2 = (!mul_ln1118_27_fu_4536_p0.read().is_01() || !mul_ln1118_27_fu_4536_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_27_fu_4536_p0.read()) * sc_bigint<8>(mul_ln1118_27_fu_4536_p1.read());
}

void dense::thread_mul_ln1118_28_fu_4560_p0() {
    mul_ln1118_28_fu_4560_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_28_fu_4560_p1() {
    mul_ln1118_28_fu_4560_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_28_fu_4560_p2() {
    mul_ln1118_28_fu_4560_p2 = (!mul_ln1118_28_fu_4560_p0.read().is_01() || !mul_ln1118_28_fu_4560_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_28_fu_4560_p0.read()) * sc_bigint<8>(mul_ln1118_28_fu_4560_p1.read());
}

void dense::thread_mul_ln1118_29_fu_4584_p0() {
    mul_ln1118_29_fu_4584_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_29_fu_4584_p1() {
    mul_ln1118_29_fu_4584_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_29_fu_4584_p2() {
    mul_ln1118_29_fu_4584_p2 = (!mul_ln1118_29_fu_4584_p0.read().is_01() || !mul_ln1118_29_fu_4584_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_29_fu_4584_p0.read()) * sc_bigint<8>(mul_ln1118_29_fu_4584_p1.read());
}

void dense::thread_mul_ln1118_2_fu_3200_p0() {
    mul_ln1118_2_fu_3200_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_2_fu_3200_p1() {
    mul_ln1118_2_fu_3200_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_2_fu_3200_p2() {
    mul_ln1118_2_fu_3200_p2 = (!mul_ln1118_2_fu_3200_p0.read().is_01() || !mul_ln1118_2_fu_3200_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_2_fu_3200_p0.read()) * sc_bigint<8>(mul_ln1118_2_fu_3200_p1.read());
}

void dense::thread_mul_ln1118_30_fu_4608_p0() {
    mul_ln1118_30_fu_4608_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_30_fu_4608_p1() {
    mul_ln1118_30_fu_4608_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_30_fu_4608_p2() {
    mul_ln1118_30_fu_4608_p2 = (!mul_ln1118_30_fu_4608_p0.read().is_01() || !mul_ln1118_30_fu_4608_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_30_fu_4608_p0.read()) * sc_bigint<8>(mul_ln1118_30_fu_4608_p1.read());
}

void dense::thread_mul_ln1118_31_fu_4632_p0() {
    mul_ln1118_31_fu_4632_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_31_fu_4632_p1() {
    mul_ln1118_31_fu_4632_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_31_fu_4632_p2() {
    mul_ln1118_31_fu_4632_p2 = (!mul_ln1118_31_fu_4632_p0.read().is_01() || !mul_ln1118_31_fu_4632_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_31_fu_4632_p0.read()) * sc_bigint<8>(mul_ln1118_31_fu_4632_p1.read());
}

void dense::thread_mul_ln1118_32_fu_5444_p0() {
    mul_ln1118_32_fu_5444_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_32_fu_5444_p1() {
    mul_ln1118_32_fu_5444_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_32_fu_5444_p2() {
    mul_ln1118_32_fu_5444_p2 = (!mul_ln1118_32_fu_5444_p0.read().is_01() || !mul_ln1118_32_fu_5444_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_32_fu_5444_p0.read()) * sc_bigint<8>(mul_ln1118_32_fu_5444_p1.read());
}

void dense::thread_mul_ln1118_33_fu_5468_p0() {
    mul_ln1118_33_fu_5468_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_33_fu_5468_p1() {
    mul_ln1118_33_fu_5468_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_33_fu_5468_p2() {
    mul_ln1118_33_fu_5468_p2 = (!mul_ln1118_33_fu_5468_p0.read().is_01() || !mul_ln1118_33_fu_5468_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_33_fu_5468_p0.read()) * sc_bigint<8>(mul_ln1118_33_fu_5468_p1.read());
}

void dense::thread_mul_ln1118_34_fu_5492_p0() {
    mul_ln1118_34_fu_5492_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_34_fu_5492_p1() {
    mul_ln1118_34_fu_5492_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_34_fu_5492_p2() {
    mul_ln1118_34_fu_5492_p2 = (!mul_ln1118_34_fu_5492_p0.read().is_01() || !mul_ln1118_34_fu_5492_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_34_fu_5492_p0.read()) * sc_bigint<8>(mul_ln1118_34_fu_5492_p1.read());
}

void dense::thread_mul_ln1118_35_fu_5516_p0() {
    mul_ln1118_35_fu_5516_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_35_fu_5516_p1() {
    mul_ln1118_35_fu_5516_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_35_fu_5516_p2() {
    mul_ln1118_35_fu_5516_p2 = (!mul_ln1118_35_fu_5516_p0.read().is_01() || !mul_ln1118_35_fu_5516_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_35_fu_5516_p0.read()) * sc_bigint<8>(mul_ln1118_35_fu_5516_p1.read());
}

void dense::thread_mul_ln1118_36_fu_5540_p0() {
    mul_ln1118_36_fu_5540_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_36_fu_5540_p1() {
    mul_ln1118_36_fu_5540_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_36_fu_5540_p2() {
    mul_ln1118_36_fu_5540_p2 = (!mul_ln1118_36_fu_5540_p0.read().is_01() || !mul_ln1118_36_fu_5540_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_36_fu_5540_p0.read()) * sc_bigint<8>(mul_ln1118_36_fu_5540_p1.read());
}

void dense::thread_mul_ln1118_37_fu_5564_p0() {
    mul_ln1118_37_fu_5564_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_37_fu_5564_p1() {
    mul_ln1118_37_fu_5564_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_37_fu_5564_p2() {
    mul_ln1118_37_fu_5564_p2 = (!mul_ln1118_37_fu_5564_p0.read().is_01() || !mul_ln1118_37_fu_5564_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_37_fu_5564_p0.read()) * sc_bigint<8>(mul_ln1118_37_fu_5564_p1.read());
}

void dense::thread_mul_ln1118_38_fu_5588_p0() {
    mul_ln1118_38_fu_5588_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_38_fu_5588_p1() {
    mul_ln1118_38_fu_5588_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_38_fu_5588_p2() {
    mul_ln1118_38_fu_5588_p2 = (!mul_ln1118_38_fu_5588_p0.read().is_01() || !mul_ln1118_38_fu_5588_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_38_fu_5588_p0.read()) * sc_bigint<8>(mul_ln1118_38_fu_5588_p1.read());
}

void dense::thread_mul_ln1118_39_fu_5612_p0() {
    mul_ln1118_39_fu_5612_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_39_fu_5612_p1() {
    mul_ln1118_39_fu_5612_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_39_fu_5612_p2() {
    mul_ln1118_39_fu_5612_p2 = (!mul_ln1118_39_fu_5612_p0.read().is_01() || !mul_ln1118_39_fu_5612_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_39_fu_5612_p0.read()) * sc_bigint<8>(mul_ln1118_39_fu_5612_p1.read());
}

void dense::thread_mul_ln1118_3_fu_3224_p0() {
    mul_ln1118_3_fu_3224_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_3_fu_3224_p1() {
    mul_ln1118_3_fu_3224_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_3_fu_3224_p2() {
    mul_ln1118_3_fu_3224_p2 = (!mul_ln1118_3_fu_3224_p0.read().is_01() || !mul_ln1118_3_fu_3224_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_3_fu_3224_p0.read()) * sc_bigint<8>(mul_ln1118_3_fu_3224_p1.read());
}

void dense::thread_mul_ln1118_40_fu_5636_p0() {
    mul_ln1118_40_fu_5636_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_40_fu_5636_p1() {
    mul_ln1118_40_fu_5636_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_40_fu_5636_p2() {
    mul_ln1118_40_fu_5636_p2 = (!mul_ln1118_40_fu_5636_p0.read().is_01() || !mul_ln1118_40_fu_5636_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_40_fu_5636_p0.read()) * sc_bigint<8>(mul_ln1118_40_fu_5636_p1.read());
}

void dense::thread_mul_ln1118_41_fu_5660_p0() {
    mul_ln1118_41_fu_5660_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_41_fu_5660_p1() {
    mul_ln1118_41_fu_5660_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_41_fu_5660_p2() {
    mul_ln1118_41_fu_5660_p2 = (!mul_ln1118_41_fu_5660_p0.read().is_01() || !mul_ln1118_41_fu_5660_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_41_fu_5660_p0.read()) * sc_bigint<8>(mul_ln1118_41_fu_5660_p1.read());
}

void dense::thread_mul_ln1118_42_fu_5684_p0() {
    mul_ln1118_42_fu_5684_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_42_fu_5684_p1() {
    mul_ln1118_42_fu_5684_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_42_fu_5684_p2() {
    mul_ln1118_42_fu_5684_p2 = (!mul_ln1118_42_fu_5684_p0.read().is_01() || !mul_ln1118_42_fu_5684_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_42_fu_5684_p0.read()) * sc_bigint<8>(mul_ln1118_42_fu_5684_p1.read());
}

void dense::thread_mul_ln1118_43_fu_5708_p0() {
    mul_ln1118_43_fu_5708_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_43_fu_5708_p1() {
    mul_ln1118_43_fu_5708_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_43_fu_5708_p2() {
    mul_ln1118_43_fu_5708_p2 = (!mul_ln1118_43_fu_5708_p0.read().is_01() || !mul_ln1118_43_fu_5708_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_43_fu_5708_p0.read()) * sc_bigint<8>(mul_ln1118_43_fu_5708_p1.read());
}

void dense::thread_mul_ln1118_44_fu_5732_p0() {
    mul_ln1118_44_fu_5732_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_44_fu_5732_p1() {
    mul_ln1118_44_fu_5732_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_44_fu_5732_p2() {
    mul_ln1118_44_fu_5732_p2 = (!mul_ln1118_44_fu_5732_p0.read().is_01() || !mul_ln1118_44_fu_5732_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_44_fu_5732_p0.read()) * sc_bigint<8>(mul_ln1118_44_fu_5732_p1.read());
}

void dense::thread_mul_ln1118_45_fu_5756_p0() {
    mul_ln1118_45_fu_5756_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_45_fu_5756_p1() {
    mul_ln1118_45_fu_5756_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_45_fu_5756_p2() {
    mul_ln1118_45_fu_5756_p2 = (!mul_ln1118_45_fu_5756_p0.read().is_01() || !mul_ln1118_45_fu_5756_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_45_fu_5756_p0.read()) * sc_bigint<8>(mul_ln1118_45_fu_5756_p1.read());
}

void dense::thread_mul_ln1118_46_fu_5780_p0() {
    mul_ln1118_46_fu_5780_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_46_fu_5780_p1() {
    mul_ln1118_46_fu_5780_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_46_fu_5780_p2() {
    mul_ln1118_46_fu_5780_p2 = (!mul_ln1118_46_fu_5780_p0.read().is_01() || !mul_ln1118_46_fu_5780_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_46_fu_5780_p0.read()) * sc_bigint<8>(mul_ln1118_46_fu_5780_p1.read());
}

void dense::thread_mul_ln1118_47_fu_5804_p0() {
    mul_ln1118_47_fu_5804_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_47_fu_5804_p1() {
    mul_ln1118_47_fu_5804_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_47_fu_5804_p2() {
    mul_ln1118_47_fu_5804_p2 = (!mul_ln1118_47_fu_5804_p0.read().is_01() || !mul_ln1118_47_fu_5804_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_47_fu_5804_p0.read()) * sc_bigint<8>(mul_ln1118_47_fu_5804_p1.read());
}

void dense::thread_mul_ln1118_48_fu_6640_p0() {
    mul_ln1118_48_fu_6640_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_48_fu_6640_p1() {
    mul_ln1118_48_fu_6640_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_48_fu_6640_p2() {
    mul_ln1118_48_fu_6640_p2 = (!mul_ln1118_48_fu_6640_p0.read().is_01() || !mul_ln1118_48_fu_6640_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_48_fu_6640_p0.read()) * sc_bigint<8>(mul_ln1118_48_fu_6640_p1.read());
}

void dense::thread_mul_ln1118_49_fu_6664_p0() {
    mul_ln1118_49_fu_6664_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_49_fu_6664_p1() {
    mul_ln1118_49_fu_6664_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_49_fu_6664_p2() {
    mul_ln1118_49_fu_6664_p2 = (!mul_ln1118_49_fu_6664_p0.read().is_01() || !mul_ln1118_49_fu_6664_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_49_fu_6664_p0.read()) * sc_bigint<8>(mul_ln1118_49_fu_6664_p1.read());
}

void dense::thread_mul_ln1118_4_fu_3248_p0() {
    mul_ln1118_4_fu_3248_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_4_fu_3248_p1() {
    mul_ln1118_4_fu_3248_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_4_fu_3248_p2() {
    mul_ln1118_4_fu_3248_p2 = (!mul_ln1118_4_fu_3248_p0.read().is_01() || !mul_ln1118_4_fu_3248_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_4_fu_3248_p0.read()) * sc_bigint<8>(mul_ln1118_4_fu_3248_p1.read());
}

void dense::thread_mul_ln1118_50_fu_6688_p0() {
    mul_ln1118_50_fu_6688_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_50_fu_6688_p1() {
    mul_ln1118_50_fu_6688_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_50_fu_6688_p2() {
    mul_ln1118_50_fu_6688_p2 = (!mul_ln1118_50_fu_6688_p0.read().is_01() || !mul_ln1118_50_fu_6688_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_50_fu_6688_p0.read()) * sc_bigint<8>(mul_ln1118_50_fu_6688_p1.read());
}

void dense::thread_mul_ln1118_51_fu_6712_p0() {
    mul_ln1118_51_fu_6712_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_51_fu_6712_p1() {
    mul_ln1118_51_fu_6712_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_51_fu_6712_p2() {
    mul_ln1118_51_fu_6712_p2 = (!mul_ln1118_51_fu_6712_p0.read().is_01() || !mul_ln1118_51_fu_6712_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_51_fu_6712_p0.read()) * sc_bigint<8>(mul_ln1118_51_fu_6712_p1.read());
}

void dense::thread_mul_ln1118_52_fu_6736_p0() {
    mul_ln1118_52_fu_6736_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_52_fu_6736_p1() {
    mul_ln1118_52_fu_6736_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_52_fu_6736_p2() {
    mul_ln1118_52_fu_6736_p2 = (!mul_ln1118_52_fu_6736_p0.read().is_01() || !mul_ln1118_52_fu_6736_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_52_fu_6736_p0.read()) * sc_bigint<8>(mul_ln1118_52_fu_6736_p1.read());
}

void dense::thread_mul_ln1118_53_fu_6760_p0() {
    mul_ln1118_53_fu_6760_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_53_fu_6760_p1() {
    mul_ln1118_53_fu_6760_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_53_fu_6760_p2() {
    mul_ln1118_53_fu_6760_p2 = (!mul_ln1118_53_fu_6760_p0.read().is_01() || !mul_ln1118_53_fu_6760_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_53_fu_6760_p0.read()) * sc_bigint<8>(mul_ln1118_53_fu_6760_p1.read());
}

void dense::thread_mul_ln1118_54_fu_6784_p0() {
    mul_ln1118_54_fu_6784_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_54_fu_6784_p1() {
    mul_ln1118_54_fu_6784_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_54_fu_6784_p2() {
    mul_ln1118_54_fu_6784_p2 = (!mul_ln1118_54_fu_6784_p0.read().is_01() || !mul_ln1118_54_fu_6784_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_54_fu_6784_p0.read()) * sc_bigint<8>(mul_ln1118_54_fu_6784_p1.read());
}

void dense::thread_mul_ln1118_55_fu_6808_p0() {
    mul_ln1118_55_fu_6808_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_55_fu_6808_p1() {
    mul_ln1118_55_fu_6808_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_55_fu_6808_p2() {
    mul_ln1118_55_fu_6808_p2 = (!mul_ln1118_55_fu_6808_p0.read().is_01() || !mul_ln1118_55_fu_6808_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_55_fu_6808_p0.read()) * sc_bigint<8>(mul_ln1118_55_fu_6808_p1.read());
}

void dense::thread_mul_ln1118_56_fu_6832_p0() {
    mul_ln1118_56_fu_6832_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_56_fu_6832_p1() {
    mul_ln1118_56_fu_6832_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_56_fu_6832_p2() {
    mul_ln1118_56_fu_6832_p2 = (!mul_ln1118_56_fu_6832_p0.read().is_01() || !mul_ln1118_56_fu_6832_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_56_fu_6832_p0.read()) * sc_bigint<8>(mul_ln1118_56_fu_6832_p1.read());
}

void dense::thread_mul_ln1118_57_fu_6856_p0() {
    mul_ln1118_57_fu_6856_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_57_fu_6856_p1() {
    mul_ln1118_57_fu_6856_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_57_fu_6856_p2() {
    mul_ln1118_57_fu_6856_p2 = (!mul_ln1118_57_fu_6856_p0.read().is_01() || !mul_ln1118_57_fu_6856_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_57_fu_6856_p0.read()) * sc_bigint<8>(mul_ln1118_57_fu_6856_p1.read());
}

void dense::thread_mul_ln1118_58_fu_6880_p0() {
    mul_ln1118_58_fu_6880_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_58_fu_6880_p1() {
    mul_ln1118_58_fu_6880_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_58_fu_6880_p2() {
    mul_ln1118_58_fu_6880_p2 = (!mul_ln1118_58_fu_6880_p0.read().is_01() || !mul_ln1118_58_fu_6880_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_58_fu_6880_p0.read()) * sc_bigint<8>(mul_ln1118_58_fu_6880_p1.read());
}

void dense::thread_mul_ln1118_59_fu_6904_p0() {
    mul_ln1118_59_fu_6904_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_59_fu_6904_p1() {
    mul_ln1118_59_fu_6904_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_59_fu_6904_p2() {
    mul_ln1118_59_fu_6904_p2 = (!mul_ln1118_59_fu_6904_p0.read().is_01() || !mul_ln1118_59_fu_6904_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_59_fu_6904_p0.read()) * sc_bigint<8>(mul_ln1118_59_fu_6904_p1.read());
}

void dense::thread_mul_ln1118_5_fu_3272_p0() {
    mul_ln1118_5_fu_3272_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_5_fu_3272_p1() {
    mul_ln1118_5_fu_3272_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_5_fu_3272_p2() {
    mul_ln1118_5_fu_3272_p2 = (!mul_ln1118_5_fu_3272_p0.read().is_01() || !mul_ln1118_5_fu_3272_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_5_fu_3272_p0.read()) * sc_bigint<8>(mul_ln1118_5_fu_3272_p1.read());
}

void dense::thread_mul_ln1118_60_fu_6928_p0() {
    mul_ln1118_60_fu_6928_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_60_fu_6928_p1() {
    mul_ln1118_60_fu_6928_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_60_fu_6928_p2() {
    mul_ln1118_60_fu_6928_p2 = (!mul_ln1118_60_fu_6928_p0.read().is_01() || !mul_ln1118_60_fu_6928_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_60_fu_6928_p0.read()) * sc_bigint<8>(mul_ln1118_60_fu_6928_p1.read());
}

void dense::thread_mul_ln1118_61_fu_6952_p0() {
    mul_ln1118_61_fu_6952_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_61_fu_6952_p1() {
    mul_ln1118_61_fu_6952_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_61_fu_6952_p2() {
    mul_ln1118_61_fu_6952_p2 = (!mul_ln1118_61_fu_6952_p0.read().is_01() || !mul_ln1118_61_fu_6952_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_61_fu_6952_p0.read()) * sc_bigint<8>(mul_ln1118_61_fu_6952_p1.read());
}

void dense::thread_mul_ln1118_62_fu_6976_p0() {
    mul_ln1118_62_fu_6976_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_62_fu_6976_p1() {
    mul_ln1118_62_fu_6976_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_62_fu_6976_p2() {
    mul_ln1118_62_fu_6976_p2 = (!mul_ln1118_62_fu_6976_p0.read().is_01() || !mul_ln1118_62_fu_6976_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_62_fu_6976_p0.read()) * sc_bigint<8>(mul_ln1118_62_fu_6976_p1.read());
}

void dense::thread_mul_ln1118_63_fu_7000_p0() {
    mul_ln1118_63_fu_7000_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_63_fu_7000_p1() {
    mul_ln1118_63_fu_7000_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_63_fu_7000_p2() {
    mul_ln1118_63_fu_7000_p2 = (!mul_ln1118_63_fu_7000_p0.read().is_01() || !mul_ln1118_63_fu_7000_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_63_fu_7000_p0.read()) * sc_bigint<8>(mul_ln1118_63_fu_7000_p1.read());
}

void dense::thread_mul_ln1118_64_fu_7824_p0() {
    mul_ln1118_64_fu_7824_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_64_fu_7824_p1() {
    mul_ln1118_64_fu_7824_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_64_fu_7824_p2() {
    mul_ln1118_64_fu_7824_p2 = (!mul_ln1118_64_fu_7824_p0.read().is_01() || !mul_ln1118_64_fu_7824_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_64_fu_7824_p0.read()) * sc_bigint<8>(mul_ln1118_64_fu_7824_p1.read());
}

void dense::thread_mul_ln1118_65_fu_7848_p0() {
    mul_ln1118_65_fu_7848_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_65_fu_7848_p1() {
    mul_ln1118_65_fu_7848_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_65_fu_7848_p2() {
    mul_ln1118_65_fu_7848_p2 = (!mul_ln1118_65_fu_7848_p0.read().is_01() || !mul_ln1118_65_fu_7848_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_65_fu_7848_p0.read()) * sc_bigint<8>(mul_ln1118_65_fu_7848_p1.read());
}

void dense::thread_mul_ln1118_66_fu_7872_p0() {
    mul_ln1118_66_fu_7872_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_66_fu_7872_p1() {
    mul_ln1118_66_fu_7872_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_66_fu_7872_p2() {
    mul_ln1118_66_fu_7872_p2 = (!mul_ln1118_66_fu_7872_p0.read().is_01() || !mul_ln1118_66_fu_7872_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_66_fu_7872_p0.read()) * sc_bigint<8>(mul_ln1118_66_fu_7872_p1.read());
}

void dense::thread_mul_ln1118_67_fu_7896_p0() {
    mul_ln1118_67_fu_7896_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_67_fu_7896_p1() {
    mul_ln1118_67_fu_7896_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_67_fu_7896_p2() {
    mul_ln1118_67_fu_7896_p2 = (!mul_ln1118_67_fu_7896_p0.read().is_01() || !mul_ln1118_67_fu_7896_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_67_fu_7896_p0.read()) * sc_bigint<8>(mul_ln1118_67_fu_7896_p1.read());
}

void dense::thread_mul_ln1118_68_fu_7920_p0() {
    mul_ln1118_68_fu_7920_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_68_fu_7920_p1() {
    mul_ln1118_68_fu_7920_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_68_fu_7920_p2() {
    mul_ln1118_68_fu_7920_p2 = (!mul_ln1118_68_fu_7920_p0.read().is_01() || !mul_ln1118_68_fu_7920_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_68_fu_7920_p0.read()) * sc_bigint<8>(mul_ln1118_68_fu_7920_p1.read());
}

void dense::thread_mul_ln1118_69_fu_7944_p0() {
    mul_ln1118_69_fu_7944_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_69_fu_7944_p1() {
    mul_ln1118_69_fu_7944_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_69_fu_7944_p2() {
    mul_ln1118_69_fu_7944_p2 = (!mul_ln1118_69_fu_7944_p0.read().is_01() || !mul_ln1118_69_fu_7944_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_69_fu_7944_p0.read()) * sc_bigint<8>(mul_ln1118_69_fu_7944_p1.read());
}

void dense::thread_mul_ln1118_6_fu_3296_p0() {
    mul_ln1118_6_fu_3296_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_6_fu_3296_p1() {
    mul_ln1118_6_fu_3296_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_6_fu_3296_p2() {
    mul_ln1118_6_fu_3296_p2 = (!mul_ln1118_6_fu_3296_p0.read().is_01() || !mul_ln1118_6_fu_3296_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_6_fu_3296_p0.read()) * sc_bigint<8>(mul_ln1118_6_fu_3296_p1.read());
}

void dense::thread_mul_ln1118_70_fu_7968_p0() {
    mul_ln1118_70_fu_7968_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_70_fu_7968_p1() {
    mul_ln1118_70_fu_7968_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_70_fu_7968_p2() {
    mul_ln1118_70_fu_7968_p2 = (!mul_ln1118_70_fu_7968_p0.read().is_01() || !mul_ln1118_70_fu_7968_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_70_fu_7968_p0.read()) * sc_bigint<8>(mul_ln1118_70_fu_7968_p1.read());
}

void dense::thread_mul_ln1118_71_fu_7992_p0() {
    mul_ln1118_71_fu_7992_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_71_fu_7992_p1() {
    mul_ln1118_71_fu_7992_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_71_fu_7992_p2() {
    mul_ln1118_71_fu_7992_p2 = (!mul_ln1118_71_fu_7992_p0.read().is_01() || !mul_ln1118_71_fu_7992_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_71_fu_7992_p0.read()) * sc_bigint<8>(mul_ln1118_71_fu_7992_p1.read());
}

void dense::thread_mul_ln1118_72_fu_8016_p0() {
    mul_ln1118_72_fu_8016_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_72_fu_8016_p1() {
    mul_ln1118_72_fu_8016_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_72_fu_8016_p2() {
    mul_ln1118_72_fu_8016_p2 = (!mul_ln1118_72_fu_8016_p0.read().is_01() || !mul_ln1118_72_fu_8016_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_72_fu_8016_p0.read()) * sc_bigint<8>(mul_ln1118_72_fu_8016_p1.read());
}

void dense::thread_mul_ln1118_73_fu_8040_p0() {
    mul_ln1118_73_fu_8040_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_73_fu_8040_p1() {
    mul_ln1118_73_fu_8040_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_73_fu_8040_p2() {
    mul_ln1118_73_fu_8040_p2 = (!mul_ln1118_73_fu_8040_p0.read().is_01() || !mul_ln1118_73_fu_8040_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_73_fu_8040_p0.read()) * sc_bigint<8>(mul_ln1118_73_fu_8040_p1.read());
}

void dense::thread_mul_ln1118_74_fu_8064_p0() {
    mul_ln1118_74_fu_8064_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_74_fu_8064_p1() {
    mul_ln1118_74_fu_8064_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_74_fu_8064_p2() {
    mul_ln1118_74_fu_8064_p2 = (!mul_ln1118_74_fu_8064_p0.read().is_01() || !mul_ln1118_74_fu_8064_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_74_fu_8064_p0.read()) * sc_bigint<8>(mul_ln1118_74_fu_8064_p1.read());
}

void dense::thread_mul_ln1118_75_fu_8088_p0() {
    mul_ln1118_75_fu_8088_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_75_fu_8088_p1() {
    mul_ln1118_75_fu_8088_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_75_fu_8088_p2() {
    mul_ln1118_75_fu_8088_p2 = (!mul_ln1118_75_fu_8088_p0.read().is_01() || !mul_ln1118_75_fu_8088_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_75_fu_8088_p0.read()) * sc_bigint<8>(mul_ln1118_75_fu_8088_p1.read());
}

void dense::thread_mul_ln1118_76_fu_8112_p0() {
    mul_ln1118_76_fu_8112_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_76_fu_8112_p1() {
    mul_ln1118_76_fu_8112_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_76_fu_8112_p2() {
    mul_ln1118_76_fu_8112_p2 = (!mul_ln1118_76_fu_8112_p0.read().is_01() || !mul_ln1118_76_fu_8112_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_76_fu_8112_p0.read()) * sc_bigint<8>(mul_ln1118_76_fu_8112_p1.read());
}

void dense::thread_mul_ln1118_77_fu_8136_p0() {
    mul_ln1118_77_fu_8136_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_77_fu_8136_p1() {
    mul_ln1118_77_fu_8136_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_77_fu_8136_p2() {
    mul_ln1118_77_fu_8136_p2 = (!mul_ln1118_77_fu_8136_p0.read().is_01() || !mul_ln1118_77_fu_8136_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_77_fu_8136_p0.read()) * sc_bigint<8>(mul_ln1118_77_fu_8136_p1.read());
}

void dense::thread_mul_ln1118_78_fu_8160_p0() {
    mul_ln1118_78_fu_8160_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_78_fu_8160_p1() {
    mul_ln1118_78_fu_8160_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_78_fu_8160_p2() {
    mul_ln1118_78_fu_8160_p2 = (!mul_ln1118_78_fu_8160_p0.read().is_01() || !mul_ln1118_78_fu_8160_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_78_fu_8160_p0.read()) * sc_bigint<8>(mul_ln1118_78_fu_8160_p1.read());
}

void dense::thread_mul_ln1118_79_fu_8184_p0() {
    mul_ln1118_79_fu_8184_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_79_fu_8184_p1() {
    mul_ln1118_79_fu_8184_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_79_fu_8184_p2() {
    mul_ln1118_79_fu_8184_p2 = (!mul_ln1118_79_fu_8184_p0.read().is_01() || !mul_ln1118_79_fu_8184_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_79_fu_8184_p0.read()) * sc_bigint<8>(mul_ln1118_79_fu_8184_p1.read());
}

void dense::thread_mul_ln1118_7_fu_3320_p0() {
    mul_ln1118_7_fu_3320_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_7_fu_3320_p1() {
    mul_ln1118_7_fu_3320_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_7_fu_3320_p2() {
    mul_ln1118_7_fu_3320_p2 = (!mul_ln1118_7_fu_3320_p0.read().is_01() || !mul_ln1118_7_fu_3320_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_7_fu_3320_p0.read()) * sc_bigint<8>(mul_ln1118_7_fu_3320_p1.read());
}

void dense::thread_mul_ln1118_80_fu_9019_p0() {
    mul_ln1118_80_fu_9019_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_80_fu_9019_p1() {
    mul_ln1118_80_fu_9019_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_80_fu_9019_p2() {
    mul_ln1118_80_fu_9019_p2 = (!mul_ln1118_80_fu_9019_p0.read().is_01() || !mul_ln1118_80_fu_9019_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_80_fu_9019_p0.read()) * sc_bigint<8>(mul_ln1118_80_fu_9019_p1.read());
}

void dense::thread_mul_ln1118_81_fu_9043_p0() {
    mul_ln1118_81_fu_9043_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_81_fu_9043_p1() {
    mul_ln1118_81_fu_9043_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_81_fu_9043_p2() {
    mul_ln1118_81_fu_9043_p2 = (!mul_ln1118_81_fu_9043_p0.read().is_01() || !mul_ln1118_81_fu_9043_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_81_fu_9043_p0.read()) * sc_bigint<8>(mul_ln1118_81_fu_9043_p1.read());
}

void dense::thread_mul_ln1118_82_fu_9067_p0() {
    mul_ln1118_82_fu_9067_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_82_fu_9067_p1() {
    mul_ln1118_82_fu_9067_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_82_fu_9067_p2() {
    mul_ln1118_82_fu_9067_p2 = (!mul_ln1118_82_fu_9067_p0.read().is_01() || !mul_ln1118_82_fu_9067_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_82_fu_9067_p0.read()) * sc_bigint<8>(mul_ln1118_82_fu_9067_p1.read());
}

void dense::thread_mul_ln1118_83_fu_9091_p0() {
    mul_ln1118_83_fu_9091_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_83_fu_9091_p1() {
    mul_ln1118_83_fu_9091_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_83_fu_9091_p2() {
    mul_ln1118_83_fu_9091_p2 = (!mul_ln1118_83_fu_9091_p0.read().is_01() || !mul_ln1118_83_fu_9091_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_83_fu_9091_p0.read()) * sc_bigint<8>(mul_ln1118_83_fu_9091_p1.read());
}

void dense::thread_mul_ln1118_84_fu_9115_p0() {
    mul_ln1118_84_fu_9115_p0 = tempWeight_4_V_q1.read();
}

void dense::thread_mul_ln1118_84_fu_9115_p1() {
    mul_ln1118_84_fu_9115_p1 = temp_4_V_q1.read();
}

void dense::thread_mul_ln1118_84_fu_9115_p2() {
    mul_ln1118_84_fu_9115_p2 = (!mul_ln1118_84_fu_9115_p0.read().is_01() || !mul_ln1118_84_fu_9115_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_84_fu_9115_p0.read()) * sc_bigint<8>(mul_ln1118_84_fu_9115_p1.read());
}

void dense::thread_mul_ln1118_85_fu_9139_p0() {
    mul_ln1118_85_fu_9139_p0 = tempWeight_5_V_q1.read();
}

void dense::thread_mul_ln1118_85_fu_9139_p1() {
    mul_ln1118_85_fu_9139_p1 = temp_5_V_q1.read();
}

void dense::thread_mul_ln1118_85_fu_9139_p2() {
    mul_ln1118_85_fu_9139_p2 = (!mul_ln1118_85_fu_9139_p0.read().is_01() || !mul_ln1118_85_fu_9139_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_85_fu_9139_p0.read()) * sc_bigint<8>(mul_ln1118_85_fu_9139_p1.read());
}

void dense::thread_mul_ln1118_86_fu_9163_p0() {
    mul_ln1118_86_fu_9163_p0 = tempWeight_6_V_q1.read();
}

void dense::thread_mul_ln1118_86_fu_9163_p1() {
    mul_ln1118_86_fu_9163_p1 = temp_6_V_q1.read();
}

void dense::thread_mul_ln1118_86_fu_9163_p2() {
    mul_ln1118_86_fu_9163_p2 = (!mul_ln1118_86_fu_9163_p0.read().is_01() || !mul_ln1118_86_fu_9163_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_86_fu_9163_p0.read()) * sc_bigint<8>(mul_ln1118_86_fu_9163_p1.read());
}

void dense::thread_mul_ln1118_87_fu_9187_p0() {
    mul_ln1118_87_fu_9187_p0 = tempWeight_7_V_q1.read();
}

void dense::thread_mul_ln1118_87_fu_9187_p1() {
    mul_ln1118_87_fu_9187_p1 = temp_7_V_q1.read();
}

void dense::thread_mul_ln1118_87_fu_9187_p2() {
    mul_ln1118_87_fu_9187_p2 = (!mul_ln1118_87_fu_9187_p0.read().is_01() || !mul_ln1118_87_fu_9187_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_87_fu_9187_p0.read()) * sc_bigint<8>(mul_ln1118_87_fu_9187_p1.read());
}

void dense::thread_mul_ln1118_88_fu_9211_p0() {
    mul_ln1118_88_fu_9211_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_88_fu_9211_p1() {
    mul_ln1118_88_fu_9211_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_88_fu_9211_p2() {
    mul_ln1118_88_fu_9211_p2 = (!mul_ln1118_88_fu_9211_p0.read().is_01() || !mul_ln1118_88_fu_9211_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_88_fu_9211_p0.read()) * sc_bigint<8>(mul_ln1118_88_fu_9211_p1.read());
}

void dense::thread_mul_ln1118_89_fu_9235_p0() {
    mul_ln1118_89_fu_9235_p0 = tempWeight_1_V_q0.read();
}

void dense::thread_mul_ln1118_89_fu_9235_p1() {
    mul_ln1118_89_fu_9235_p1 = temp_1_V_q0.read();
}

void dense::thread_mul_ln1118_89_fu_9235_p2() {
    mul_ln1118_89_fu_9235_p2 = (!mul_ln1118_89_fu_9235_p0.read().is_01() || !mul_ln1118_89_fu_9235_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_89_fu_9235_p0.read()) * sc_bigint<8>(mul_ln1118_89_fu_9235_p1.read());
}

void dense::thread_mul_ln1118_8_fu_3344_p0() {
    mul_ln1118_8_fu_3344_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_8_fu_3344_p1() {
    mul_ln1118_8_fu_3344_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_8_fu_3344_p2() {
    mul_ln1118_8_fu_3344_p2 = (!mul_ln1118_8_fu_3344_p0.read().is_01() || !mul_ln1118_8_fu_3344_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_8_fu_3344_p0.read()) * sc_bigint<8>(mul_ln1118_8_fu_3344_p1.read());
}

void dense::thread_mul_ln1118_90_fu_9259_p0() {
    mul_ln1118_90_fu_9259_p0 = tempWeight_2_V_q0.read();
}

void dense::thread_mul_ln1118_90_fu_9259_p1() {
    mul_ln1118_90_fu_9259_p1 = temp_2_V_q0.read();
}

void dense::thread_mul_ln1118_90_fu_9259_p2() {
    mul_ln1118_90_fu_9259_p2 = (!mul_ln1118_90_fu_9259_p0.read().is_01() || !mul_ln1118_90_fu_9259_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_90_fu_9259_p0.read()) * sc_bigint<8>(mul_ln1118_90_fu_9259_p1.read());
}

void dense::thread_mul_ln1118_91_fu_9283_p0() {
    mul_ln1118_91_fu_9283_p0 = tempWeight_3_V_q0.read();
}

void dense::thread_mul_ln1118_91_fu_9283_p1() {
    mul_ln1118_91_fu_9283_p1 = temp_3_V_q0.read();
}

void dense::thread_mul_ln1118_91_fu_9283_p2() {
    mul_ln1118_91_fu_9283_p2 = (!mul_ln1118_91_fu_9283_p0.read().is_01() || !mul_ln1118_91_fu_9283_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_91_fu_9283_p0.read()) * sc_bigint<8>(mul_ln1118_91_fu_9283_p1.read());
}

void dense::thread_mul_ln1118_92_fu_9307_p0() {
    mul_ln1118_92_fu_9307_p0 = tempWeight_4_V_q0.read();
}

void dense::thread_mul_ln1118_92_fu_9307_p1() {
    mul_ln1118_92_fu_9307_p1 = temp_4_V_q0.read();
}

void dense::thread_mul_ln1118_92_fu_9307_p2() {
    mul_ln1118_92_fu_9307_p2 = (!mul_ln1118_92_fu_9307_p0.read().is_01() || !mul_ln1118_92_fu_9307_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_92_fu_9307_p0.read()) * sc_bigint<8>(mul_ln1118_92_fu_9307_p1.read());
}

void dense::thread_mul_ln1118_93_fu_9331_p0() {
    mul_ln1118_93_fu_9331_p0 = tempWeight_5_V_q0.read();
}

void dense::thread_mul_ln1118_93_fu_9331_p1() {
    mul_ln1118_93_fu_9331_p1 = temp_5_V_q0.read();
}

void dense::thread_mul_ln1118_93_fu_9331_p2() {
    mul_ln1118_93_fu_9331_p2 = (!mul_ln1118_93_fu_9331_p0.read().is_01() || !mul_ln1118_93_fu_9331_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_93_fu_9331_p0.read()) * sc_bigint<8>(mul_ln1118_93_fu_9331_p1.read());
}

void dense::thread_mul_ln1118_94_fu_9355_p0() {
    mul_ln1118_94_fu_9355_p0 = tempWeight_6_V_q0.read();
}

void dense::thread_mul_ln1118_94_fu_9355_p1() {
    mul_ln1118_94_fu_9355_p1 = temp_6_V_q0.read();
}

void dense::thread_mul_ln1118_94_fu_9355_p2() {
    mul_ln1118_94_fu_9355_p2 = (!mul_ln1118_94_fu_9355_p0.read().is_01() || !mul_ln1118_94_fu_9355_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_94_fu_9355_p0.read()) * sc_bigint<8>(mul_ln1118_94_fu_9355_p1.read());
}

void dense::thread_mul_ln1118_95_fu_9379_p0() {
    mul_ln1118_95_fu_9379_p0 = tempWeight_7_V_q0.read();
}

void dense::thread_mul_ln1118_95_fu_9379_p1() {
    mul_ln1118_95_fu_9379_p1 = temp_7_V_q0.read();
}

void dense::thread_mul_ln1118_95_fu_9379_p2() {
    mul_ln1118_95_fu_9379_p2 = (!mul_ln1118_95_fu_9379_p0.read().is_01() || !mul_ln1118_95_fu_9379_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_95_fu_9379_p0.read()) * sc_bigint<8>(mul_ln1118_95_fu_9379_p1.read());
}

void dense::thread_mul_ln1118_96_fu_10219_p0() {
    mul_ln1118_96_fu_10219_p0 = tempWeight_0_V_q1.read();
}

void dense::thread_mul_ln1118_96_fu_10219_p1() {
    mul_ln1118_96_fu_10219_p1 = temp_0_V_q1.read();
}

void dense::thread_mul_ln1118_96_fu_10219_p2() {
    mul_ln1118_96_fu_10219_p2 = (!mul_ln1118_96_fu_10219_p0.read().is_01() || !mul_ln1118_96_fu_10219_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_96_fu_10219_p0.read()) * sc_bigint<8>(mul_ln1118_96_fu_10219_p1.read());
}

void dense::thread_mul_ln1118_97_fu_10243_p0() {
    mul_ln1118_97_fu_10243_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_97_fu_10243_p1() {
    mul_ln1118_97_fu_10243_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_97_fu_10243_p2() {
    mul_ln1118_97_fu_10243_p2 = (!mul_ln1118_97_fu_10243_p0.read().is_01() || !mul_ln1118_97_fu_10243_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_97_fu_10243_p0.read()) * sc_bigint<8>(mul_ln1118_97_fu_10243_p1.read());
}

void dense::thread_mul_ln1118_98_fu_10267_p0() {
    mul_ln1118_98_fu_10267_p0 = tempWeight_2_V_q1.read();
}

void dense::thread_mul_ln1118_98_fu_10267_p1() {
    mul_ln1118_98_fu_10267_p1 = temp_2_V_q1.read();
}

void dense::thread_mul_ln1118_98_fu_10267_p2() {
    mul_ln1118_98_fu_10267_p2 = (!mul_ln1118_98_fu_10267_p0.read().is_01() || !mul_ln1118_98_fu_10267_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_98_fu_10267_p0.read()) * sc_bigint<8>(mul_ln1118_98_fu_10267_p1.read());
}

void dense::thread_mul_ln1118_99_fu_10291_p0() {
    mul_ln1118_99_fu_10291_p0 = tempWeight_3_V_q1.read();
}

void dense::thread_mul_ln1118_99_fu_10291_p1() {
    mul_ln1118_99_fu_10291_p1 = temp_3_V_q1.read();
}

void dense::thread_mul_ln1118_99_fu_10291_p2() {
    mul_ln1118_99_fu_10291_p2 = (!mul_ln1118_99_fu_10291_p0.read().is_01() || !mul_ln1118_99_fu_10291_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_99_fu_10291_p0.read()) * sc_bigint<8>(mul_ln1118_99_fu_10291_p1.read());
}

void dense::thread_mul_ln1118_9_fu_3368_p0() {
    mul_ln1118_9_fu_3368_p0 = tempWeight_1_V_q1.read();
}

void dense::thread_mul_ln1118_9_fu_3368_p1() {
    mul_ln1118_9_fu_3368_p1 = temp_1_V_q1.read();
}

void dense::thread_mul_ln1118_9_fu_3368_p2() {
    mul_ln1118_9_fu_3368_p2 = (!mul_ln1118_9_fu_3368_p0.read().is_01() || !mul_ln1118_9_fu_3368_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_9_fu_3368_p0.read()) * sc_bigint<8>(mul_ln1118_9_fu_3368_p1.read());
}

void dense::thread_mul_ln1118_fu_3152_p0() {
    mul_ln1118_fu_3152_p0 = tempWeight_0_V_q0.read();
}

void dense::thread_mul_ln1118_fu_3152_p1() {
    mul_ln1118_fu_3152_p1 = temp_0_V_q0.read();
}

void dense::thread_mul_ln1118_fu_3152_p2() {
    mul_ln1118_fu_3152_p2 = (!mul_ln1118_fu_3152_p0.read().is_01() || !mul_ln1118_fu_3152_p1.read().is_01())? sc_lv<11>(): sc_bigint<8>(mul_ln1118_fu_3152_p0.read()) * sc_bigint<8>(mul_ln1118_fu_3152_p1.read());
}

void dense::thread_or_ln33_10_fu_2894_p2() {
    or_ln33_10_fu_2894_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_B);
}

void dense::thread_or_ln33_11_fu_2940_p2() {
    or_ln33_11_fu_2940_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_C);
}

void dense::thread_or_ln33_12_fu_2986_p2() {
    or_ln33_12_fu_2986_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_D);
}

void dense::thread_or_ln33_13_fu_3032_p2() {
    or_ln33_13_fu_3032_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_E);
}

void dense::thread_or_ln33_14_fu_3078_p2() {
    or_ln33_14_fu_3078_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_F);
}

void dense::thread_or_ln33_1_fu_2570_p2() {
    or_ln33_1_fu_2570_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_2);
}

void dense::thread_or_ln33_2_fu_2601_p2() {
    or_ln33_2_fu_2601_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_3);
}

void dense::thread_or_ln33_3_fu_2632_p2() {
    or_ln33_3_fu_2632_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_4);
}

void dense::thread_or_ln33_4_fu_2663_p2() {
    or_ln33_4_fu_2663_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_5);
}

void dense::thread_or_ln33_5_fu_2694_p2() {
    or_ln33_5_fu_2694_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_6);
}

void dense::thread_or_ln33_6_fu_2725_p2() {
    or_ln33_6_fu_2725_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_7);
}

void dense::thread_or_ln33_7_fu_2756_p2() {
    or_ln33_7_fu_2756_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_8);
}

void dense::thread_or_ln33_8_fu_2802_p2() {
    or_ln33_8_fu_2802_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_9);
}

void dense::thread_or_ln33_9_fu_2848_p2() {
    or_ln33_9_fu_2848_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_A);
}

void dense::thread_or_ln33_fu_2539_p2() {
    or_ln33_fu_2539_p2 = (i3_0_0_reg_2332.read() | ap_const_lv10_1);
}

void dense::thread_sext_ln203_fu_3134_p1() {
    sext_ln203_fu_3134_p1 = esl_sext<64,33>(add_ln203_fu_3130_p2.read());
}

void dense::thread_sext_ln31_fu_2476_p1() {
    sext_ln31_fu_2476_p1 = esl_sext<64,33>(add_ln31_fu_2471_p2.read());
}

void dense::thread_sext_ln7_1_fu_2344_p1() {
    sext_ln7_1_fu_2344_p1 = esl_sext<64,32>(input_V_offset.read());
}

void dense::thread_sext_ln7_fu_2369_p1() {
    sext_ln7_fu_2369_p1 = esl_sext<33,32>(outputDense_V_offset.read());
}

void dense::thread_sext_ln8_1_fu_2359_p1() {
    sext_ln8_1_fu_2359_p1 = esl_sext<64,32>(fcWeight_V_offset.read());
}

void dense::thread_sext_ln8_fu_2355_p1() {
    sext_ln8_fu_2355_p1 = esl_sext<33,32>(fcBias_V_offset.read());
}

void dense::thread_tempWeight_0_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_104_fu_9804_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_88_fu_8609_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_72_fu_7425_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_56_fu_6229_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_40_fu_5057_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_24_fu_3937_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_0_V_address0 =  (sc_lv<10>) (zext_ln1117_fu_2534_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        tempWeight_0_V_address0 = tempWeight_0_V_addr_reg_10884.read();
    } else {
        tempWeight_0_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_0_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_96_fu_9436_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_80_fu_8241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_64_fu_7057_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_48_fu_5861_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_32_fu_4689_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_16_fu_3569_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_0_V_address1 =  (sc_lv<10>) (zext_ln1117_8_fu_2797_p1.read());
    } else {
        tempWeight_0_V_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_0_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        tempWeight_0_V_ce0 = ap_const_logic_1;
    } else {
        tempWeight_0_V_ce0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_0_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        tempWeight_0_V_ce1 = ap_const_logic_1;
    } else {
        tempWeight_0_V_ce1 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()) && 
         esl_seteq<1,3,3>(trunc_ln203_1_reg_10880.read(), ap_const_lv3_0))) {
        tempWeight_0_V_we0 = ap_const_logic_1;
    } else {
        tempWeight_0_V_we0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_1_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_105_fu_9850_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_89_fu_8655_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_73_fu_7471_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_57_fu_6275_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_41_fu_5103_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_25_fu_3983_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_1_V_address0 =  (sc_lv<10>) (zext_ln1117_1_fu_2565_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        tempWeight_1_V_address0 = tempWeight_1_V_addr_reg_10889.read();
    } else {
        tempWeight_1_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_1_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_97_fu_9482_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_81_fu_8287_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_65_fu_7103_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_49_fu_5907_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_33_fu_4735_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_17_fu_3615_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_1_V_address1 =  (sc_lv<10>) (zext_ln1117_9_fu_2843_p1.read());
    } else {
        tempWeight_1_V_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_1_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        tempWeight_1_V_ce0 = ap_const_logic_1;
    } else {
        tempWeight_1_V_ce0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_1_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        tempWeight_1_V_ce1 = ap_const_logic_1;
    } else {
        tempWeight_1_V_ce1 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()) && 
         esl_seteq<1,3,3>(trunc_ln203_1_reg_10880.read(), ap_const_lv3_1))) {
        tempWeight_1_V_we0 = ap_const_logic_1;
    } else {
        tempWeight_1_V_we0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_2_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_106_fu_9896_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_90_fu_8701_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_74_fu_7517_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_58_fu_6321_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_42_fu_5149_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_26_fu_4029_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_2_V_address0 =  (sc_lv<10>) (zext_ln1117_2_fu_2596_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        tempWeight_2_V_address0 = tempWeight_2_V_addr_reg_10894.read();
    } else {
        tempWeight_2_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_2_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_98_fu_9528_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_82_fu_8333_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_66_fu_7149_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_50_fu_5953_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_34_fu_4781_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_18_fu_3661_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_2_V_address1 =  (sc_lv<10>) (zext_ln1117_10_fu_2889_p1.read());
    } else {
        tempWeight_2_V_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_2_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        tempWeight_2_V_ce0 = ap_const_logic_1;
    } else {
        tempWeight_2_V_ce0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_2_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        tempWeight_2_V_ce1 = ap_const_logic_1;
    } else {
        tempWeight_2_V_ce1 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_2_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()) && 
         esl_seteq<1,3,3>(trunc_ln203_1_reg_10880.read(), ap_const_lv3_2))) {
        tempWeight_2_V_we0 = ap_const_logic_1;
    } else {
        tempWeight_2_V_we0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_3_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_107_fu_9942_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_91_fu_8747_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_75_fu_7563_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_59_fu_6367_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_43_fu_5195_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_27_fu_4075_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_3_V_address0 =  (sc_lv<10>) (zext_ln1117_3_fu_2627_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        tempWeight_3_V_address0 = tempWeight_3_V_addr_reg_10899.read();
    } else {
        tempWeight_3_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_3_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_99_fu_9574_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_83_fu_8379_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_67_fu_7195_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_51_fu_5999_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_35_fu_4827_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_19_fu_3707_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_3_V_address1 =  (sc_lv<10>) (zext_ln1117_11_fu_2935_p1.read());
    } else {
        tempWeight_3_V_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_3_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        tempWeight_3_V_ce0 = ap_const_logic_1;
    } else {
        tempWeight_3_V_ce0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_3_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        tempWeight_3_V_ce1 = ap_const_logic_1;
    } else {
        tempWeight_3_V_ce1 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_3_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()) && 
         esl_seteq<1,3,3>(trunc_ln203_1_reg_10880.read(), ap_const_lv3_3))) {
        tempWeight_3_V_we0 = ap_const_logic_1;
    } else {
        tempWeight_3_V_we0 = ap_const_logic_0;
    }
}

void dense::thread_tempWeight_4_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_108_fu_9988_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_92_fu_8793_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_76_fu_7609_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_60_fu_6413_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_44_fu_5241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_28_fu_4121_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_4_V_address0 =  (sc_lv<10>) (zext_ln1117_4_fu_2658_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        tempWeight_4_V_address0 = tempWeight_4_V_addr_reg_10904.read();
    } else {
        tempWeight_4_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void dense::thread_tempWeight_4_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_100_fu_9620_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_84_fu_8425_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_68_fu_7241_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_52_fu_6045_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_36_fu_4873_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_20_fu_3753_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read())) {
        tempWeight_4_V_address1 =  (sc_lv<10>) (zext_ln1117_12_fu_2981_p1.read());
    } else {
        tempWeight_4_V_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

}


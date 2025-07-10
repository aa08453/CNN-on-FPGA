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
         !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2599_p2.read()))) {
        c_0_reg_2310 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state49.read()) && 
                esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
        c_0_reg_2310 = c_reg_17615.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        i2_0_reg_2299 = ap_const_lv13_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state19.read())) {
        i2_0_reg_2299 = i_1_reg_17546.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read())) {
        i3_0_0_reg_2344 = add_ln33_96_reg_17779.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state29.read())) {
        i3_0_0_reg_2344 = ap_const_lv10_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_0_reg_2288 = ap_const_lv10_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        i_0_reg_2288 = i_reg_17482.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read())) {
        p_Val2_1_0_reg_2333 = add_ln703_111_fu_17451_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state29.read())) {
        p_Val2_1_0_reg_2333 = sum_V_reg_17631.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && 
         !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2599_p2.read()))) {
        phi_mul_reg_2321 = ap_const_lv13_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state49.read()) && 
                esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
        phi_mul_reg_2321 = add_ln35_112_reg_17607.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2356 = temp_0_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2356 = temp_0_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2361 = tempWeight_0_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2361 = tempWeight_0_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2366 = temp_1_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2366 = temp_1_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2371 = tempWeight_1_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2371 = tempWeight_1_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2376 = temp_2_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()))) {
        reg_2376 = temp_2_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2381 = tempWeight_2_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()))) {
        reg_2381 = tempWeight_2_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2386 = temp_3_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2386 = temp_3_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2391 = tempWeight_3_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2391 = tempWeight_3_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2396 = temp_4_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()))) {
        reg_2396 = temp_4_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2401 = tempWeight_4_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()))) {
        reg_2401 = tempWeight_4_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        reg_2406 = temp_5_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        reg_2406 = temp_5_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        reg_2411 = tempWeight_5_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        reg_2411 = tempWeight_5_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2416 = temp_6_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2416 = temp_6_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2421 = tempWeight_6_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2421 = tempWeight_6_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2426 = temp_7_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2426 = temp_7_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2431 = tempWeight_7_V_q1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2431 = tempWeight_7_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        reg_2436 = temp_0_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2436 = temp_0_V_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        reg_2441 = tempWeight_0_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2441 = tempWeight_0_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2446 = temp_1_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2446 = temp_1_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2451 = tempWeight_1_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2451 = tempWeight_1_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2456 = temp_3_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2456 = temp_3_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        reg_2461 = tempWeight_3_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2461 = tempWeight_3_V_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        reg_2466 = temp_5_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2466 = temp_5_V_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        reg_2471 = tempWeight_5_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2471 = tempWeight_5_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2476 = temp_6_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()))) {
        reg_2476 = temp_6_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2481 = tempWeight_6_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()))) {
        reg_2481 = tempWeight_6_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2486 = temp_7_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2486 = temp_7_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()))) {
        reg_2491 = tempWeight_7_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state31.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2491 = tempWeight_7_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2496 = temp_2_V_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        reg_2496 = temp_2_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read()))) {
        reg_2501 = tempWeight_2_V_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        reg_2501 = tempWeight_2_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2506 = temp_4_V_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        reg_2506 = temp_4_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()))) {
        reg_2511 = tempWeight_4_V_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        reg_2511 = tempWeight_4_V_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln33_fu_2678_p2.read()))) {
        add_ln33_96_reg_17779 = add_ln33_96_fu_3220_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read())) {
        add_ln35_112_reg_17607 = add_ln35_112_fu_2637_p2.read();
        c_reg_17615 = c_fu_2649_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state39.read())) {
        add_ln703_101_reg_19460 = add_ln703_101_fu_17212_p2.read();
        add_ln703_104_reg_19465 = add_ln703_104_fu_17217_p2.read();
        add_ln703_54_reg_19415 = add_ln703_54_fu_17140_p2.read();
        add_ln703_67_reg_19420 = add_ln703_67_fu_17149_p2.read();
        add_ln703_72_reg_19425 = add_ln703_72_fu_17160_p2.read();
        add_ln703_79_reg_19430 = add_ln703_79_fu_17181_p2.read();
        add_ln703_82_reg_19435 = add_ln703_82_fu_17187_p2.read();
        add_ln703_85_reg_19440 = add_ln703_85_fu_17192_p2.read();
        add_ln703_88_reg_19445 = add_ln703_88_fu_17197_p2.read();
        add_ln703_91_reg_19450 = add_ln703_91_fu_17202_p2.read();
        add_ln703_98_reg_19455 = add_ln703_98_fu_17207_p2.read();
        select_ln850_100_reg_19385 = select_ln850_100_fu_16516_p3.read();
        select_ln850_101_reg_19390 = select_ln850_101_fu_16590_p3.read();
        select_ln850_102_reg_19395 = select_ln850_102_fu_16664_p3.read();
        select_ln850_105_reg_19400 = select_ln850_105_fu_16820_p3.read();
        select_ln850_108_reg_19405 = select_ln850_108_fu_16974_p3.read();
        select_ln850_109_reg_19410 = select_ln850_109_fu_17046_p3.read();
        select_ln850_98_reg_19375 = select_ln850_98_fu_16368_p3.read();
        select_ln850_99_reg_19380 = select_ln850_99_fu_16442_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state40.read())) {
        add_ln703_106_reg_19495 = add_ln703_106_fu_17412_p2.read();
        add_ln703_80_reg_19470 = add_ln703_80_fu_17324_p2.read();
        add_ln703_87_reg_19475 = add_ln703_87_fu_17345_p2.read();
        add_ln703_93_reg_19480 = add_ln703_93_fu_17367_p2.read();
        add_ln703_96_reg_19485 = add_ln703_96_fu_17379_p2.read();
        add_ln703_99_reg_19490 = add_ln703_99_fu_17391_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state41.read())) {
        add_ln703_108_reg_19500 = add_ln703_108_fu_17431_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read())) {
        add_ln703_11_reg_18550 = add_ln703_11_fu_9043_p2.read();
        add_ln703_14_reg_18555 = add_ln703_14_fu_9055_p2.read();
        add_ln703_16_reg_18560 = add_ln703_16_fu_9061_p2.read();
        add_ln703_19_reg_18565 = add_ln703_19_fu_9066_p2.read();
        add_ln703_22_reg_18570 = add_ln703_22_fu_9071_p2.read();
        add_ln703_27_reg_18575 = add_ln703_27_fu_9076_p2.read();
        add_ln703_4_reg_18545 = add_ln703_4_fu_9022_p2.read();
        select_ln850_28_reg_18360 = select_ln850_28_fu_7712_p3.read();
        select_ln850_32_reg_18365 = select_ln850_32_fu_7868_p3.read();
        select_ln850_35_reg_18375 = select_ln850_35_fu_8024_p3.read();
        select_ln850_39_reg_18385 = select_ln850_39_fu_8180_p3.read();
        select_ln850_43_reg_18395 = select_ln850_43_fu_8336_p3.read();
        select_ln850_46_reg_18400 = select_ln850_46_fu_8410_p3.read();
        shl_ln703_33_reg_18370 = shl_ln703_33_fu_7950_p3.read();
        shl_ln703_36_reg_18380 = shl_ln703_36_fu_8106_p3.read();
        shl_ln703_40_reg_18390 = shl_ln703_40_fu_8262_p3.read();
        tempWeight_7_V_load_7_reg_18480 = tempWeight_7_V_q0.read();
        temp_7_V_load_7_reg_18475 = temp_7_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        add_ln703_12_reg_18795 = add_ln703_12_fu_11048_p2.read();
        add_ln703_17_reg_18800 = add_ln703_17_fu_11059_p2.read();
        add_ln703_24_reg_18805 = add_ln703_24_fu_11080_p2.read();
        add_ln703_30_reg_18810 = add_ln703_30_fu_11086_p2.read();
        add_ln703_33_reg_18815 = add_ln703_33_fu_11091_p2.read();
        add_ln703_36_reg_18820 = add_ln703_36_fu_11096_p2.read();
        select_ln850_38_reg_18580 = select_ln850_38_fu_9346_p3.read();
        select_ln850_42_reg_18585 = select_ln850_42_fu_9502_p3.read();
        select_ln850_44_reg_18590 = select_ln850_44_fu_9576_p3.read();
        select_ln850_45_reg_18595 = select_ln850_45_fu_9650_p3.read();
        select_ln850_49_reg_18605 = select_ln850_49_fu_9806_p3.read();
        select_ln850_53_reg_18615 = select_ln850_53_fu_9962_p3.read();
        select_ln850_56_reg_18625 = select_ln850_56_fu_10118_p3.read();
        select_ln850_59_reg_18630 = select_ln850_59_fu_10192_p3.read();
        select_ln850_63_reg_18640 = select_ln850_63_fu_10346_p3.read();
        shl_ln703_47_reg_18600 = shl_ln703_47_fu_9732_p3.read();
        shl_ln703_50_reg_18610 = shl_ln703_50_fu_9888_p3.read();
        shl_ln703_54_reg_18620 = shl_ln703_54_fu_10044_p3.read();
        shl_ln703_61_reg_18635 = shl_ln703_61_fu_10274_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read())) {
        add_ln703_1_reg_18340 = add_ln703_1_fu_7323_p2.read();
        add_ln703_3_reg_18345 = add_ln703_3_fu_7329_p2.read();
        add_ln703_6_reg_18350 = add_ln703_6_fu_7334_p2.read();
        add_ln703_9_reg_18355 = add_ln703_9_fu_7339_p2.read();
        select_ln850_10_reg_18140 = select_ln850_10_fu_5737_p3.read();
        select_ln850_16_reg_18145 = select_ln850_16_fu_5893_p3.read();
        select_ln850_17_reg_18150 = select_ln850_17_fu_5967_p3.read();
        select_ln850_18_reg_18155 = select_ln850_18_fu_6041_p3.read();
        select_ln850_21_reg_18165 = select_ln850_21_fu_6197_p3.read();
        select_ln850_24_reg_18175 = select_ln850_24_fu_6353_p3.read();
        select_ln850_25_reg_18180 = select_ln850_25_fu_6427_p3.read();
        select_ln850_31_reg_18195 = select_ln850_31_fu_6665_p3.read();
        shl_ln703_19_reg_18160 = shl_ln703_19_fu_6123_p3.read();
        shl_ln703_22_reg_18170 = shl_ln703_22_fu_6279_p3.read();
        shl_ln703_26_reg_18185 = shl_ln703_26_fu_6509_p3.read();
        shl_ln703_29_reg_18190 = shl_ln703_29_fu_6591_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        add_ln703_25_reg_19020 = add_ln703_25_fu_12876_p2.read();
        add_ln703_32_reg_19025 = add_ln703_32_fu_12897_p2.read();
        add_ln703_38_reg_19030 = add_ln703_38_fu_12919_p2.read();
        add_ln703_41_reg_19035 = add_ln703_41_fu_12931_p2.read();
        add_ln703_43_reg_19040 = add_ln703_43_fu_12937_p2.read();
        add_ln703_46_reg_19045 = add_ln703_46_fu_12942_p2.read();
        add_ln703_49_reg_19050 = add_ln703_49_fu_12947_p2.read();
        add_ln703_58_reg_19055 = add_ln703_58_fu_12952_p2.read();
        select_ln850_52_reg_18825 = select_ln850_52_fu_11394_p3.read();
        select_ln850_57_reg_18830 = select_ln850_57_fu_11550_p3.read();
        select_ln850_58_reg_18835 = select_ln850_58_fu_11624_p3.read();
        select_ln850_60_reg_18840 = select_ln850_60_fu_11698_p3.read();
        select_ln850_67_reg_18850 = select_ln850_67_fu_11936_p3.read();
        select_ln850_72_reg_18860 = select_ln850_72_fu_12092_p3.read();
        shl_ln703_64_reg_18845 = shl_ln703_64_fu_11862_p3.read();
        shl_ln703_68_reg_18855 = shl_ln703_68_fu_12018_p3.read();
        shl_ln703_78_reg_18865 = shl_ln703_78_fu_12174_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        add_ln703_44_reg_19240 = add_ln703_44_fu_14735_p2.read();
        add_ln703_51_reg_19245 = add_ln703_51_fu_14756_p2.read();
        add_ln703_56_reg_19250 = add_ln703_56_fu_14768_p2.read();
        add_ln703_59_reg_19255 = add_ln703_59_fu_14780_p2.read();
        add_ln703_61_reg_19260 = add_ln703_61_fu_14785_p2.read();
        add_ln703_64_reg_19265 = add_ln703_64_fu_14790_p2.read();
        add_ln703_74_reg_19270 = add_ln703_74_fu_14795_p2.read();
        select_ln850_66_reg_19060 = select_ln850_66_fu_13175_p3.read();
        select_ln850_70_reg_19065 = select_ln850_70_fu_13331_p3.read();
        select_ln850_71_reg_19070 = select_ln850_71_fu_13405_p3.read();
        select_ln850_73_reg_19075 = select_ln850_73_fu_13479_p3.read();
        select_ln850_74_reg_19080 = select_ln850_74_fu_13553_p3.read();
        select_ln850_77_reg_19090 = select_ln850_77_fu_13709_p3.read();
        select_ln850_81_reg_19095 = select_ln850_81_fu_13865_p3.read();
        select_ln850_88_reg_19105 = select_ln850_88_fu_14021_p3.read();
        select_ln850_91_reg_19110 = select_ln850_91_fu_14095_p3.read();
        select_ln850_95_reg_19115 = select_ln850_95_fu_14169_p3.read();
        shl_ln703_75_reg_19085 = shl_ln703_75_fu_13635_p3.read();
        shl_ln703_82_reg_19100 = shl_ln703_82_fu_13947_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state38.read())) {
        add_ln703_53_reg_19350 = add_ln703_53_fu_15889_p2.read();
        add_ln703_66_reg_19355 = add_ln703_66_fu_15911_p2.read();
        add_ln703_69_reg_19360 = add_ln703_69_fu_15923_p2.read();
        add_ln703_71_reg_19365 = add_ln703_71_fu_15929_p2.read();
        add_ln703_77_reg_19370 = add_ln703_77_fu_15934_p2.read();
        select_ln850_80_reg_19275 = select_ln850_80_fu_14990_p3.read();
        select_ln850_84_reg_19280 = select_ln850_84_fu_15146_p3.read();
        select_ln850_87_reg_19290 = select_ln850_87_fu_15302_p3.read();
        select_ln850_94_reg_19305 = select_ln850_94_fu_15540_p3.read();
        shl_ln703_103_reg_19315 = shl_ln703_103_fu_15704_p3.read();
        shl_ln703_106_reg_19320 = shl_ln703_106_fu_15786_p3.read();
        shl_ln703_110_reg_19345 = shl_ln703_110_fu_15868_p3.read();
        shl_ln703_85_reg_19285 = shl_ln703_85_fu_15228_p3.read();
        shl_ln703_89_reg_19295 = shl_ln703_89_fu_15384_p3.read();
        shl_ln703_92_reg_19300 = shl_ln703_92_fu_15466_p3.read();
        shl_ln703_96_reg_19310 = shl_ln703_96_fu_15622_p3.read();
        tempWeight_4_V_load_13_reg_19330 = tempWeight_4_V_q0.read();
        tempWeight_5_V_load_13_reg_19340 = tempWeight_5_V_q0.read();
        temp_4_V_load_13_reg_19325 = temp_4_V_q0.read();
        temp_5_V_load_13_reg_19335 = temp_5_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln33_fu_2678_p2.read()))) {
        fcBias_V_addr_1_reg_17784 =  (sc_lv<32>) (sext_ln203_fu_3230_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_fu_2643_p2.read()))) {
        fcBias_V_addr_reg_17625 =  (sc_lv<32>) (sext_ln31_fu_2664_p1.read());
        zext_ln31_reg_17620 = zext_ln31_fu_2655_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
        i_1_reg_17546 = i_1_fu_2605_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        i_reg_17482 = i_fu_2567_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
        input_V_addr_1_read_reg_17487 = m_axi_input_V_RDATA.read();
        temp_0_V_addr_reg_17503 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_1_V_addr_reg_17508 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_2_V_addr_reg_17513 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_3_V_addr_reg_17518 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_4_V_addr_reg_17523 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_5_V_addr_reg_17528 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_6_V_addr_reg_17533 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        temp_7_V_addr_reg_17538 =  (sc_lv<7>) (zext_ln203_fu_2587_p1.read());
        trunc_ln203_reg_17499 = trunc_ln203_fu_2573_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
        input_V_addr_read_reg_17551 = m_axi_input_V_RDATA.read();
        tempWeight_0_V_addr_reg_17567 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_1_V_addr_reg_17572 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_2_V_addr_reg_17577 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_3_V_addr_reg_17582 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_4_V_addr_reg_17587 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_5_V_addr_reg_17592 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_6_V_addr_reg_17597 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        tempWeight_7_V_addr_reg_17602 =  (sc_lv<10>) (zext_ln203_1_fu_2625_p1.read());
        trunc_ln203_1_reg_17563 = trunc_ln203_1_fu_2611_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        input_V_addr_reg_17468 =  (sc_lv<32>) (sext_ln8_1_fu_2547_p1.read());
        sext_ln7_reg_17474 = sext_ln7_fu_2557_p1.read();
        sext_ln8_reg_17463 = sext_ln8_fu_2543_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state34.read()))) {
        reg_2516 = temp_0_V_q0.read();
        reg_2520 = tempWeight_0_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state33.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()))) {
        reg_2524 = temp_3_V_q0.read();
        reg_2528 = tempWeight_3_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
        select_ln850_11_reg_17970 = select_ln850_11_fu_4558_p3.read();
        select_ln850_14_reg_17980 = select_ln850_14_fu_4714_p3.read();
        select_ln850_15_reg_17985 = select_ln850_15_fu_4788_p3.read();
        select_ln850_1_reg_17935 = select_ln850_1_fu_4024_p3.read();
        select_ln850_2_reg_17940 = select_ln850_2_fu_4098_p3.read();
        select_ln850_3_reg_17945 = select_ln850_3_fu_4172_p3.read();
        select_ln850_4_reg_17950 = select_ln850_4_fu_4246_p3.read();
        select_ln850_7_reg_17960 = select_ln850_7_fu_4402_p3.read();
        select_ln850_reg_17930 = select_ln850_fu_3950_p3.read();
        shl_ln703_12_reg_17975 = shl_ln703_12_fu_4640_p3.read();
        shl_ln703_6_reg_17955 = shl_ln703_6_fu_4328_p3.read();
        shl_ln703_9_reg_17965 = shl_ln703_9_fu_4484_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state28.read()) && esl_seteq<1,1,1>(m_axi_input_V_RVALID.read(), ap_const_logic_1))) {
        sum_V_reg_17631 = m_axi_input_V_RDATA.read();
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state8_io.read())))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_1) && !((esl_seteq<1,1,1>(icmp_ln15_fu_2561_p2.read(), ap_const_lv1_0) && 
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln20_fu_2599_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state20;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()) && esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln20_fu_2599_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_input_V_RVALID.read())))) {
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_fu_2643_p2.read()))) {
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state30.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln33_fu_2678_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state43;
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
            ap_NS_fsm = ap_ST_fsm_state41;
            break;
        case 1099511627776 : 
            ap_NS_fsm = ap_ST_fsm_state42;
            break;
        case 2199023255552 : 
            ap_NS_fsm = ap_ST_fsm_state30;
            break;
        case 4398046511104 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state43.read()) && esl_seteq<1,1,1>(m_axi_input_V_AWREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state44;
            } else {
                ap_NS_fsm = ap_ST_fsm_state43;
            }
            break;
        case 8796093022208 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state44.read()) && esl_seteq<1,1,1>(m_axi_input_V_WREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state45;
            } else {
                ap_NS_fsm = ap_ST_fsm_state44;
            }
            break;
        case 17592186044416 : 
            ap_NS_fsm = ap_ST_fsm_state46;
            break;
        case 35184372088832 : 
            ap_NS_fsm = ap_ST_fsm_state47;
            break;
        case 70368744177664 : 
            ap_NS_fsm = ap_ST_fsm_state48;
            break;
        case 140737488355328 : 
            ap_NS_fsm = ap_ST_fsm_state49;
            break;
        case 281474976710656 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state49.read()) && esl_seteq<1,1,1>(m_axi_input_V_BVALID.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state20;
            } else {
                ap_NS_fsm = ap_ST_fsm_state49;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<49>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
            break;
    }
}

}


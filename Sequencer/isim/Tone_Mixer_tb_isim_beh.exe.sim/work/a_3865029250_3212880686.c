/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xdc0cde0 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/matt/Programming/VHDL/FpgaSequencer/Sequencer/Tone_Mixer.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3865029250_3212880686_p_0(char *t0)
{
    char t8[16];
    char t64[16];
    char t65[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    char *t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;

LAB0:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2592U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8032);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 4712U);
    t9 = *((char **)t4);
    t4 = (t0 + 13808U);
    t10 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t8, t9, t4, 1);
    t11 = (t0 + 8128);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4712U);
    t4 = *((char **)t2);
    t2 = (t0 + 14234);
    t16 = xsi_mem_cmp(t2, t4, 4U);
    if (t16 == 1)
        goto LAB9;

LAB25:    t9 = (t0 + 14238);
    t17 = xsi_mem_cmp(t9, t4, 4U);
    if (t17 == 1)
        goto LAB10;

LAB26:    t11 = (t0 + 14242);
    t18 = xsi_mem_cmp(t11, t4, 4U);
    if (t18 == 1)
        goto LAB11;

LAB27:    t13 = (t0 + 14246);
    t19 = xsi_mem_cmp(t13, t4, 4U);
    if (t19 == 1)
        goto LAB12;

LAB28:    t15 = (t0 + 14250);
    t21 = xsi_mem_cmp(t15, t4, 4U);
    if (t21 == 1)
        goto LAB13;

LAB29:    t22 = (t0 + 14254);
    t24 = xsi_mem_cmp(t22, t4, 4U);
    if (t24 == 1)
        goto LAB14;

LAB30:    t25 = (t0 + 14258);
    t27 = xsi_mem_cmp(t25, t4, 4U);
    if (t27 == 1)
        goto LAB15;

LAB31:    t28 = (t0 + 14262);
    t30 = xsi_mem_cmp(t28, t4, 4U);
    if (t30 == 1)
        goto LAB16;

LAB32:    t31 = (t0 + 14266);
    t33 = xsi_mem_cmp(t31, t4, 4U);
    if (t33 == 1)
        goto LAB17;

LAB33:    t34 = (t0 + 14270);
    t36 = xsi_mem_cmp(t34, t4, 4U);
    if (t36 == 1)
        goto LAB18;

LAB34:    t37 = (t0 + 14274);
    t39 = xsi_mem_cmp(t37, t4, 4U);
    if (t39 == 1)
        goto LAB19;

LAB35:    t40 = (t0 + 14278);
    t42 = xsi_mem_cmp(t40, t4, 4U);
    if (t42 == 1)
        goto LAB20;

LAB36:    t43 = (t0 + 14282);
    t45 = xsi_mem_cmp(t43, t4, 4U);
    if (t45 == 1)
        goto LAB21;

LAB37:    t46 = (t0 + 14286);
    t48 = xsi_mem_cmp(t46, t4, 4U);
    if (t48 == 1)
        goto LAB22;

LAB38:    t49 = (t0 + 14290);
    t51 = xsi_mem_cmp(t49, t4, 4U);
    if (t51 == 1)
        goto LAB23;

LAB39:
LAB24:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 14390);
    t5 = (t0 + 8128);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t5);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(115, ng0);
    t52 = (t0 + 2472U);
    t53 = *((char **)t52);
    t54 = (0 - 3);
    t55 = (t54 * -1);
    t56 = (1U * t55);
    t57 = (0 + t56);
    t52 = (t53 + t57);
    t1 = *((unsigned char *)t52);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 14294);
    t5 = (t0 + 8192);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB42:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t16 = (1 - 3);
    t55 = (t16 * -1);
    t56 = (1U * t55);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 14302);
    t5 = (t0 + 8256);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB45:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t16 = (2 - 3);
    t55 = (t16 * -1);
    t56 = (1U * t55);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB47;

LAB49:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 14310);
    t5 = (t0 + 8320);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB48:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t16 = (3 - 3);
    t55 = (t16 * -1);
    t56 = (1U * t55);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 14318);
    t5 = (t0 + 8384);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB51:    goto LAB8;

LAB10:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5512U);
    t4 = *((char **)t2);
    t2 = (t0 + 8448);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_delta(t2, 8U, 8U, 0LL);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 14326);
    t5 = (t0 + 8448);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 8512);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5672U);
    t4 = *((char **)t2);
    t2 = (t0 + 8448);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_delta(t2, 8U, 8U, 0LL);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 14334);
    t5 = (t0 + 8448);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 8512);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB12:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5832U);
    t4 = *((char **)t2);
    t2 = (t0 + 8448);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_delta(t2, 8U, 8U, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 14342);
    t5 = (t0 + 8448);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 8512);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB13:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 5992U);
    t4 = *((char **)t2);
    t2 = (t0 + 8448);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_delta(t2, 8U, 8U, 0LL);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 14350);
    t5 = (t0 + 8448);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 8512);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB14:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t55 = (15 - 15);
    t56 = (t55 * 1U);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t5 = (t0 + 8576);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 14358);
    t5 = (t0 + 8576);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    goto LAB8;

LAB15:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t55 = (15 - 15);
    t56 = (t55 * 1U);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t5 = (t0 + 8640);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 14366);
    t5 = (t0 + 8640);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    goto LAB8;

LAB16:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t55 = (15 - 15);
    t56 = (t55 * 1U);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t5 = (t0 + 8704);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 14374);
    t5 = (t0 + 8704);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    goto LAB8;

LAB17:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t55 = (15 - 15);
    t56 = (t55 * 1U);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t5 = (t0 + 8768);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    xsi_set_current_line(162, ng0);
    t2 = (t0 + 14382);
    t5 = (t0 + 8768);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    goto LAB8;

LAB18:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 4872U);
    t4 = *((char **)t2);
    t2 = (t0 + 13824U);
    t5 = (t0 + 5032U);
    t9 = *((char **)t5);
    t5 = (t0 + 13840U);
    t10 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t65, t4, t2, t9, t5);
    t11 = (t0 + 5192U);
    t12 = *((char **)t11);
    t11 = (t0 + 13856U);
    t13 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t64, t10, t65, t12, t11);
    t14 = (t0 + 5352U);
    t15 = *((char **)t14);
    t14 = (t0 + 13872U);
    t20 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t13, t64, t15, t14);
    t22 = (t0 + 8832);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    t26 = (t25 + 56U);
    t28 = *((char **)t26);
    memcpy(t28, t20, 16U);
    xsi_driver_first_trans_fast(t22);
    goto LAB8;

LAB19:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t0 + 8896);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t0 + 8448);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 4392U);
    t4 = *((char **)t2);
    t2 = (t0 + 8512);
    t5 = (t2 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB20:    goto LAB8;

LAB21:    goto LAB8;

LAB22:    goto LAB8;

LAB23:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t55 = (15 - 15);
    t56 = (t55 * 1U);
    t57 = (0 + t56);
    t2 = (t4 + t57);
    t5 = (t0 + 8960);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB40:;
LAB41:    xsi_set_current_line(116, ng0);
    t58 = (t0 + 1032U);
    t59 = *((char **)t58);
    t58 = (t0 + 8192);
    t60 = (t58 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t59, 8U);
    xsi_driver_first_trans_fast(t58);
    goto LAB42;

LAB44:    xsi_set_current_line(121, ng0);
    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t5 = (t0 + 8256);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB45;

LAB47:    xsi_set_current_line(126, ng0);
    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t5 = (t0 + 8320);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB48;

LAB50:    xsi_set_current_line(131, ng0);
    t5 = (t0 + 1512U);
    t9 = *((char **)t5);
    t5 = (t0 + 8384);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB51;

}

static void work_a_3865029250_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    xsi_set_current_line(185, ng0);
    t2 = (t0 + 2592U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8048);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(186, ng0);
    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t4 = (t0 + 14394);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB26:    t11 = (t0 + 14398);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB27:    t14 = (t0 + 14402);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB28:    t17 = (t0 + 14406);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB29:    t20 = (t0 + 14410);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB30:    t23 = (t0 + 14414);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB31:    t26 = (t0 + 14418);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB32:    t29 = (t0 + 14422);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB33:    t32 = (t0 + 14426);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB34:    t35 = (t0 + 14430);
    t37 = xsi_mem_cmp(t35, t8, 4U);
    if (t37 == 1)
        goto LAB18;

LAB35:    t38 = (t0 + 14434);
    t40 = xsi_mem_cmp(t38, t8, 4U);
    if (t40 == 1)
        goto LAB19;

LAB36:    t41 = (t0 + 14438);
    t43 = xsi_mem_cmp(t41, t8, 4U);
    if (t43 == 1)
        goto LAB20;

LAB37:    t44 = (t0 + 14442);
    t46 = xsi_mem_cmp(t44, t8, 4U);
    if (t46 == 1)
        goto LAB21;

LAB38:    t47 = (t0 + 14446);
    t49 = xsi_mem_cmp(t47, t8, 4U);
    if (t49 == 1)
        goto LAB22;

LAB39:    t50 = (t0 + 14450);
    t52 = xsi_mem_cmp(t50, t8, 4U);
    if (t52 == 1)
        goto LAB23;

LAB40:    t53 = (t0 + 14454);
    t55 = xsi_mem_cmp(t53, t8, 4U);
    if (t55 == 1)
        goto LAB24;

LAB41:
LAB25:    xsi_set_current_line(220, ng0);
    t2 = (t0 + 14586);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(188, ng0);
    t56 = (t0 + 14458);
    t58 = (t0 + 9024);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memcpy(t62, t56, 8U);
    xsi_driver_first_trans_fast(t58);
    goto LAB8;

LAB10:    xsi_set_current_line(190, ng0);
    t2 = (t0 + 14466);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB11:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 14474);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 14482);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(196, ng0);
    t2 = (t0 + 14490);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB14:    xsi_set_current_line(198, ng0);
    t2 = (t0 + 14498);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB15:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 14506);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB16:    xsi_set_current_line(202, ng0);
    t2 = (t0 + 14514);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB17:    xsi_set_current_line(204, ng0);
    t2 = (t0 + 14522);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB18:    xsi_set_current_line(206, ng0);
    t2 = (t0 + 14530);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB19:    xsi_set_current_line(208, ng0);
    t2 = (t0 + 14538);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB20:    xsi_set_current_line(210, ng0);
    t2 = (t0 + 14546);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB21:    xsi_set_current_line(212, ng0);
    t2 = (t0 + 14554);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB22:    xsi_set_current_line(214, ng0);
    t2 = (t0 + 14562);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB23:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 14570);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB24:    xsi_set_current_line(218, ng0);
    t2 = (t0 + 14578);
    t5 = (t0 + 9024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB42:;
}


extern void work_a_3865029250_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3865029250_3212880686_p_0,(void *)work_a_3865029250_3212880686_p_1};
	xsi_register_didat("work_a_3865029250_3212880686", "isim/Tone_Mixer_tb_isim_beh.exe.sim/work/a_3865029250_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "/home/matt/Programming/VHDL/sequencer/Sequencer/Tone_Mixer.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3865029250_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1952U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5720);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1832U);
    t8 = *((char **)t4);
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t8 + t12);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 9951);
    t5 = (t0 + 5832);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 18U);
    xsi_driver_first_trans_delta(t5, 0U, 18U, 0LL);

LAB9:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = (1 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 9979);
    t5 = (t0 + 5896);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 18U);
    xsi_driver_first_trans_delta(t5, 0U, 18U, 0LL);

LAB12:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 10007);
    t5 = (t0 + 5960);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 18U);
    xsi_driver_first_trans_delta(t5, 0U, 18U, 0LL);

LAB15:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t9 = (3 - 3);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t4 + t12);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 10035);
    t5 = (t0 + 6024);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 18U);
    xsi_driver_first_trans_delta(t5, 0U, 18U, 0LL);

LAB18:    goto LAB3;

LAB5:    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(68, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t15 = (t16 + t19);
    t20 = (t0 + 5832);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 8U);
    xsi_driver_first_trans_delta(t20, 10U, 8U, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 9941);
    t5 = (t0 + 5832);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 10U);
    xsi_driver_first_trans_delta(t5, 0U, 10U, 0LL);
    goto LAB9;

LAB11:    xsi_set_current_line(75, ng0);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t15 = (t0 + 5896);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_delta(t15, 10U, 8U, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 9969);
    t5 = (t0 + 5896);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 10U);
    xsi_driver_first_trans_delta(t5, 0U, 10U, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(82, ng0);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t15 = (t0 + 5960);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_delta(t15, 10U, 8U, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 9997);
    t5 = (t0 + 5960);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 10U);
    xsi_driver_first_trans_delta(t5, 0U, 10U, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(89, ng0);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t5 = (t8 + t19);
    t15 = (t0 + 6024);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_delta(t15, 10U, 8U, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 10025);
    t5 = (t0 + 6024);
    t8 = (t5 + 56U);
    t15 = *((char **)t8);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 10U);
    xsi_driver_first_trans_delta(t5, 0U, 10U, 0LL);
    goto LAB18;

}

static void work_a_3865029250_3212880686_p_1(char *t0)
{
    char t8[16];
    char t9[16];
    char t10[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1952U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5736);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(113, ng0);
    t4 = (t0 + 2952U);
    t11 = *((char **)t4);
    t4 = (t0 + 9680U);
    t12 = (t0 + 3112U);
    t13 = *((char **)t12);
    t12 = (t0 + 9696U);
    t14 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t10, t11, t4, t13, t12);
    t15 = (t0 + 3272U);
    t16 = *((char **)t15);
    t15 = (t0 + 9712U);
    t17 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t9, t14, t10, t16, t15);
    t18 = (t0 + 3432U);
    t19 = *((char **)t18);
    t18 = (t0 + 9728U);
    t20 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t17, t9, t19, t18);
    t21 = (t0 + 6088);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 18U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t26 = (35 - 15);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t2 = (t4 + t28);
    t5 = (t0 + 6152);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3865029250_3212880686_p_2(char *t0)
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

LAB0:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1952U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5752);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(126, ng0);
    t4 = (t0 + 1832U);
    t8 = *((char **)t4);
    t4 = (t0 + 10053);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB26:    t11 = (t0 + 10057);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB27:    t14 = (t0 + 10061);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB28:    t17 = (t0 + 10065);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB29:    t20 = (t0 + 10069);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB30:    t23 = (t0 + 10073);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB31:    t26 = (t0 + 10077);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB32:    t29 = (t0 + 10081);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB33:    t32 = (t0 + 10085);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB34:    t35 = (t0 + 10089);
    t37 = xsi_mem_cmp(t35, t8, 4U);
    if (t37 == 1)
        goto LAB18;

LAB35:    t38 = (t0 + 10093);
    t40 = xsi_mem_cmp(t38, t8, 4U);
    if (t40 == 1)
        goto LAB19;

LAB36:    t41 = (t0 + 10097);
    t43 = xsi_mem_cmp(t41, t8, 4U);
    if (t43 == 1)
        goto LAB20;

LAB37:    t44 = (t0 + 10101);
    t46 = xsi_mem_cmp(t44, t8, 4U);
    if (t46 == 1)
        goto LAB21;

LAB38:    t47 = (t0 + 10105);
    t49 = xsi_mem_cmp(t47, t8, 4U);
    if (t49 == 1)
        goto LAB22;

LAB39:    t50 = (t0 + 10109);
    t52 = xsi_mem_cmp(t50, t8, 4U);
    if (t52 == 1)
        goto LAB23;

LAB40:    t53 = (t0 + 10113);
    t55 = xsi_mem_cmp(t53, t8, 4U);
    if (t55 == 1)
        goto LAB24;

LAB41:
LAB25:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 10405);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(128, ng0);
    t56 = (t0 + 10117);
    t58 = (t0 + 6216);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memcpy(t62, t56, 18U);
    xsi_driver_first_trans_fast(t58);
    goto LAB8;

LAB10:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 10135);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB11:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 10153);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 10171);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 10189);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB14:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 10207);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB15:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 10225);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB16:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 10243);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB17:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 10261);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB18:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 10279);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB19:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 10297);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB20:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 10315);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB21:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 10333);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB22:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 10351);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB23:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 10369);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB24:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 10387);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB8;

LAB42:;
}


extern void work_a_3865029250_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3865029250_3212880686_p_0,(void *)work_a_3865029250_3212880686_p_1,(void *)work_a_3865029250_3212880686_p_2};
	xsi_register_didat("work_a_3865029250_3212880686", "isim/Top_Level_tb_isim_beh.exe.sim/work/a_3865029250_3212880686.didat");
	xsi_register_executes(pe);
}

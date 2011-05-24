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
static const char *ng0 = "/home/matt/Programming/VHDL/sequencer/Sequencer/Clock_Divider.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );


static void work_a_0968957248_3212880686_p_0(char *t0)
{
    char t8[16];
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
    unsigned int t16;
    char *t17;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2984);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1512U);
    t9 = *((char **)t4);
    t4 = (t0 + 4904U);
    t10 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t8, t9, t4, 1);
    t11 = (t0 + 3064);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 8U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3128);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t1 = 1;
    if (8U == 8U)
        goto LAB11;

LAB12:    t1 = 0;

LAB13:    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t10 = (t0 + 4945);
    t12 = (t0 + 3064);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t10, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3128);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t16 = 0;

LAB14:    if (t16 < 8U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t2 = (t4 + t16);
    t9 = (t5 + t16);
    if (*((unsigned char *)t2) != *((unsigned char *)t9))
        goto LAB12;

LAB16:    t16 = (t16 + 1);
    goto LAB14;

}


extern void work_a_0968957248_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0968957248_3212880686_p_0};
	xsi_register_didat("work_a_0968957248_3212880686", "isim/Top_Level_tb_isim_beh.exe.sim/work/a_0968957248_3212880686.didat");
	xsi_register_executes(pe);
}

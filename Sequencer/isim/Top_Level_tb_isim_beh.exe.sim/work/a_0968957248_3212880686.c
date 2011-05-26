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
static const char *ng0 = "/home/matt/Programming/VHDL/FpgaSequencer/Sequencer/Clock_Divider.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);


static void work_a_0968957248_3212880686_p_0(char *t0)
{
    char t12[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 3144);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1672U);
    t13 = *((char **)t5);
    t5 = (t0 + 5168U);
    t14 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t13, t5, 1);
    t15 = (t0 + 3224);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 8U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(50, ng0);
    t3 = (t0 + 3288);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1672U);
    t5 = *((char **)t3);
    t3 = (t0 + 5168U);
    t6 = (t0 + 1352U);
    t9 = *((char **)t6);
    t6 = (t0 + 5152U);
    t1 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t5, t3, t9, t6);
    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);
    t13 = (t0 + 5210);
    t15 = (t0 + 3224);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 8U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(53, ng0);
    t3 = (t0 + 3288);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

}


extern void work_a_0968957248_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0968957248_3212880686_p_0};
	xsi_register_didat("work_a_0968957248_3212880686", "isim/Top_Level_tb_isim_beh.exe.sim/work/a_0968957248_3212880686.didat");
	xsi_register_executes(pe);
}

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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *XILINXCORELIB_P_1837083571;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *IEEE_P_0774719531;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *XILINXCORELIB_P_1705937335;
char *UNISIM_P_0947159679;
char *IEEE_P_3620187407;
char *IEEE_P_2717149903;
char *UNISIM_P_3222816464;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    unisim_p_3222816464_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_0777667938_2584565154_init();
    work_a_3190264855_3212880686_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_1705937335_init();
    xilinxcorelib_a_1946581549_3212880686_init();
    work_a_0945777706_3470111245_init();
    work_a_3865029250_3212880686_init();
    work_a_0968957248_3212880686_init();
    work_a_4190355748_3212880686_init();
    work_a_1300694355_3212880686_init();
    work_a_1027946691_3212880686_init();
    work_a_1805259601_3212880686_init();
    work_a_0878789775_3212880686_init();
    work_a_0558474636_3212880686_init();
    work_a_1163904914_3212880686_init();


    xsi_register_tops("work_a_1163904914_3212880686");

    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_1705937335 = xsi_get_engine_memory("xilinxcorelib_p_1705937335");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}

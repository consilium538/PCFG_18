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

char *UNISIM_P_3222816464;
char *STD_TEXTIO;
char *IEEE_P_1367372525;
char *IEEE_P_2592010699;
char *IEEE_P_2717149903;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_4104775526_3752513572_init();
    unisim_a_3449702363_3752513572_init();
    unisim_a_3822252837_3752513572_init();
    unisim_a_3484885994_2523279426_init();
    unisim_a_0868425105_1864968857_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_2361375718_3676810390_init();
    unisim_a_1563441273_3676810390_init();
    unisim_a_3259211087_3676810390_init();
    unisim_a_3365790286_3676810390_init();
    unisim_a_3596748023_3676810390_init();
    unisim_a_3333324666_3676810390_init();
    unisim_a_0319714735_3676810390_init();
    unisim_a_0698923758_3676810390_init();
    unisim_a_1983449170_3676810390_init();
    unisim_a_0402220037_3731405331_init();
    unisim_a_3504150236_3731405331_init();
    unisim_a_1525108159_2393828108_init();
    unisim_a_2952178788_1492584465_init();
    unisim_a_2261302797_3723259517_init();
    unisim_a_3163574381_0086195937_init();
    unisim_a_0480724963_3797307301_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_0076703602_2013640830_init();
    unisim_a_3575506157_2013640830_init();
    unisim_a_3241281599_3291887062_init();
    unisim_a_3365082554_3391448174_init();
    unisim_a_1126976262_1981213126_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_3189398483_2959432447_init();
    xilinxcorelib_a_1717820610_1709443946_init();
    xilinxcorelib_a_4216127487_0543512595_init();
    xilinxcorelib_a_1774992342_3212880686_init();
    work_a_2845203386_3732229488_init();
    work_a_0848100276_0632001823_init();
    work_a_1576029543_2372691052_init();


    xsi_register_tops("work_a_1576029543_2372691052");

    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}

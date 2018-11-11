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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/study/sogang/18y6s/adca/Project/PCFG_18/cnt/vhdl/cnt_11bit.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0004975506_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4288);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0004975506_3212880686_p_1(char *t0)
{
    char t6[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
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

LAB0:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 6840U);
    t4 = (t0 + 6891);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 10;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (10 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t19 = (t0 + 4464);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 4304);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 4464);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t8 = (t0 + 1672U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t1 = t14;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0004975506_3212880686_p_2(char *t0)
{
    char t14[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4320);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t5);
    t13 = (t6 == (unsigned char)3);
    if (t13 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t3 = (t0 + 6902);
    t8 = (t0 + 4528);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 11U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 4528);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 11U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 6840U);
    t8 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t14, t7, t1, 1);
    t9 = (t14 + 12U);
    t15 = *((unsigned int *)t9);
    t16 = (1U * t15);
    t17 = (11U != t16);
    if (t17 == 1)
        goto LAB12;

LAB13:    t10 = (t0 + 4528);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t18 = (t12 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 11U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB12:    xsi_size_not_matching(11U, t16, 0);
    goto LAB13;

}


extern void work_a_0004975506_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0004975506_3212880686_p_0,(void *)work_a_0004975506_3212880686_p_1,(void *)work_a_0004975506_3212880686_p_2};
	xsi_register_didat("work_a_0004975506_3212880686", "isim/cnt_testbench_isim_beh.exe.sim/work/a_0004975506_3212880686.didat");
	xsi_register_executes(pe);
}

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



static void unisim_a_2233457742_0889792898_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:
LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3456);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3360);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void unisim_a_2233457742_0889792898_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3376);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t5 = (100 * 1LL);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t1 = (t0 + 3520);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t12 = (t0 + 3520);
    xsi_driver_intertial_reject(t12, t5, t5);
    goto LAB3;

}


extern void unisim_a_2233457742_0889792898_init()
{
	static char *pe[] = {(void *)unisim_a_2233457742_0889792898_p_0,(void *)unisim_a_2233457742_0889792898_p_1};
	xsi_register_didat("unisim_a_2233457742_0889792898", "isim/x_synthesis.exe.sim/unisim/a_2233457742_0889792898.didat");
	xsi_register_executes(pe);
}

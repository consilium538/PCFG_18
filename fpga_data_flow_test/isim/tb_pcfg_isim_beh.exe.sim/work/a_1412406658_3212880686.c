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
static const char *ng0 = "C:/KDH/Doc/18y6s/adca/PCFG/PCFG_18/fpga_data_flow_test/vhdl/address_decoder.vhd";
extern char *IEEE_P_3620187407;



static void work_a_1412406658_3212880686_p_0(char *t0)
{
    char t6[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 8;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 5877);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 7;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (7 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:
LAB5:    t21 = (t0 + 3600);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 3488);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 3600);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_1412406658_3212880686_p_1(char *t0)
{
    char t5[16];
    char t21[16];
    char t36[16];
    char t51[16];
    char t66[16];
    char t81[16];
    char t96[16];
    char t111[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t37;
    char *t38;
    int t39;
    unsigned char t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t52;
    char *t53;
    int t54;
    unsigned char t55;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t67;
    char *t68;
    int t69;
    unsigned char t70;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t82;
    char *t83;
    int t84;
    unsigned char t85;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t97;
    char *t98;
    int t99;
    unsigned char t100;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t112;
    char *t113;
    int t114;
    unsigned char t115;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5828U);
    t3 = (t0 + 5885);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 11;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (11 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1032U);
    t18 = *((char **)t17);
    t17 = (t0 + 5828U);
    t19 = (t0 + 5900);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 11;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (11 - 0);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t25 != 0)
        goto LAB5;

LAB6:    t32 = (t0 + 1032U);
    t33 = *((char **)t32);
    t32 = (t0 + 5828U);
    t34 = (t0 + 5915);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 11;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (11 - 0);
    t9 = (t39 * 1);
    t9 = (t9 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t9;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t33, t32, t34, t36);
    if (t40 != 0)
        goto LAB7;

LAB8:    t47 = (t0 + 1032U);
    t48 = *((char **)t47);
    t47 = (t0 + 5828U);
    t49 = (t0 + 5930);
    t52 = (t51 + 0U);
    t53 = (t52 + 0U);
    *((int *)t53) = 0;
    t53 = (t52 + 4U);
    *((int *)t53) = 11;
    t53 = (t52 + 8U);
    *((int *)t53) = 1;
    t54 = (11 - 0);
    t9 = (t54 * 1);
    t9 = (t9 + 1);
    t53 = (t52 + 12U);
    *((unsigned int *)t53) = t9;
    t55 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t48, t47, t49, t51);
    if (t55 != 0)
        goto LAB9;

LAB10:    t62 = (t0 + 1032U);
    t63 = *((char **)t62);
    t62 = (t0 + 5828U);
    t64 = (t0 + 5945);
    t67 = (t66 + 0U);
    t68 = (t67 + 0U);
    *((int *)t68) = 0;
    t68 = (t67 + 4U);
    *((int *)t68) = 11;
    t68 = (t67 + 8U);
    *((int *)t68) = 1;
    t69 = (11 - 0);
    t9 = (t69 * 1);
    t9 = (t9 + 1);
    t68 = (t67 + 12U);
    *((unsigned int *)t68) = t9;
    t70 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t63, t62, t64, t66);
    if (t70 != 0)
        goto LAB11;

LAB12:    t77 = (t0 + 1032U);
    t78 = *((char **)t77);
    t77 = (t0 + 5828U);
    t79 = (t0 + 5960);
    t82 = (t81 + 0U);
    t83 = (t82 + 0U);
    *((int *)t83) = 0;
    t83 = (t82 + 4U);
    *((int *)t83) = 11;
    t83 = (t82 + 8U);
    *((int *)t83) = 1;
    t84 = (11 - 0);
    t9 = (t84 * 1);
    t9 = (t9 + 1);
    t83 = (t82 + 12U);
    *((unsigned int *)t83) = t9;
    t85 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t78, t77, t79, t81);
    if (t85 != 0)
        goto LAB13;

LAB14:    t92 = (t0 + 1032U);
    t93 = *((char **)t92);
    t92 = (t0 + 5828U);
    t94 = (t0 + 5975);
    t97 = (t96 + 0U);
    t98 = (t97 + 0U);
    *((int *)t98) = 0;
    t98 = (t97 + 4U);
    *((int *)t98) = 11;
    t98 = (t97 + 8U);
    *((int *)t98) = 1;
    t99 = (11 - 0);
    t9 = (t99 * 1);
    t9 = (t9 + 1);
    t98 = (t97 + 12U);
    *((unsigned int *)t98) = t9;
    t100 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t93, t92, t94, t96);
    if (t100 != 0)
        goto LAB15;

LAB16:    t107 = (t0 + 1032U);
    t108 = *((char **)t107);
    t107 = (t0 + 5828U);
    t109 = (t0 + 5990);
    t112 = (t111 + 0U);
    t113 = (t112 + 0U);
    *((int *)t113) = 0;
    t113 = (t112 + 4U);
    *((int *)t113) = 11;
    t113 = (t112 + 8U);
    *((int *)t113) = 1;
    t114 = (11 - 0);
    t9 = (t114 * 1);
    t9 = (t9 + 1);
    t113 = (t112 + 12U);
    *((unsigned int *)t113) = t9;
    t115 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t108, t107, t109, t111);
    if (t115 != 0)
        goto LAB17;

LAB18:
LAB19:    t122 = (t0 + 6005);
    t124 = (t0 + 3664);
    t125 = (t124 + 56U);
    t126 = *((char **)t125);
    t127 = (t126 + 56U);
    t128 = *((char **)t127);
    memcpy(t128, t122, 3U);
    xsi_driver_first_trans_fast_port(t124);

LAB2:    t129 = (t0 + 3504);
    *((int *)t129) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 5897);
    t12 = (t0 + 3664);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 3U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t23 = (t0 + 5912);
    t27 = (t0 + 3664);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t23, 3U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB7:    t38 = (t0 + 5927);
    t42 = (t0 + 3664);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t38, 3U);
    xsi_driver_first_trans_fast_port(t42);
    goto LAB2;

LAB9:    t53 = (t0 + 5942);
    t57 = (t0 + 3664);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    memcpy(t61, t53, 3U);
    xsi_driver_first_trans_fast_port(t57);
    goto LAB2;

LAB11:    t68 = (t0 + 5957);
    t72 = (t0 + 3664);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    memcpy(t76, t68, 3U);
    xsi_driver_first_trans_fast_port(t72);
    goto LAB2;

LAB13:    t83 = (t0 + 5972);
    t87 = (t0 + 3664);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    t90 = (t89 + 56U);
    t91 = *((char **)t90);
    memcpy(t91, t83, 3U);
    xsi_driver_first_trans_fast_port(t87);
    goto LAB2;

LAB15:    t98 = (t0 + 5987);
    t102 = (t0 + 3664);
    t103 = (t102 + 56U);
    t104 = *((char **)t103);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    memcpy(t106, t98, 3U);
    xsi_driver_first_trans_fast_port(t102);
    goto LAB2;

LAB17:    t113 = (t0 + 6002);
    t117 = (t0 + 3664);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    t120 = (t119 + 56U);
    t121 = *((char **)t120);
    memcpy(t121, t113, 3U);
    xsi_driver_first_trans_fast_port(t117);
    goto LAB2;

LAB20:    goto LAB2;

}

static void work_a_1412406658_3212880686_p_2(char *t0)
{
    char t12[16];
    char t21[16];
    char t29[16];
    char t37[16];
    char t45[16];
    char t53[16];
    char t61[16];
    char t69[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t38;
    char *t39;
    int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t46;
    char *t47;
    int t48;
    unsigned char t49;
    char *t50;
    char *t51;
    char *t54;
    char *t55;
    int t56;
    unsigned char t57;
    char *t58;
    char *t59;
    char *t62;
    char *t63;
    int t64;
    unsigned char t65;
    char *t66;
    char *t67;
    char *t70;
    char *t71;
    int t72;
    unsigned char t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;

LAB0:    xsi_set_current_line(28, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 5828U);
    t10 = (t0 + 6008);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 11;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (11 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t12);
    if (t17 == 1)
        goto LAB23;

LAB24:    t14 = (t0 + 1032U);
    t18 = *((char **)t14);
    t14 = (t0 + 5828U);
    t19 = (t0 + 6020);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 11;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (11 - 0);
    t16 = (t24 * 1);
    t16 = (t16 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t16;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t14, t19, t21);
    t7 = t25;

LAB25:    if (t7 == 1)
        goto LAB20;

LAB21:    t23 = (t0 + 1032U);
    t26 = *((char **)t23);
    t23 = (t0 + 5828U);
    t27 = (t0 + 6032);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 0;
    t31 = (t30 + 4U);
    *((int *)t31) = 11;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (11 - 0);
    t16 = (t32 * 1);
    t16 = (t16 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t16;
    t33 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t26, t23, t27, t29);
    t6 = t33;

LAB22:    if (t6 == 1)
        goto LAB17;

LAB18:    t31 = (t0 + 1032U);
    t34 = *((char **)t31);
    t31 = (t0 + 5828U);
    t35 = (t0 + 6044);
    t38 = (t37 + 0U);
    t39 = (t38 + 0U);
    *((int *)t39) = 0;
    t39 = (t38 + 4U);
    *((int *)t39) = 11;
    t39 = (t38 + 8U);
    *((int *)t39) = 1;
    t40 = (11 - 0);
    t16 = (t40 * 1);
    t16 = (t16 + 1);
    t39 = (t38 + 12U);
    *((unsigned int *)t39) = t16;
    t41 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t34, t31, t35, t37);
    t5 = t41;

LAB19:    if (t5 == 1)
        goto LAB14;

LAB15:    t39 = (t0 + 1032U);
    t42 = *((char **)t39);
    t39 = (t0 + 5828U);
    t43 = (t0 + 6056);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 0;
    t47 = (t46 + 4U);
    *((int *)t47) = 11;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t48 = (11 - 0);
    t16 = (t48 * 1);
    t16 = (t16 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t16;
    t49 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t42, t39, t43, t45);
    t4 = t49;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t47 = (t0 + 1032U);
    t50 = *((char **)t47);
    t47 = (t0 + 5828U);
    t51 = (t0 + 6068);
    t54 = (t53 + 0U);
    t55 = (t54 + 0U);
    *((int *)t55) = 0;
    t55 = (t54 + 4U);
    *((int *)t55) = 11;
    t55 = (t54 + 8U);
    *((int *)t55) = 1;
    t56 = (11 - 0);
    t16 = (t56 * 1);
    t16 = (t16 + 1);
    t55 = (t54 + 12U);
    *((unsigned int *)t55) = t16;
    t57 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t50, t47, t51, t53);
    t3 = t57;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t55 = (t0 + 1032U);
    t58 = *((char **)t55);
    t55 = (t0 + 5828U);
    t59 = (t0 + 6080);
    t62 = (t61 + 0U);
    t63 = (t62 + 0U);
    *((int *)t63) = 0;
    t63 = (t62 + 4U);
    *((int *)t63) = 11;
    t63 = (t62 + 8U);
    *((int *)t63) = 1;
    t64 = (11 - 0);
    t16 = (t64 * 1);
    t16 = (t16 + 1);
    t63 = (t62 + 12U);
    *((unsigned int *)t63) = t16;
    t65 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t58, t55, t59, t61);
    t2 = t65;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t63 = (t0 + 1032U);
    t66 = *((char **)t63);
    t63 = (t0 + 5828U);
    t67 = (t0 + 6092);
    t70 = (t69 + 0U);
    t71 = (t70 + 0U);
    *((int *)t71) = 0;
    t71 = (t70 + 4U);
    *((int *)t71) = 11;
    t71 = (t70 + 8U);
    *((int *)t71) = 1;
    t72 = (11 - 0);
    t16 = (t72 * 1);
    t16 = (t16 + 1);
    t71 = (t70 + 12U);
    *((unsigned int *)t71) = t16;
    t73 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t66, t63, t67, t69);
    t1 = t73;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB26:    t78 = (t0 + 3728);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    *((unsigned char *)t82) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t78);

LAB2:    t83 = (t0 + 3520);
    *((int *)t83) = 1;

LAB1:    return;
LAB3:    t71 = (t0 + 3728);
    t74 = (t71 + 56U);
    t75 = *((char **)t74);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    *((unsigned char *)t77) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t71);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB17:    t5 = (unsigned char)1;
    goto LAB19;

LAB20:    t6 = (unsigned char)1;
    goto LAB22;

LAB23:    t7 = (unsigned char)1;
    goto LAB25;

LAB27:    goto LAB2;

}


extern void work_a_1412406658_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1412406658_3212880686_p_0,(void *)work_a_1412406658_3212880686_p_1,(void *)work_a_1412406658_3212880686_p_2};
	xsi_register_didat("work_a_1412406658_3212880686", "isim/tb_pcfg_isim_beh.exe.sim/work/a_1412406658_3212880686.didat");
	xsi_register_executes(pe);
}

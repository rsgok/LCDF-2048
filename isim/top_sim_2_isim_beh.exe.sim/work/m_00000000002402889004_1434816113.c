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
static const char *ng0 = "D:/ise_file/backup/VGAdemo/address.v";
static int ng1[] = {6, 0};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 12, t5, 9, t4, 32);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 12, t6, 12, t8, 10);
    t7 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t7, t9, 0, 0, 12, 0LL);
    goto LAB2;

}


extern void work_m_00000000002402889004_1434816113_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000002402889004_1434816113", "isim/top_sim_2_isim_beh.exe.sim/work/m_00000000002402889004_1434816113.didat");
	xsi_register_executes(pe);
}

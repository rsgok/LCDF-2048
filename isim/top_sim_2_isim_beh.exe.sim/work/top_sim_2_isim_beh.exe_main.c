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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003032423130_2858095548_init();
    work_m_00000000002402889004_1434816113_init();
    xilinxcorelib_ver_m_00000000001358910285_3846779965_init();
    xilinxcorelib_ver_m_00000000001687936702_0755220214_init();
    xilinxcorelib_ver_m_00000000000277421008_1686731533_init();
    xilinxcorelib_ver_m_00000000001603977570_3246980194_init();
    work_m_00000000002489990758_1646110587_init();
    work_m_00000000000551497235_1619391686_init();
    work_m_00000000000897832967_0619962294_init();
    work_m_00000000000465704035_3683860065_init();
    work_m_00000000002793744955_1412470370_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002793744955_1412470370");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

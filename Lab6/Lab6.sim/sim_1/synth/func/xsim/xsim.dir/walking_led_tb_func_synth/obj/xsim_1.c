/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_192(char*, char *);
extern void execute_193(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_19(char*, char *);
extern void execute_24(char*, char *);
extern void execute_33(char*, char *);
extern void execute_37(char*, char *);
extern void execute_41(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_51(char*, char *);
extern void execute_54(char*, char *);
extern void execute_57(char*, char *);
extern void execute_62(char*, char *);
extern void execute_66(char*, char *);
extern void execute_74(char*, char *);
extern void execute_84(char*, char *);
extern void execute_118(char*, char *);
extern void execute_121(char*, char *);
extern void execute_124(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[51] = {(funcp)execute_192, (funcp)execute_193, (funcp)execute_16, (funcp)execute_17, (funcp)execute_19, (funcp)execute_24, (funcp)execute_33, (funcp)execute_37, (funcp)execute_41, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_51, (funcp)execute_54, (funcp)execute_57, (funcp)execute_62, (funcp)execute_66, (funcp)execute_74, (funcp)execute_84, (funcp)execute_118, (funcp)execute_121, (funcp)execute_124, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_166, (funcp)execute_167, (funcp)transaction_34, (funcp)transaction_36, (funcp)transaction_38, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_68, (funcp)transaction_75, (funcp)transaction_82, (funcp)transaction_89, (funcp)transaction_96, (funcp)transaction_103, (funcp)transaction_110, (funcp)transaction_117, (funcp)transaction_124, (funcp)transaction_131, (funcp)transaction_146, (funcp)transaction_153, (funcp)transaction_160, (funcp)transaction_167, (funcp)transaction_174, (funcp)transaction_181, (funcp)transaction_188, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_208};
const int NumRelocateId= 51;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/walking_led_tb_func_synth/xsim.reloc",  (void **)funcTab, 51);
	iki_vhdl_file_variable_register(dp + 43712);
	iki_vhdl_file_variable_register(dp + 43768);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/walking_led_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/walking_led_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/walking_led_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/walking_led_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/walking_led_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

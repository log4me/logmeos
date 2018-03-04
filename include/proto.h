#ifndef _LOGMEOS_PROTO_H_
#define _LOGMEOS_PROTO_H_
//proto of function
#include "const.h"
#include "type.h"
#include "global.h"
//klib.asm
PUBLIC void out_byte(u16 port, u8 value);
PUBLIC u8 in_byte(u16 port);
PUBLIC void disp_str(char *info);
PUBLIC void disp_color_str(char *info, int color);
//protect.c
PUBLIC void init_protect();
//kernel.asm
PUBLIC void restart();
//PUBLIC void spurious_irq(int irq);
//Tasks
void TestA();
void TestB();
void TestC();
//init8259a.c
PUBLIC void put_irq_handler(int irq, irq_handler handler);
PUBLIC void spurious_irq(int irq);
PUBLIC void init_8259A();
//clock.c
PUBLIC void clock_handler(int irq);
PUBLIC void init_8254();
//syscall.asm
PUBLIC void sys_call();
PUBLIC int get_ticks();
//proc.c
PUBLIC int sys_get_ticks();
#endif

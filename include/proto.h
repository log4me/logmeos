#ifndef _LOGMEOS_PROTO_H_
#define _LOGMEOS_PROTO_H_
//proto of function
#include "const.h"
#include "type.h"
PUBLIC void out_byte(u16 port, u8 value);
PUBLIC u8 in_byte(u16 port);
PUBLIC void disp_str(char *info);
PUBLIC void disp_color_str(char *info, int color);
PUBLIC void init_protect();
PUBLIC void init_8259A();
//kernel.asm
PUBLIC void restart();
//PUBLIC void spurious_irq(int irq);
//Tasks
void TestA();
void TestB();
void TestC();
#endif

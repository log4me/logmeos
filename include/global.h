#ifndef _LOGMEOS_GLBAL_H_
#define _LOGMEOS_GLBAL_H_

#include "const.h"
#include "type.h"
#include "protect.h"

PUBLIC u8 gdt_ptr[6];//0~1:gdt limit 2~5:gdt base
PUBLIC DESCRIPTOR gdt[GDT_SIZE];
PUBLIC u8 idt_ptr[6];//0~1:idt limit 2~5:idt base
PUBLIC GATE idt[IDT_SIZE];
PUBLIC u32 disp_pos;

#endif

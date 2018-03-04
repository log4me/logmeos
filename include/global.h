#ifndef _LOGMEOS_GLBAL_H_
#define _LOGMEOS_GLBAL_H_

#include "const.h"
#include "type.h"
#include "protect.h"
#include "proc.h"
PUBLIC u8 gdt_ptr[6];//0~1:gdt limit 2~5:gdt base
PUBLIC DESCRIPTOR gdt[GDT_SIZE];
PUBLIC u8 idt_ptr[6];//0~1:idt limit 2~5:idt base
PUBLIC GATE idt[IDT_SIZE];
PUBLIC u32 disp_pos;
PUBLIC TSS tss;
PUBLIC PCB* p_proc_ready;//就绪进程
extern PCB proc_table[];
extern char task_stack[];
extern TSS tss;
extern u32 k_reenter;//中断重入次数
extern TASK task_table[];
extern irq_handler irq_table[];
#endif

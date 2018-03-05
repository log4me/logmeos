#ifndef _LOGMEOS_PROC_H_
#define _LOGMEOS_PROC_H_
#include "type.h"
#include "const.h"
#include "protect.h"

typedef struct s_stackframe
{
    u32 gs;
    u32 fs;
    u32 es;
    u32 ds;
    u32 edi;
    u32 esi;
    u32 ebp;
    u32 kernel_esp;
    u32 ebx;
    u32 edx;
    u32 ecx;
    u32 eax;
    u32 retaddr;
    u32 eip;
    u32 cs;
    u32 eflags;
    u32 esp;
    u32 ss;
    //当发生中断从ring3(ring1) -> ring0切换时，首先从tss中读取esp0,ss0,然后esp指向该结构的末端(高地址)，然后依次压入ss,esp,elfags,cs,eip，手动压入retaddr,eax,ecx,edx,ebx,kernel_esp，ebp,esi,edi,ds,es,fs,gs)
} STACK_FRAME;

//Process control Block
typedef struct s_proc
{
    STACK_FRAME regs;//process register
    u16 ldt_sel; //gdt selector of ldt
    DESCRIPTOR ldts[LDT_SIZE];//ldt used by the process
    u32 pid;//process id
    char p_name[16];//process name
    int ticks; //剩余时钟周期数，用于进程调度
    int priority;
} PCB;
typedef struct s_task
{
    task_f initial_eip;
    int stacksize;
    char name[16];
    int priority;
} TASK;
//number of process
#define NR_TASKS 3
//stacks of tasks
#define STACK_SIZE_TESTA 0x8000
#define STACK_SIZE_TESTB 0x8000
#define STACK_SIZE_TESTC 0x8000
#define STACK_SIZE_TOTAL (STACK_SIZE_TESTA + STACK_SIZE_TESTB + STACK_SIZE_TESTC)
#endif

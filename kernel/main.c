#include "type.h"
#include "protect.h"
#include "proc.h"
#include "global.h"
#include "klib.h"
#include "const.h"
#include "proto.h"
#include "string.h"
PUBLIC int kernel_main()
{
    //清屏
    disp_pos = 0;
    for(int i = 0; i < 80 * 25; ++ i)
    {
        disp_str(" ");
    }
    disp_pos = 0;
    disp_str("welcome to logme os.\n");
    PCB *p_proc = proc_table;
    TASK* p_task = task_table;
    char *p_task_stack = task_stack + STACK_SIZE_TOTAL;
    u16 selector_ldt = SELECTOR_LDT_FIRST;
    for(int i = 0; i < NR_TASKS; ++ i)
    {
        strcpy(p_proc->p_name, p_task->name); //进程name
        p_proc->pid = i;                        //进程pid
        //初始化进程ldt
        p_proc->ldt_sel = selector_ldt;
        if(p_task->priority <= 0)
        {
            //如果任务优先级 <= 0，则赋予默认优先级
            p_task->priority = DEFAULT_PRIORITY;
        }
        p_proc->ticks = p_proc->priority = p_task->priority;

        memcpy(&p_proc->ldts[0], &gdt[SELECTOR_KERNEL_CS >> 3], sizeof(DESCRIPTOR));

        p_proc->ldts[0].attr1 = DA_C | PRIVILEGE_TASK << 5; 
    
    
        memcpy(&p_proc->ldts[1], &gdt[SELECTOR_KERNEL_DS >> 3], sizeof(DESCRIPTOR));
        p_proc->ldts[1].attr1 = DA_DRW | PRIVILEGE_TASK << 5; 

        p_proc->regs.cs = (0 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.ds = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.es = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.fs = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.ss = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.gs = (SELECTOR_KERNEL_GS & SA_RPL_MASK) | RPL_TASK;

        p_proc->regs.eip = (u32)p_task->initial_eip;
        p_proc->regs.esp = (u32) p_task_stack;
        p_proc->regs.eflags = 0x1202; //IF = 1(开中断), IOPL = 1, bit2总是1
    
        p_task_stack -= p_task->stacksize;
        p_proc ++;
        p_task ++;
        selector_ldt +=  1 << 3;
    }
    k_reenter = 0;
    ticks = 0;//初始化ticks
    init_8254();
    p_proc_ready = proc_table;
    put_irq_handler(CLOCK_IRQ, clock_handler);//设定时钟中断处理程序
    enable_irq(CLOCK_IRQ);
    //TestA();
    restart();
    while(1){}
}

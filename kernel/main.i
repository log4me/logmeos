# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "main.c"
# 1 "../include/type.h" 1



typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

typedef void (*int_handler) ();
typedef void (*task_f) ();
# 2 "main.c" 2
# 1 "../include/protect.h" 1



# 1 "../include/type.h" 1
# 5 "../include/protect.h" 2


typedef struct s_descriptor
{
    u16 limit_low;
    u16 base_low;
    u8 base_mid;
    u8 attr1;
    u8 limit_high_attr2;
    u8 base_high;
} DESCRIPTOR;
typedef struct s_gate
{
    u16 offset_low;
    u16 selector;
    u8 dcount;
    u8 attr;
    u16 offset_high;
} GATE;
typedef struct s_tss
{
    u32 backlink;
    u32 esp0;
    u32 ss0;
    u32 esp1;
    u32 ss1;
    u32 esp2;
    u32 ss2;
    u32 cr3;
    u32 eip;
    u32 flags;
    u32 eax;
    u32 ecx;
    u32 edx;
    u32 ebx;
    u32 esp;
    u32 ebp;
    u32 esi;
    u32 edi;
    u32 es;
    u32 cs;
    u32 ss;
    u32 ds;
    u32 fs;
    u32 gs;
    u32 ldt;
    u16 trap;
    u16 iobase;
}TSS;
# 3 "main.c" 2
# 1 "../include/proc.h" 1



# 1 "../include/const.h" 1
# 5 "../include/proc.h" 2
# 1 "../include/protect.h" 1
# 6 "../include/proc.h" 2

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
} STACK_FRAME;

typedef struct s_proc
{
    STACK_FRAME regs;
    u16 ldt_sel;
    DESCRIPTOR ldts[2];
    u32 pid;
    char p_name[16];
} PCB;
typedef struct s_task
{
    task_f initial_eip;
    int stacksize;
    char name[16];
} TASK;
# 4 "main.c" 2
# 1 "../include/global.h" 1






# 1 "../include/proc.h" 1
# 8 "../include/global.h" 2
 u8 gdt_ptr[6];
 DESCRIPTOR gdt[128];
 u8 idt_ptr[6];
 GATE idt[256];
 u32 disp_pos;
 TSS tss;
 PCB* p_proc_ready;
extern PCB proc_table[];
extern char task_stack[];
extern TSS tss;
extern u32 k_reenter;
extern TASK task_table[];
# 5 "main.c" 2
# 1 "../include/klib.h" 1




 void disp_int(int num);
 void delay(int time);
# 6 "main.c" 2
# 1 "../include/const.h" 1
# 7 "main.c" 2
# 1 "../include/proto.h" 1





 void out_byte(u16 port, u8 value);
 u8 in_byte(u16 port);
 void disp_str(char *info);
 void disp_color_str(char *info, int color);
 void init_protect();
 void init_8259A();

 void restart();


void TestA();
void TestB();
# 8 "main.c" 2
# 1 "../include/string.h" 1




 void* __attribute__((__cdecl__)) memcpy(void *p_dst, void *p_src, u32 n_size);
 void* memset(void *p_dst, char ch, int size);

 char *strcpy(char *p_dst, char *p_src);
# 9 "main.c" 2
 int kernel_main()
{
    disp_str("---\n\n\n\n\n\n\n\n\n\"kernel_main\" begins---\n");
    PCB *p_proc = proc_table;
    TASK* p_task = task_table;
    char *p_task_stack = task_stack + (0x8000 + 0x8000);
    u16 selector_ldt = 0X28;
    for(int i = 0; i < 2; ++ i)
    {
        strcpy(p_proc->p_name, p_task->name);
        p_proc->pid = i;

        p_proc->ldt_sel = selector_ldt;

        memcpy(&p_proc->ldts[0], &gdt[0x08 >> 3], sizeof(DESCRIPTOR));

        p_proc->ldts[0].attr1 = 0x98 | 1 << 5;


        memcpy(&p_proc->ldts[1], &gdt[0x10 >> 3], sizeof(DESCRIPTOR));
        p_proc->ldts[1].attr1 = 0x92 | 1 << 5;

        p_proc->regs.cs = (0 & 0xFFFC & 0xFFFB) | 4 | 1;
        p_proc->regs.ds = (8 & 0xFFFC & 0xFFFB) | 4 | 1;
        p_proc->regs.es = (8 & 0xFFFC & 0xFFFB) | 4 | 1;
        p_proc->regs.fs = (8 & 0xFFFC & 0xFFFB) | 4 | 1;
        p_proc->regs.ss = (8 & 0xFFFC & 0xFFFB) | 4 | 1;
        p_proc->regs.gs = ((0x18 + 3) & 0xFFFC) | 1;

        p_proc->regs.eip = (u32)&TestA;
        p_proc->regs.esp = (u32) task_stack + (0x8000 + 0x8000);
        p_proc->regs.eflags = 0x1202;

        p_task_stack -= p_task->stacksize;
        p_proc ++;
        p_task ++;
        selector_ldt += 1 << 3;
    }
    p_proc_ready = proc_table;
    k_reenter = -1;

    restart();
    while(1){}
}

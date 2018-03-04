%include "sconst.inc"
;导入函数
extern cstart
extern exception_handler
extern spurious_irq
extern kernel_main
extern disp_str
extern clock_handler

;导入全局变量
extern gdt_ptr
extern idt_ptr
extern disp_pos
extern p_proc_ready
extern tss
extern k_reenter
extern irq_table
extern sys_call_table

[SECTION .bss]
StackSpace  resb    1024 * 2
StackTop:

[SECTION .data]
clock_int_msg db "^",0

[section .text]	; 代码在此

;导出符号
global restart
global sys_call
global _start	; 导出 _start
global divide_error
global single_step_exception
global nmi
global breakpoint_exception
global overflow
global bounds_check
global inval_opcode
global copr_not_available
global double_fault
global copr_seg_overrun
global inval_tss
global segment_not_present
global stack_exception
global general_protection
global page_fault
global copr_error
global hwint00
global hwint01
global hwint02
global hwint03
global hwint04
global hwint05
global hwint06
global hwint07
global hwint08
global hwint09
global hwint10
global hwint11
global hwint12
global hwint13
global hwint14
global hwint15

_start:	; 跳到这里来的时候，我们假设 gs 指向显存
    
    ;把堆栈从loader挪到kernel
    mov esp, StackTop
    mov dword [disp_pos], 0
    
    sgdt [gdt_ptr]       ;sgdt指令把gdt_limt,gdt_base保存到内存
    call cstart      ;在cstart函数中把gdt迁移到内核空间,并设置idt
    lgdt [gdt_ptr]
    
    ;加载idt
    lidt [idt_ptr]
    
    
    jmp SELECTOR_KERNEL_CS:csinit ;这个跳转指令会清空指令队列，重新加载<<OS:D&I 2nd>> P90
csinit:    
    xor eax, eax
    mov ax, SELECTOR_TSS
    ltr ax
    jmp kernel_main
    ;sti
    ;hlt
;hardware interrupt
;用宏来生成中断例程程序，首先把中断号压栈，然后雕印spurious_irq
;master 8259a
%macro hwint_master 1
    ;调用中断处理程序时执行到此处时，esp,ss,eflags, cs, eip已经压栈，此时esp指向stack_frame中的retaddr
    ;CPU在响应中断的过程中自动关闭终端
    ;1.切换堆栈(从tss中读取对应的ss,和esp) 2.把esp,ss,eflags,cs,eip压栈
    ;从这里开始用的进程表中的栈
    call save;保存寄存器,函数调用会把下一句的eip压入到堆栈中(retaddr)
    in al, INT_M_CTLMASK
    or al, (1 << %1)     ;屏蔽当前中断
    out INT_M_CTLMASK, al
    mov al, EOI          ;通知8259a当前中断已处理
    out INT_M_CTL, al
    sti
    push %1
    call [irq_table + 4 * %1]   ;调用中断处理程序
    pop ecx
    cli            ;关中断
    
    ;打开当前中断
    in al, INT_M_CTLMASK
    and al, ~(1 << %1) 
    out INT_M_CTLMASK, al

    ret ;ret后会回到restart或者restart_reenter执行
%endmacro

ALIGN 16
hwint00:            ;Interrupt routine for irq 0(clock)
    hwint_master 0
ALIGN 16
hwint01:            ;Interrupt routine for irq 1(keyboard)
    hwint_master 1
ALIGN 16
hwint02:            ;Interrupt routine for irq 2(Slave 8259a)
    hwint_master 0

ALIGN 16
hwint03:            ;Interrupt routine for irq 3(second serial)
    hwint_master 3
ALIGN 16
hwint04:            ;Interrupt routine for irq 4(first serial)
    hwint_master 4
ALIGN 16
hwint05:            ;Interrupt routine for irq 5(XT winchester)
    hwint_master 5
ALIGN 16
hwint06:            ;Interrupt routine for irq 6(floppy)
    hwint_master 6
ALIGN 16
hwint07:            ;Interrupt routine for irq 7(printer)
    hwint_master 7
;slave 8259a
%macro hwint_slave 1
    push %1
    call spurious_irq
    add esp, 4
    hlt
%endmacro

ALIGN 16
hwint08:            ;Interrupt routine for irq 9(realtime clock)
    hwint_slave 8
ALIGN 16
hwint09:            ;Interrupt routine for irq 10(irq 2 redirected)
    hwint_slave 9
ALIGN 16
hwint10:            ;Interrupt routine for irq 11
    hwint_slave 10
ALIGN 16
hwint11:            ;Interrupt routine for irq 12
    hwint_slave 11
ALIGN 16
hwint12:            ;Interrupt routine for irq 13(FPU exception)
    hwint_slave 12
ALIGN 16
hwint13:            ;Interrupt routine for irq 14(AT winchester)
    hwint_slave 13
ALIGN 16
hwint14:            ;Interrupt routine for irq 15
    hwint_slave 14
ALIGN 16
hwint15:            ;Interrupt routine for irq 0(clock)
    hwint_slave 15
;sys_call系统调用,在eax中保存系统调用号，然后调用sys_call_table中对应的函数
sys_call:
    call save
    sti
    call [sys_call_table + eax * 4]
    mov [esi + EAXREG - P_STACKBASE], eax
    cli
    ret

;interrupt and exception
divide_error:
    push 0xFFFFFFFF ;no error code
    push 0          ;vector_no = 0
    jmp exception

single_step_exception:
    push 0xFFFFFFFF ;no error code
    push 1          ;vector_no = 1
    jmp exception

nmi:
    push 0xFFFFFFFF ;no error code
    push 2          ;vector_no = 2
    jmp exception

breakpoint_exception:
    push 0xFFFFFFFF ;no error code
    push 3          ;vector_no = 3
    jmp exception

overflow:
    push 0xFFFFFFFF ;no error code
    push 4          ;vector_no = 4
    jmp exception

bounds_check:
    push 0xFFFFFFFF ;no error code
    push 5          ;vector_no = 5
    jmp exception

inval_opcode:
    push 0xFFFFFFFF ;no error code
    push 6          ;vector_no = 6
    jmp exception

copr_not_available:
    push 0xFFFFFFFF ;no error code
    push 7          ;vector_no = 7
    jmp exception

double_fault:
    push 8          ;vector_no = 8
    jmp exception

copr_seg_overrun:
    push 0xFFFFFFFF ;no error code
    push 9         ;vector_no = 9
    jmp exception

inval_tss:
    push 10          ;vector_no = A
    jmp exception

segment_not_present:
    push 11          ;vector_no = B
    jmp exception

stack_exception:
    push 12          ;vector_no = C
    jmp exception

general_protection:
    push 13          ;vector_no = D
    jmp exception

page_fault:
    push 14          ;vector_no = E
    jmp exception
copr_error:
    push 0xFFFFFFFF ;no error code
    push 16          ;vector_no = 0
    jmp exception

exception:
    ;void exception_handler(int vec_no, int err_code, int eip, int cs, int eflags);
    call exception_handler
    add esp, 4 * 2 ; Eip is at the stack top;TOP => EIP => CS => eflags   
    hlt

save:
;save函数，保存寄存器，根据是否为重入中断，切换堆栈并调用函数
    ;保存寄存器
    ;此时esp指向进程的PCB中的eax
    pushad
    push ds
    push es
    push fs
    push gs
    ;初始化段寄存器 
    mov dx, ss
    mov ds, dx
    mov es, dx
    
    mov esi, esp        ;esi为当前进程PCB首地址
    
    inc dword [k_reenter]
    cmp dword [k_reenter], 0
    jne .1      ;非重入中断
    mov esp, StackTop ;切换到内核栈 

    push restart
    jmp [esi + RETADR - P_STACKBASE];跳转到retadr执行
.1: ;重入中断
    push restart_reenter
    jmp [esi + RETADR - P_STACKBASE] 

;restart
restart:
    mov esp, [p_proc_ready]
    lldt [esp + P_LDT_SEL]
    ;初始化TSS中的esp0,低特权级->高特权级需要ss0,esp0
    lea eax, [esp + P_STACKTOP]
    mov [tss + TSS3_S_SP0], eax
restart_reenter:
    dec dword [k_reenter]
    pop gs
    pop fs
    pop es
    pop ds
    popad

    add esp, 4
    ;iretd指令依次弹出EIP, CS(抛弃高16位),EFLAGS  
    iretd

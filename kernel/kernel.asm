SELECTOR_KERNEL_CS  equ  8 ;FLAT_C

;导入函数
extern cstart
extern exception_handler
extern spurious_irq

;导入全局变量
extern gdt_ptr
extern idt_ptr
extern disp_pos

[SECTION .bss]
StackSpace  resb    1024 * 2
StackTop:

[section .text]	; 代码在此

;导出符号
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
    sti
    hlt
;hardware interrupt
;用宏来生成中断例程程序，首先把中断号压栈，然后雕印spurious_irq
;master 8259a
%macro hwint_master 1
    push %1
    call spurious_irq
    add esp, 4
    hlt
%endmacro

ALIGN 16
hwint00:            ;Interrupt routine for irq 0(clock)
    hwint_master 0
ALIGN 16
hwint01:            ;Interrupt routine for irq 1(keyboard)
    hwint_master 1
ALIGN 16
hwint02:            ;Interrupt routine for irq 2(Slave 8259a)
    hwint_master 2

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


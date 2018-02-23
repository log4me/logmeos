SELECTOR_KERNEL_CS  equ  8 ;FLAT_C

;导入函数
extern move_gdt_to_kernel
extern show_info

;导入全局变量
extern gdt_ptr

[SECTION .bss]
StackSpace  resb    1024 * 2
StackTop:

[section .text]	; 代码在此

;导出符号
global _start	; 导出 _start

_start:	; 跳到这里来的时候，我们假设 gs 指向显存
    
    ;把堆栈从loader挪到kernel
    mov esp, StackTop
    
    sgdt [gdt_ptr]       ;sgdt指令把gdt_limt,gdt_base保存到内存
    call move_gdt_to_kernel          ;在move_gdt_to_kernel函数中把gdt迁移到内核空间
    lgdt [gdt_ptr]
    
    jmp SELECTOR_KERNEL_CS:csinit ;这个跳转指令会清空指令队列，重新加载<<OS:D&I 2nd>> P90
csinit:    
    push 0
    popfd
    call show_info
    hlt
    

    


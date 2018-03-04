;syscall.asm
%include "sconst.inc"
_NR_get_ticks equ 0 ;与global.c中sys_call_table定义对应
INT_VECTOR_SYS_CALL equ 0x94

global get_ticks ;导出符号
bits 32
[section .syscall]

get_ticks:
    mov eax, _NR_get_ticks
    int INT_VECTOR_SYS_CALL
    ret

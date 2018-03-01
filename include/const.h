#ifndef _LOGMEOS_CONST_H_
#define _LOGMEOS_CONST_H_
//PUBLIC 代表全局符号
//PRIVATE代表局部符号
#define PUBLIC 
#define PRIVATE static
//count of gdt and idt descriptor
#define GDT_SIZE 128
#define IDT_SIZE 256

/* privilege */
#define PRIVILEGE_KRNL 0
#define PRIVILEGE_TASK 1
#define PRIVILEGE_USER 3
///
/* 8259A interrupt controller ports. */
#define INT_M_CTL 0x20 // I/O port for interrupt controller of Master 8259A
#define INT_M_CTLMASK 0x21 // setting bits for master
#define INT_S_CTL 0xA0 // I/O port for interrupt controller of Slave 8259A

#define INT_S_CTLMASK 0xA1 // setting bits for Slave

#endif

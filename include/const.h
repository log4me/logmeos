#ifndef _LOGMEOS_CONST_H_
#define _LOGMEOS_CONST_H_
//PUBLIC 代表全局符号
//PRIVATE代表局部符号
#define PUBLIC 
#define PRIVATE static
//count of gdt and idt descriptor
#define GDT_SIZE 128
#define IDT_SIZE 256
/*每一个LDT中的描述符个数*/
#define LDT_SIZE 2

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
/* RPL */
#define RPL_KRNL SA_RPL0
#define RPL_TASK SA_RPL1
#define RPL_USER SA_RPL3

//硬件中断
#define NR_IRQ 16

#define CLOCK_IRQ 0
#define KEYBOARD_IRQ 1
#define CASCADE_IRQ 2   /* cascade enable for 2nd AT controller */
#define ETHER_IRQ 3   /* default ethernet interrupt vector */
#define SECONDARY_IRQ 3   /* RS232 interrupt vector for port 2 */
#define RS232_IRQ 4   /* RS232 interrupt vector for port 1 */
#define XT_WINI_IRQ 5   /* xt winchester */
#define FLOPPY_IRQ 6   /* floppy disk */
#define PRINTER_IRQ 7
#define AT_WINI_IRQ 14  /* at winchester */

//系统调用
#define NR_SYS_CALL 1

//8254定时计数器
#define TIMER0 0x40 //8254 计数器0的I/0端口
#define TIMER_MODE 0x43 //8254模式控制寄存器
#define RATE_GENERATOR 0x34 //计数器0采用方波发生器
#define TIMER_FREQ 1193182L //PC&AT的时钟频率
#define HZ 100 //终端频率每s100次即10ms一次

#endif

#ifndef _LOGMEOS_TYPE_H_
#define _LOGMEOS_TYPE_H_
//基本类型的定义
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;

typedef void (*int_handler) ();
typedef void (*task_f) ();
typedef void (*irq_handler) (int irq);
typedef void* system_call;
#endif

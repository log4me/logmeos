#include "proto.h"
#include "const.h"
#include "global.h"
#include "proc.h"
//时钟中断处理函数
PUBLIC void clock_handler(int irq)
{
    ++ ticks;
    p_proc_ready->ticks --;
    if (p_proc_ready >= proc_table + NR_TASKS)
    {
        p_proc_ready = proc_table;
    }
    schedule();
}
//初始化8254每10ms发生一次时钟中断
PUBLIC void init_8254()
{
    out_byte(TIMER_MODE, RATE_GENERATOR);
    out_byte(TIMER0, (u8) (TIMER_FREQ/HZ));
    out_byte(TIMER0, (u8) ((TIMER_FREQ/HZ) >> 8));
}

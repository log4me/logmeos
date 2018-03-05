//proc.c
#include "type.h"
#include "const.h"
#include "proto.h"
#include "global.h"
#include "klib.h"
PUBLIC void schedule()
{
    //采用动态优先级调度算法，每一个周期调度当前优先级最高的进程
    //抢占式动态优先级调度算法
    int greatest_ticks = 0;//当前优先级最高的进程
    while(greatest_ticks == 0)
    {
        //寻找当前优先级最高的进程
        for(int i = 0; i < NR_TASKS; ++ i)
        {
            if(proc_table[i].ticks > greatest_ticks)
            {
                greatest_ticks = proc_table[i].ticks;
                p_proc_ready = &proc_table[i];
            }
        }
        if(greatest_ticks == 0)
        {
            //所有进程优先级均为0,则恢复初始优先级
            for(int i = 0; i < NR_TASKS; ++ i)
            {
                proc_table[i].ticks = proc_table[i].priority;
            }
        }
    }
}
//系统调用sys_get_ticks
PUBLIC int sys_get_ticks()
{
    return ticks;
}
void TestA()
{
    while(1){
        disp_color_str("A", BRIGHT | MAKE_COLOR(BLACK, RED));
        delay(100);
    }   
}
void TestB()
{
    int i = 0x10;
    while(1){
        disp_color_str("B", BRIGHT | MAKE_COLOR(BLACK, RED));
        delay(100);
    }   
}
void TestC()
{
    int i = 0x10;
    while(1){
        disp_color_str("C", BRIGHT | MAKE_COLOR(BLACK, RED));
        delay(100);
    }   
}

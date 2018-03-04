//proc.c
#include "type.h"
#include "const.h"
#include "proto.h"
#include "global.h"
#include "klib.h"

//系统调用sys_get_ticks
PUBLIC int sys_get_ticks()
{
    return ticks;
}
void TestA()
{
    while(1){
        disp_str("A");
        disp_int(get_ticks());
        //disp_str(".");
        delay(10);
    }   
}
void TestB()
{
    int i = 0x10;
    while(1){
        disp_str("B");
        //disp_int(i++);
        //disp_str(".");
        delay(10);
    }   
}
void TestC()
{
    int i = 0x10;
    while(1){
        disp_str("C");
        //disp_int(i++);
        //disp_str(".");
        delay(10);
    }   
}

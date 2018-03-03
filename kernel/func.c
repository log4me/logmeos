#include "proto.h"
#include "klib.h"
void TestA()
{
    int i = 0;
    while(1){
        disp_str("A");
        //disp_int(i++);
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

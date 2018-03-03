#include "type.h"
#include "proc.h"
#include "protect.h"
#include "proto.h"
PUBLIC PCB proc_table[NR_TASKS];//PCB table
PUBLIC char task_stack[STACK_SIZE_TOTAL];
PUBLIC TSS tss;
PUBLIC u32 k_reenter;//中断重入次数
PUBLIC TASK task_table[NR_TASKS] = {
                    {TestA, STACK_SIZE_TESTA, "TestA"},
                    {TestB, STACK_SIZE_TESTB, "TestB"},
                    {TestC, STACK_SIZE_TESTC, "TestC"}
            };

                    

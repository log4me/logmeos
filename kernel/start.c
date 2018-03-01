#include "type.h"
#include "const.h"
#include "protect.h"
#include "string.h"
#include "proto.h"
#include "global.h"
//move gdt from loader to kernel
PUBLIC void move_gdt_to_kernel()
{
    u32 *p_gdt_base = (u32*)(&gdt_ptr[2]);
    u16 *p_gdt_limit = (u16*)(&gdt_ptr[0]);
    memcpy((void*)&gdt, (void*)(*p_gdt_base), (u32)(*p_gdt_limit) + 1);
    *p_gdt_base = (u32)gdt;
    *p_gdt_limit = (u16)(sizeof(DESCRIPTOR) * GDT_SIZE - 1); 
}
PUBLIC void show_info()
{
    disp_str("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nwelcome to logme os!!\n");
}
//setup idt
PUBLIC void setup_idt()
{
    u32 *p_idt_base = (u32*)(&idt_ptr[2]);
    u16 *p_idt_limit = (u16*)(&idt_ptr[0]);
    *p_idt_limit = IDT_SIZE * sizeof(GATE) - 1;
    *p_idt_base = (u32)&idt;
}
PUBLIC void cstart()
{
    move_gdt_to_kernel();
    setup_idt();
    init_protect();
}

#include "type.h"
#include "const.h"
#include "protect.h"
#include "string.h"
PUBLIC void* memcpy(void *pDst, void *pSrc, u32 iSize);
void disp_str(const char *);
PUBLIC u8 gdt_ptr[6];//0~1:gdt limit 2~5:gdt base
PUBLIC DESCRIPTOR gdt[GDT_SIZE];//gdt address in kernel
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
    disp_str("welcome to logme os!!\n");
    for(int i = 0; i < 24 * 80; ++ i)
    {
        disp_str(" ");
    }
}

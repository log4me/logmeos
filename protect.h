#ifndef _LOGMEOS_PROTECT_H_
#define _LOGMEOS_PROTECT_H_

#include "type.h"
    //GDT & LDT descriptor

typedef struct s_descriptor
{
    u16    limit_low; //limit
    u16    base_low;  //Base:0 ~ 15
    u8     base_mid;  //Base:16 ~ 31
    u8     attr1;     //P(1) DPL(2) DT(1) TYPE(4)
    u8     limit_high_attr2; //G(1) D(1) O(1) AVL(1) Limit:16 ~20
    u8     base_high; //Base
} DESCRIPTOR;

#endif

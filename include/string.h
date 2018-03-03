#ifndef _LOGMEOS_STRING_H_
#define _LOGMEOS_STRING_H_
#include "type.h"
#include "const.h"
PUBLIC void* __attribute__((__cdecl__)) memcpy(void *p_dst, void *p_src, u32 n_size);
PUBLIC void* memset(void *p_dst, char ch, int size);
#endif
PUBLIC char *strcpy(char *p_dst, char *p_src);

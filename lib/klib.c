#include "type.h"
#include "const.h"
#include "proto.h"


/**
* @desc : transform a integer to string
* @param str: begin of buf,assume that buf is enough big
* @param num: number to transform
* @ret: result
*/
PUBLIC char *itoa(char *str, int num)
{
    
    char *p = str;
    char ch; 
    int i;
    int flag = 0;

    *p++ = '0';
    *p++ = 'x';

    if(num == 0){ 
        *p++ = '0';
    }   
    else{   
        for(i=28;i>=0;i-=4){
            ch = (num >> i) & 0xF;
            if(flag || (ch > 0)){
                flag = 1;
                ch += '0';
                if(ch > '9'){
                    ch += 7;
                }   
                *p++ = ch; 
            }   
        }   
    }   

    *p = 0;

    return str;
}

/**
* @desc:disp_int
*/
PUBLIC void disp_int(int num)
{
    char buf[20];
    itoa(buf, num);
    disp_str(buf);
}

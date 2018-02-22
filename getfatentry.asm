; FUNCTION GetFATEntry
;@desc :获取ax所代表扇区的Fat条目
;@param ax:原扇区
;@ret   ax:对应的fat条目
GetFATEntry:
    push bp
    mov bp, sp
    push bx
    ;计算ax算对应的fat项的偏移,ax中保存偏移，如果dx中(余数)
    ;为0则对应的值为偏移对应的字节，否则为偏移处后半字节和
    ;下一字节前半字节的组合
    mov bx, 12
    mul bx      ;dx:ax <= ax * 8
    mov bx, 8   ;
    div bx      ; dx = dx:ax % 8, ax = dx:ax / 8
    ;计算目的Fat项所在的扇区
    test dx, dx
    jz LABEL_EVEN
LABEL_ODD:
    ;奇数 ax <= 后半字节:下一个前半字节 
LABEL_EVEN: 
LABEL_GETFATENTRY_END:    
    
; FUNCTION GetFATEntry END

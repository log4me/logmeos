
;                              klib.asm
; kernel lib function
;import global variable
extern disp_pos

; 导出函数
global	disp_str
global disp_color_str
global out_byte
global in_byte

;==============================
; void disp_color_str(char *str, int text_color)
;===============================
disp_color_str:
    push ebp
    mov ebp, esp

    push esi
    push edi
    push edx
    push ebx

    mov esi, [ebp + 8]
    mov edi, [disp_pos]
    mov ah, [ebp + 12]
.1:
    lodsb
    test al, al
    jz .2                  ;end of str
    cmp al, 0Ah            ;is CR?
    jnz .3
    ;is cr
    push eax
    mov eax, edi
    cwd
	mov	bx, 160
	div	bx

    and eax, 0FFh
    inc eax
    mov bl, 160
    mul bl
    mov edi, eax
    pop eax
    jmp .1
.3:
    mov [gs:edi], ax
    add edi, 2
    jmp .1
.2:
    mov [disp_pos], edi
    pop ebx
    pop edx 
    pop edi
    pop esi
    pop ebp
    ret

    
; ========================================================================
;                  void disp_str(char * info);
; ========================================================================
disp_str:
	push	ebp
	mov	ebp, esp

	mov	esi, [ebp + 8]	; pszInfo
	mov	edi, [disp_pos]
	mov	ah, 0Fh
.1:
	lodsb
	test	al, al
	jz	.2
	cmp	al, 0Ah	; 是回车吗?
	jnz	.3
	push	eax
	mov	eax, edi

    cwd
	mov	bx, 160
    
	div	bx

	and	eax, 0FFh
	inc	eax
	mov	bl, 160
	mul	bl
	mov	edi, eax
	pop	eax
	jmp	.1
.3:
	mov	[gs:edi], ax
	add	edi, 2
	jmp	.1

.2:
	mov	[disp_pos], edi

	pop	ebp
	ret

;void out_byte(u16 port, u8 value)
out_byte:
    push ebp
    mov ebp, esp
    mov edx, [ebp + 8];port
    mov al, [ebp + 12];value
    out dx, al
    nop
    nop
    mov esp, ebp
    pop ebp
    ret
;u8 in_byte(u16 port)
in_byte:
    push ebp
    mov ebp, esp
    push edx
    mov edx, [ebp + 8];port
    in al, dx;
    pop edx
    nop
    mov esp, ebp
    pop ebp
    ret
    

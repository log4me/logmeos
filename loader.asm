
org  0100h

    jmp LABEL_START
; 下面是 FAT12 磁盘的头, 之所以包含它是因为下面用到了磁盘的一些信息
%include	"fat12hdr.inc"
%include    "load.inc"
%include    "pm.inc"

;GDT
LABEL_GDT:         Descriptor 0,        0,      0       ;NULL描述符
LABEL_DESC_FLAT_C  Descriptor 0,  0fffffh, DA_CR | DA_32 | DA_LIMIT_4K  ;0 - 4G代码段
LABEL_DESC_FLAT_RW Descriptor 0,  0fffffh, DA_DRW | DA_32 | DA_LIMIT_4K ;0 - 4G可读写数据段
LABEL_DESC_VIDEO   Descriptor 0B8000h,   0ffffh, DA_DRW | DA_32 | DA_DPL3 ;显存数据段

GdtLen equ $ - LABEL_GDT
GdtPtr dw  GdtLen - 1                       ;GDT界限
       dd  BaseOfLoaderPhyAddr + LABEL_GDT  ;GDT基址

; GDT选择子
SelectorFlatC   equ LABEL_DESC_FLAT_C  - LABEL_GDT
SelectorFlatRW  equ LABEL_DESC_FLAT_RW - LABEL_GDT
SelectorVideo   equ LABEL_DESC_VIDEO   - LABEL_GDT + SA_RPL3 

BaseOfStack equ 0100h
;PageDirBase equ 100000h ;也目录开始地址1M
;PageTblBase equ 101000h ;页表开始地址 1M + 4K

LABEL_START:			; <--- 从这里开始 *************
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, BaseOfStack

	mov	dh, 0			; "Loading  "
	call	DispStrRealMode			; 显示字符串
    
    ;获取内存大小，使用int 15h
    mov ebx, 0              ; ebx = 索引
    mov di, _MemChkBuf      ; es:di指向一个地址范围描述符结构(ARDS)
.MemChkLoop:
    mov eax, 0E820h         ;eax  = 0000E820h代表获取内存信息
    mov ecx, 20             ;ecx = sizeof(ARDS)
    mov edx, 0534D4150h      ;edx = 'SMAP'
    int 15h
    jc .MemChkFail          ;CF = 1代表获取信息错误
    add di, 20              ;下一个区域
    inc dword [_dwMCRNumber];dwMCRNumber代表内存区域的个数
    cmp ebx, 0 ;ebx为零代表当前描述符为最后一个
    jne .MemChkLoop
    jmp .MemChkOK
.MemChkFail:
    mov dword [_dwMCRNumber], 0
.MemChkOK:
    ;获取内存成功
    

	; 下面在 A 盘的根目录寻找 KERNEL.BIN
	mov	word [wSectorNo], SectorNoOfRootDirectory	
	xor	ah, ah	; `.
	xor	dl, dl	;  | 软驱复位
	int	13h	; /
LABEL_SEARCH_IN_ROOT_DIR_BEGIN:
	cmp	word [wRootDirSizeForLoop], 0	; `.
	jz	LABEL_NO_KERNELBIN		;  | 判断根目录区是不是已经读完,
	dec	word [wRootDirSizeForLoop]	; /  读完表示没有找到 KERNEL.BIN
	mov	ax, BaseOfKernelFile
	mov	es, ax			; es <- BaseOfKernelFile
	mov	bx, OffsetOfKernelFile	; bx <- OffsetOfKernelFile
	mov	ax, [wSectorNo]		; ax <- Root Directory 中的某 Sector 号
	mov	cl, 1
	call	ReadSector

	mov	si, KernelFileName	; ds:si -> "KERNEL  BIN"
	mov	di, OffsetOfKernelFile
	cld
	mov	dx, 10h
LABEL_SEARCH_FOR_KERNELBIN:
	cmp	dx, 0				  ; `.
	jz	LABEL_GOTO_NEXT_SECTOR_IN_ROOT_DIR;  | 循环次数控制, 如果已经读完
	dec	dx				  ; /  了一个 Sector, 就跳到下一个
	mov	cx, 11
LABEL_CMP_FILENAME:
	cmp	cx, 0			; `.
	jz	LABEL_FILENAME_FOUND	;  | 循环次数控制, 如果比较了 11 个字符都
	dec	cx			; /  相等, 表示找到
	lodsb				; ds:si -> al
	cmp	al, byte [es:di]	; if al == es:di
	jz	LABEL_GO_ON
	jmp	LABEL_DIFFERENT
LABEL_GO_ON:
	inc	di
	jmp	LABEL_CMP_FILENAME	;	继续循环

LABEL_DIFFERENT:
	and	di, 0FFE0h		; else`. 让 di 是 20h 的倍数
	add	di, 20h			;      |
	mov	si, KernelFileName	;      | di += 20h  下一个目录条目
	jmp	LABEL_SEARCH_FOR_KERNELBIN;   /

LABEL_GOTO_NEXT_SECTOR_IN_ROOT_DIR:
	add	word [wSectorNo], 1
	jmp	LABEL_SEARCH_IN_ROOT_DIR_BEGIN

LABEL_NO_KERNELBIN:
	mov	dh, 2			; "No KERNEL."
	call	DispStrRealMode		; 显示字符串
%ifdef	_LOADER_DEBUG_
	mov	ax, 4c00h		; `.
	int	21h			; / 没有找到 KERNEL.BIN, 回到 DOS
%else
	jmp	$			; 没有找到 KERNEL.BIN, 死循环在这里
%endif

LABEL_FILENAME_FOUND:			; 找到 KERNEL.BIN 后便来到这里继续
	mov	ax, RootDirSectors
	and	di, 0FFF0h		; di -> 当前条目的开始

	push	eax
	mov	eax, [es : di + 01Ch]		; `.
	mov	dword [dwKernelSize], eax	; / 保存 KERNEL.BIN 文件大小
	pop	eax

	add	di, 01Ah		; di -> 首 Sector
	mov	cx, word [es:di]
	push	cx			; 保存此 Sector 在 FAT 中的序号
	add	cx, ax
	add	cx, DeltaSectorNo	; cl <- KERNEL.BIN 的起始扇区号(0-based)
	mov	ax, BaseOfKernelFile
	mov	es, ax			; es <- BaseOfKernelFile
	mov	bx, OffsetOfKernelFile	; bx <- OffsetOfKernelFile
	mov	ax, cx			; ax <- Sector 号

LABEL_GOON_LOADING_FILE:
	push	ax			; `.
	push	bx			;  |
	mov	ah, 0Eh			;  | 每读一个扇区就在 "Loading  " 后面
	mov	al, '.'			;  | 打一个点, 形成这样的效果:
	mov	bl, 0Fh			;  | Loading ......
	int	10h			;  |
	pop	bx			;  |
	pop	ax			; /

	mov	cl, 1
	call	ReadSector
	pop	ax			; 取出此 Sector 在 FAT 中的序号
	call	GetFATEntry
	cmp	ax, 0FFFh
	jz	LABEL_FILE_LOADED
	push	ax			; 保存 Sector 在 FAT 中的序号
	mov	dx, RootDirSectors
	add	ax, dx
	add	ax, DeltaSectorNo
	add	bx, [BPB_BytsPerSec]
	jmp	LABEL_GOON_LOADING_FILE
LABEL_FILE_LOADED:

	call	KillMotor		; 关闭软驱马达

	mov	dh, 1			; "Ready."
	call	DispStrRealMode			; 显示字符串
    
    ;跳入保护模式
    
    ;加载gdtr
    lgdt [GdtPtr]
    ;关中断
    cli
    ;打开A20
    in al, 92h
    or al, 00000010b
    out 92h, al
    
    ;切换到保护模式
    ;cr0的最后一位代表PE
    mov eax, cr0
    or eax, 1
    mov cr0, eax 
    
    ;跳到保护模式32位代码段执行
    jmp dword SelectorFlatC:(BaseOfLoaderPhyAddr + LABEL_PM_START)


;============================================================================
;变量
;----------------------------------------------------------------------------
wRootDirSizeForLoop	dw	RootDirSectors	; Root Directory 占用的扇区数
wSectorNo		dw	0		; 要读取的扇区号
bOdd			db	0		; 奇数还是偶数
dwKernelSize		dd	0		; KERNEL.BIN 文件大小

;============================================================================
;字符串
;----------------------------------------------------------------------------
KernelFileName		db	"KERNEL  BIN", 0	; KERNEL.BIN 之文件名
; 为简化代码, 下面每个字符串的长度均为 MessageLength
MessageLength		equ	9
LoadMessage:		db	"Loading  "
Message1		db	"Ready.   "
Message2		db	"No KERNEL"
;============================================================================

;----------------------------------------------------------------------------
; 函数名: DispStrRealMode
;----------------------------------------------------------------------------
; 作用:
;	显示一个字符串, 函数开始时 dh 中应该是字符串序号(0-based)
DispStrRealMode:
	mov	ax, MessageLength
	mul	dh
	add	ax, LoadMessage
	mov	bp, ax			; ┓
	mov	ax, ds			; ┣ ES:BP = 串地址
	mov	es, ax			; ┛
	mov	cx, MessageLength	; CX = 串长度
	mov	ax, 01301h		; AH = 13,  AL = 01h
	mov	bx, 0007h		; 页号为0(BH = 0) 黑底白字(BL = 07h)
	mov	dl, 0
	add	dh, 3			; 从第 3 行往下显示
	int	10h			; int 10h
	ret
;----------------------------------------------------------------------------
; 函数名: ReadSector
;----------------------------------------------------------------------------
; 作用:
;	从序号(Directory Entry 中的 Sector 号)为 ax 的的 Sector 开始, 将 cl 个 Sector 读入 es:bx 中
ReadSector:
	; -----------------------------------------------------------------------
	; 怎样由扇区号求扇区在磁盘中的位置 (扇区号 -> 柱面号, 起始扇区, 磁头号)
	; -----------------------------------------------------------------------
	; 设扇区号为 x
	;                           ┌ 柱面号 = y >> 1
	;       x           ┌ 商 y ┤
	; -------------- => ┤      └ 磁头号 = y & 1
	;  每磁道扇区数     │
	;                   └ 余 z => 起始扇区号 = z + 1
	push	bp
	mov	bp, sp
	sub	esp, 2			; 辟出两个字节的堆栈区域保存要读的扇区数: byte [bp-2]

	mov	byte [bp-2], cl
	push	bx			; 保存 bx
	mov	bl, [BPB_SecPerTrk]	; bl: 除数
	div	bl			; y 在 al 中, z 在 ah 中
	inc	ah			; z ++
	mov	cl, ah			; cl <- 起始扇区号
	mov	dh, al			; dh <- y
	shr	al, 1			; y >> 1 (其实是 y/BPB_NumHeads, 这里BPB_NumHeads=2)
	mov	ch, al			; ch <- 柱面号
	and	dh, 1			; dh & 1 = 磁头号
	pop	bx			; 恢复 bx
	; 至此, "柱面号, 起始扇区, 磁头号" 全部得到 ^^^^^^^^^^^^^^^^^^^^^^^^
	mov	dl, [BS_DrvNum]		; 驱动器号 (0 表示 A 盘)
.GoOnReading:
	mov	ah, 2			; 读
	mov	al, byte [bp-2]		; 读 al 个扇区
	int	13h
	jc	.GoOnReading		; 如果读取错误 CF 会被置为 1, 这时就不停地读, 直到正确为止

	add	esp, 2
	pop	bp

	ret

;----------------------------------------------------------------------------
; 函数名: GetFATEntry
;----------------------------------------------------------------------------
; 作用:
;	找到序号为 ax 的 Sector 在 FAT 中的条目, 结果放在 ax 中
;	需要注意的是, 中间需要读 FAT 的扇区到 es:bx 处, 所以函数一开始保存了 es 和 bx
GetFATEntry:
	push	es
	push	bx
	push	ax
	mov	ax, BaseOfKernelFile	; ┓
	sub	ax, 01000h		; ┣ 在 BaseOfKernelFile 后面留出 4K 空间用于存放 FAT
	mov	es, ax			; ┛
	pop	ax
	mov	byte [bOdd], 0
	mov	bx, 3
	mul	bx			; dx:ax = ax * 3
	mov	bx, 2
	div	bx			; dx:ax / 2  ==>  ax <- 商, dx <- 余数
	cmp	dx, 0
	jz	LABEL_EVEN
	mov	byte [bOdd], 1
LABEL_EVEN:;偶数
	xor	dx, dx			; 现在 ax 中是 FATEntry 在 FAT 中的偏移量. 下面来计算 FATEntry 在哪个扇区中(FAT占用不止一个扇区)
	mov	bx, [BPB_BytsPerSec]
	div	bx			; dx:ax / BPB_BytsPerSec  ==>	ax <- 商   (FATEntry 所在的扇区相对于 FAT 来说的扇区号)
					;				dx <- 余数 (FATEntry 在扇区内的偏移)。
	push	dx
	mov	bx, 0			; bx <- 0	于是, es:bx = (BaseOfKernelFile - 100):00 = (BaseOfKernelFile - 100) * 10h
	add	ax, SectorNoOfFAT1	; 此句执行之后的 ax 就是 FATEntry 所在的扇区号
	mov	cl, 2
	call	ReadSector		; 读取 FATEntry 所在的扇区, 一次读两个, 避免在边界发生错误, 因为一个 FATEntry 可能跨越两个扇区
	pop	dx
	add	bx, dx
	mov	ax, [es:bx]
	cmp	byte [bOdd], 1
	jnz	LABEL_EVEN_2
	shr	ax, 4
LABEL_EVEN_2:
	and	ax, 0FFFh

LABEL_GET_FAT_ENRY_OK:

	pop	bx
	pop	es
	ret
;----------------------------------------------------------------------------


;----------------------------------------------------------------------------
; 函数名: KillMotor
;----------------------------------------------------------------------------
; 作用:
;	关闭软驱马达
KillMotor:
	push	dx
	mov	dx, 03F2h
	mov	al, 0
	out	dx, al
	pop	dx
	ret
;----------------------------------------------------------------------------
; 32位代码段，在保护模式下执行
[SECTION .s32]

ALIGN 32

[BITS 32]

LABEL_PM_START:
    ;初始化显存段
    mov ax, SelectorVideo
    mov gs, ax
    
    ;初始化数据段和堆栈段
    mov ax, SelectorFlatRW
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov ss, ax
    mov esp, TopOfStack
    
    push szMemChkTitle
    call DispStr
    add esp, 4
    call DispMemInfo
    call SetupPaging
    
    mov ah, 0Fh
    mov al, 'P'
    mov [gs:((80 * 0 + 39) * 2)], ax

    ;初始化内核
    call InitKernel
    
    ;进入内核
    jmp SelectorFlatC:KernelEntryPointPhyAddr

%include "lib.inc"

;显示内存信息
;显示在实模式下获取的内存信息
DispMemInfo:
    push ebp
    mov ebp, esp

    push esi
    push edi
    push ecx

    mov esi, MemChkBuf
    mov ecx, [dwMCRNumber]
    
.loop:
    mov edx, 5
    mov edi, ARDStruct
.1:
    push dword [esi]

    call DispInt

    pop eax
    stosd
    add esi, 4
    dec edx
    cmp edx, 0
    jnz .1
    call DispReturn 
    cmp dword [dwType], 1
    jne .2
    mov eax, [dwBaseAddrLow]
    add eax, [dwLengthLow]
    cmp eax, [dwMemSize]
    jb .2
    mov [dwMemSize], eax

.2:
    loop .loop

    call DispReturn
    push szRAMSize
    call DispStr
    add esp, 4

    push dword [dwMemSize]
    call DispInt
    add esp, 4

    pop ecx
    pop edi
    pop esi 

    mov esp, ebp
    pop ebp
    ret
;----------
;启动分页
SetupPaging:
    ;根据内存大小计算PDE数目和页表数目
    push ebp
    mov ebp, esp
    
    push ebx
    push edx
    push edi
    push es

    mov eax, [dwMemSize]
    mov ebx, 400000h        ;400000h = 4M = 4k * 1024,一个PDE对应的内存大小
    div ebx                 ;eax : PDE的数目
    mov ecx, eax            ;
    test edx, edx           ;处理不足一个PDE的内存
    setnz dl
    and edx, 01h
    add ecx, edx
    push ecx                ;暂存PDE个数

    ; 线性地址 = 物理地址
    ;初始化PDE
    mov ax, SelectorFlatRW
    mov es, ax
    mov edi, PageDirBase
    xor eax, eax
    mov eax, PageTblBase | PG_P | PG_USU | PG_RWW
.SetupPaging@1:     
    stosd
    add eax, 4096
    loop .SetupPaging@1     
    ;初始化页表
    
    pop eax
    mov ebx, 1024
    mul ebx                 ;计算页表数目
    mov ecx, eax
    mov edi, PageTblBase
    xor eax, eax
    mov eax, PG_P | PG_USU | PG_RWW
.SetupPaging@2:
    stosd
    add eax, 4096
    loop .SetupPaging@2
    ;启动分页 
    mov eax, PageDirBase
    mov cr3, eax
    mov eax, cr0
    or eax, 80000000h
    jmp short .SetupPaging@3
.SetupPaging@3:
    nop

    pop es
    pop edi
    pop edx
    pop ebx

    mov esp, ebp 
    pop ebp
    ret 
    
;初始化内核
;把Kernel中的program Header中的信息拷贝到相应的内存
InitKernel:
    xor esi, esi
    mov cx, word [BaseOfKernelFilePhyAddr + 2Ch]; 2Ch = 44,ecx <= ELFHdr->e_phnum
    movzx ecx, cx
    mov esi, [BaseOfKernelFilePhyAddr + 1Ch]    ; 1Ch = 28, esi <= ELFHdr->e_phoff 
    add esi, BaseOfKernelFilePhyAddr                ;esi <= elf program header在内存中的位置
.Begin:
    mov eax, [esi]                      ;eax <= ELFPhdr->p_type
    cmp eax, 0                          ;类型为0代表PT_NULL
    jz .NoAction
    push dword [esi + 010h]             ;ELFPhdr->p_filesz压栈
    mov eax, [esi + 04h]                ;eax <= ELFPhdr->p_offset
    add eax, BaseOfKernelFilePhyAddr    ;eax <= Segment在内存中的位置
    push eax
    push dword [esi + 08h]              ;ELFPhdr->p_vaddr
    call MemCpy             ;memcpy(void *dst, void *src, int len) 
    add esp, 12
.NoAction
    add esi, 020h                       ;esi指向下一个Program Header
    dec ecx
    jnz .Begin
    ret
    


;数据段
[SECTION .data1]

ALIGN   32

LABEL_DATA:
;实模式下使用
_szMemChkTitle: db "BaseAddrL BaseAddrH LengthLow LengthHigh Type", 0Ah, 0
_szRAMSize: db "RAM size:", 0
_szReturn: db 0ah, 0
;全局变量
_dwMCRNumber: dd 0  ;内存检查结果
_dwDispPos: dd (80 * 6 + 0) * 2 ;第6行，0列
_dwMemSize: dd 0
_ARDStruct: ;地址范围描述符
    _dwBaseAddrLow:   dd  0
    _dwBaseAddrHigh:  dd  0
    _dwLengthLow:     dd  0
    _dwLengthHigh:    dd  0
    _dwType:          dd  0
    _MemChkBuf:times 256 db 0 
;保护模式下使用
szMemChkTitle   equ  BaseOfLoaderPhyAddr + _szMemChkTitle
szRAMSize       equ  BaseOfLoaderPhyAddr + _szRAMSize
szReturn        equ  BaseOfLoaderPhyAddr + _szReturn
dwDispPos       equ  BaseOfLoaderPhyAddr + _dwDispPos
dwMemSize       equ  BaseOfLoaderPhyAddr + _dwMemSize
dwMCRNumber     equ  BaseOfLoaderPhyAddr + _dwMCRNumber
ARDStruct   equ  BaseOfLoaderPhyAddr + _ARDStruct
    dwBaseAddrLow       equ  BaseOfLoaderPhyAddr + _dwBaseAddrLow
    dwBaseAddrHigh      equ  BaseOfLoaderPhyAddr + _dwBaseAddrHigh
    dwLengthLow         equ  BaseOfLoaderPhyAddr + _dwLengthLow
    dwLengthHigh        equ  BaseOfLoaderPhyAddr + _dwLengthHigh
    dwType              equ  BaseOfLoaderPhyAddr + _dwType
MemChkBuf               equ  BaseOfLoaderPhyAddr + _MemChkBuf

[SECTION .stack]

ALIGN 32

StackSpace: times 1000h db 0 ;4kb堆栈
TopOfStack equ BaseOfLoaderPhyAddr + $;栈顶

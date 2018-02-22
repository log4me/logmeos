; FAT12 磁盘头
BS_OEMName	DB 'logme os'	; OEM String, 必须 8 个字节

BPB_BytsPerSec	DW 512		; 每扇区字节数
BPB_SecPerClus	DB 1		; 每簇多扇区数
BPB_RsvdSecCnt	DW 1		; Boot 记录占用扇区数
BPB_NumFATs	DB 2		    ;   FAT 表数目
BPB_RootEntCnt	DW 224		; 根目录文件数最大值
BPB_TotSec16	DW 2 * 18 * 80	; 逻辑扇区总数
BPB_Media	DB 0xF0		    ; 媒体描述符 ?
BPB_FATSz16	DW 9		    ; 每个FAT 表占用扇区数
BPB_SecPerTrk	DW 18		; 每磁道扇区数
BPB_NumHeads	DW 2		; 磁头数(面数)
BPB_HiddSec	DD 0		    ; 隐藏扇区数 ?
BPB_TotSec32	DD 0		; 如果 wTotalSectorCount 则 0 由这个值记录扇区数

BS_DrvNum	DB 0		    ; 中断 13 对应驱动器号
BS_Reserved1	DB 0		; 保留
BS_BootSig	DB 29h		; 扩展引导标记 (29h) ?
BS_VolID	DD 0		; 卷序列号
BS_VolLab	DB 'logme os   '; 卷标, 必须 11 个字节
BS_FileSysType	DB 'FAT12   '	; 文件系统类型, 必须 8个字节  
;------------------------------------------------------------------------


; -------------------------------------------------------------------------
; 基于 FAT12 头的一些常量定义，如果头信息改变，下面的常量可能也要做相应改变
; -------------------------------------------------------------------------
; BPB_FATSz16
FATSz			equ	9       ;Fat表大小

; 根目录占用空间:
; RootDirSectors = ((BPB_RootEntCnt*32)+(BPB_BytsPerSec–1))/BPB_BytsPerSec
; 根目录占用扇区数目，手动计算出
RootDirSectors		equ	14

; Root Directory 的第一个扇区号	= BPB_RsvdSecCnt + (BPB_NumFATs * FATSz)
SectorNoOfRootDirectory	equ	19

; FAT1 的第一个扇区号	= BPB_RsvdSecCnt
SectorNoOfFAT1		equ	1

; DeltaSectorNo = BPB_RsvdSecCnt + (BPB_NumFATs * FATSz) - 2
; 文件的开始Sector号 = DirEntry中的开始Sector号 + 根目录占用Sector数目
;                      + DeltaSectorNo
DeltaSectorNo		equ	17
KERNELSRCS = $(wildcard kernel/*.asm kernel/*.c lib/*.c lib/*.asm)
KERNELOBJS_TMP = $(KERNELSRCS:.asm=.o)
KERNELOBJS = $(KERNELOBJS_TMP:.c=.o)
KERNEL_TARGET = kernel.bin
MBR_TARGET = boot/mbr.bin
LOADER_TARGET = boot/loader.bin
LD = ld
LDFLAGS = -s -melf_i386 -Ttext 0x30400
all: $(KERNEL_TARGET) $(MBR_TARGET) $(LOADER_TARGET)
	
$(KERNEL_TARGET) : $(KERNELSRCS)
	make -C kernel
	make -C lib
	$(LD) $(LDFLAGS) -o $(KERNEL_TARGET) $(KERNELOBJS)

$(MBR_TARGET) $(LOADER_TARGET): 
	make -C boot

clean:
	make clean -C kernel
	make clean -C lib
	make clean -C boot
	-rm -rf $(KERNEL_TARGET) $(MBR_TARGET) $(LOADER_TARGET)

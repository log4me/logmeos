KERNELSRCS = $(wildcard kernel/*.asm kernel/*.c lib/*.c lib/*.asm)
KERNELOBJS_TMP = $(KERNELSRCS:.asm=.o)
KERNELOBJS = $(KERNELOBJS_TMP:.c=.o)
KERNEL_TARGET = kernel.bin
MBR_TARGET = boot/mbr.bin
LOADER_TARGET = boot/loader.bin
LD = ld
LDFLAGS = -s -melf_i386 -Ttext 0x30400
FLOPPY = floppy/
IMG = a.img
all: $(KERNEL_TARGET) $(MBR_TARGET) $(LOADER_TARGET)
	dd if=$(MBR_TARGET) of=$(IMG) bs=512 count=1 conv=notrunc	
	sudo mount -o loop $(IMG) $(FLOPPY)
	sudo cp $(LOADER_TARGET) $(FLOPPY) -v
	sudo cp $(KERNEL_TARGET) $(FLOPPY) -v
	sudo umount $(FLOPPY)
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

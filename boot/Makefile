TARGET = mbr.bin loader.bin
ASM = nasm
ASMFLAGS = -I include/

.PHONY : clean all


all: $(TARGET)

mbr.bin : mbr.asm include/load.inc include/fat12hdr.inc
	$(ASM) $(ASMFLAGS) -o $@ $<

loader.bin : loader.asm include/load.inc include/fat12hdr.inc include/pm.inc
	$(ASM) $(ASMFLAGS) -o $@ $<
clean:
	-rm $(TARGET)

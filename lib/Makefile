ASMSRC = $(wildcard *.asm)
CSRC = $(wildcard ls *.c)
ASMOBJ = $(ASMSRC:.asm=.o)
COBJ = $(CSRC:.c=.o)
TARGETS = kernel.o start.o
ASM = nasm
CC = gcc
LD = ld
ASMFLAGS = -I ../include/ -f elf32
CFLAGS = -I ../include -m32 -c -fno-builtin -fno-stack-protector

.PHONY : clean all
all : $(ASMOBJ) $(COBJ)

$(ASMOBJ) : %.o : %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

$(COBJ) : %.o : %.c
	$(CC) $(CFLAGS) -o $@ $<

clean : 
	-rm -rf *.o

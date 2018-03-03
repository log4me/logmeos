ASMSRC = $(wildcard *.asm)
CSRC = $(wildcard *.c)
ASMOBJ = $(ASMSRC:.asm=.o)
COBJ = $(CSRC:.c=.o)
ASM = nasm
CC = gcc
LD = ld
ASMFLAGS = -I ../include/ -f elf32
CFLAGS = -O0 -I ../include -m32 -c -fno-builtin -fno-stack-protector

.PHONY : clean all
all : $(ASMOBJ) $(COBJ)

$(ASMOBJ) : %.o : %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

$(COBJ) : %.o : %.c
	$(CC) -g $(CFLAGS) -o $@ $<

clean : 
	-rm -rf *.o

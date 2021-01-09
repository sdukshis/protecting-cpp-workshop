ASM = nasm
LD = ld

ASMFLAGS = -f elf -g
LDFLAGS = -m elf_i386

SRC = hello.asm
OBJ = hello.o 
BIN = hello

.PHONY:all clean

all:$(BIN)

$(BIN):$(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

$(OBJ):$(SRC)
	$(ASM) $(ASMFLAGS) -o $@ $<

clean:
	rm $(OBJ)
	rm $(BIN)

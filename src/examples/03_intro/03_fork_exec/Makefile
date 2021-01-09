ASM = nasm
LD = ld

ASMFLAGS = -f elf -g
LDFLAGS = -m elf_i386

SRC = shell.asm
OBJ = shell.o 
BIN = shell

.PHONY:all clean

all:$(BIN)

$(BIN):$(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

$(OBJ):$(SRC)
	$(ASM) $(ASMFLAGS) -o $@ $<

clean:
	rm $(OBJ)
	rm $(BIN)

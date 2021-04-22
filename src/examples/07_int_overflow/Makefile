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

SRC = int_underflow.c
BIN = int_underflow

.PHONY:all clean

all:$(BIN)

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

runex: $(BIN)
	./$(BIN) -1073741810 `perl -e 'print "A"x56'`

clean:
	rm $(BIN)

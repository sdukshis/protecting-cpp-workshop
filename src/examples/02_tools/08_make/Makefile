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

SRC = hello.c
BIN = hello

.PHONY:all clean

all:$(BIN)

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm $(BIN)

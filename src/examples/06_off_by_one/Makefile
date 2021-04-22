# Makefile exaple for building "Hello, world" C program

CC = gcc

CFLAGS = \
-Wall \
-Wextra \
-O0 \
-g \
-fno-omit-frame-pointer \
-fno-stack-protector \
-mpreferred-stack-boundary=2 \
-z execstack \
-z norelro

SRC = offbyone.c
BIN = offbyone

.PHONY:all clean

all:$(BIN)

$(BIN):$(SRC)
	$(CC) $(CFLAGS) -o $@ $^

runex: $(BIN)
	./$(BIN) `perl -e 'print "A"x1024'`

clean:
	rm $(BIN)

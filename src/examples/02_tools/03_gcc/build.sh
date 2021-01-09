#!/bin/sh

set -x

CC=gcc

SRC=hello.c

OUT=hello

#TODO: describe flags
CFLAGS=$(cat <<-END
-Wall
-Wextra
-O0
-g
-fno-omit-frame-pointer
-fno-stack-protector
-z execstack
-z norelro
END
)

$CC $CFLAGS $SRC -o $OUT
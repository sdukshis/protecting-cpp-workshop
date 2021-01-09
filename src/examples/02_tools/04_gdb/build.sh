#!/bin/sh

set -x

CC=gcc

SRC=gcd.c
OUT=gcd

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
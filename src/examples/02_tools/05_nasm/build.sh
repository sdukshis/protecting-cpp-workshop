#!/bin/sh

set -x

ASM=nasm
LD=ld

ASMFLAGS="-f elf -l hello.lst"
LDFLAGS="-m elf_i386"

SRC=hello.asm
OBJ=hello.o
OUT=hello

$ASM $ASMFLAGS -o $OBJ $SRC
$LD $LDFLAGS -o $OUT $OBJ

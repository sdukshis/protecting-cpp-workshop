#!/bin/sh

# prints all program sections
objdump -s Hello

# print only specified sections
objdump -s -j .text hello

#disassemble
onjdump -d -M intel-mnemonic gcd

; "Hello, world!" assembly program 

global _start

section .data
    msg db "Hello, world!", 10
    len equ $-msg

section .text
_start:
    ; write(stdout, msg, len)
    mov eax, 4 ; 4 is a write syscall number
               ; cat /usr/include/i386-linux-gnu/asm/unistd_32.h
    mov ebx, 1 ; 1 - stdout file descriptor number
    mov ecx, msg
    mov edx, len
    int 0x80

    ; exit()
    mov eax, 1 ; 1 is a exit syscall number
    mov ebx, 0
    int 0x80

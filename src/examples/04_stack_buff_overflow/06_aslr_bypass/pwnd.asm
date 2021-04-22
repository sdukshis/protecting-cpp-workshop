BITS 32

global _start

section .data
    msg db "You've been pwnd!", 10
    len equ $-msg

section .text
_start:
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx

; write(1, msg, len)
    mov al, 4
    mov bl, 1
    mov ecx, msg
    mov dl, len
    int 0x80

; exit(0)
    mov al, 1
    xor ebx, ebx
    int 0x80

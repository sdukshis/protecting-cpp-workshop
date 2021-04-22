BITS 32

global _start

section .data
    msg db "You've been pwnd!", 10
    len equ $-msg

section .text
_start:
; write(1, msg, len)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

; exit(0)
    mov eax, 1
    mov ebx, 0
    int 0x80

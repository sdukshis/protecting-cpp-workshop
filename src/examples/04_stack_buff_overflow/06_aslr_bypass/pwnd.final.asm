BITS 32

global _start

section .text
_start:
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx

; write(1, msg, len)
    mov al, 4
    mov bl, 1
; "You've been pwnd!", 10
; 596f 7527 7665 2062 6565 6e20 7077 6e64 210a
    push 0x90900a21
    push 0x646e7770
    push 0x206e6565
    push 0x62206576
    push 0x27756f59
    mov ecx, esp
    mov dl, 18
    int 0x80

; exit(0)
    mov al, 1
    xor ebx, ebx
    int 0x80

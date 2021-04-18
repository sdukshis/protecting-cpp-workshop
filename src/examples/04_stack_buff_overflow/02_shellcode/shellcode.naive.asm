BITS 32

global _start

section .data
    path db "/bin/sh", 0

section .text
_start:
; int execve(const char *filename, char *const argv[], char *const envp[])
    mov eax, 11
    mov ebx, path
    push dword 0
    push path
    mov ecx, esp
    mov edx, 0
    int 0x80

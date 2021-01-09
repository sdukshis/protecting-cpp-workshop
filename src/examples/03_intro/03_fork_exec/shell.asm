; Runs /bin/sh with fork+exec

global _start

section .data
    path db "/bin/sh", 0
    len equ $-path

section .text
_start:
    ; fork()
    mov eax, 2 ; 2 - fork syscall number
    int 0x80

    cmp eax, 0
    ;test eax, eax ; if al == 0
    ; ignore possible -1 error code 
    jne .wait ; parent process

    ; execve(char* filename, char* argv[], char* env[]);
    ; prepare table for 2nd execve argument
    sub esp, 4
    mov [esp], dword 0 ; NULL
    sub esp, 4
    mov [esp], dword path
    
    mov eax, 11; 11 - execve syscall number
    mov ebx, path
    mov ecx, esp
    mov edx, 0
    int 0x80

.wait:
    ; waitpid(childpid, 0, 0)
    mov ebx, eax
    mov eax, 7
    mov ecx, 0
    mov edx, 0
    int 0x80

    ; exit(0)
    mov eax, 1
    mov ebx, 0
    int 0x80
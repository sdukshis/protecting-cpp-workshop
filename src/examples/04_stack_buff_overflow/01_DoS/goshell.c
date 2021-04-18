/* Stack buffer overflow victim program */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

const char* secret = "12345";

void goshell() {
    char* shell = "/bin/sh";
    char* cmd[] = {"/bin/sh", NULL};
    
    execve(shell, cmd, NULL);
}

int authorize() {
    char password[64];

    printf("Password:");
    gets(password);
    if (!strcmp(secret, password)) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    if (authorize()) {
        printf("Login success\n");
        goshell();
    } else {
        printf("Incorrect password\n");
    }
    return 0;
}

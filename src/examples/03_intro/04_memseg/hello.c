/* Classic "Hello, world" C program */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    char *name = (char*)malloc(128); // to create non empty heap section
    printf("Enter name:");
    gets(name);
    printf("Hello, %s\n", name);
    free(name);
    return 0;
}
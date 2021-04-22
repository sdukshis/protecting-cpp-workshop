#include <stdio.h>
#include <string.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
    char buf[20];
    int n = atoi(argv[1]);
    if (n > 5) {
        printf("Buffer overflow attempt detected!\n");
        return 1;
    }
    memcpy(buf, argv[2], n * sizeof(int));
    return 0;
}
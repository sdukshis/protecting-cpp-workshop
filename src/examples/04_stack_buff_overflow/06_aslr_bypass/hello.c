#include <stdio.h>
#include <string.h>

const int BUFF_SIZE = 4096;

void greetings(const char* str) {
    char name[BUFF_SIZE];
    printf("name: %p\n", name);
    strcpy(name, str);
    printf("Hello, %s!\n", name);
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
        greetings(argv[1]);
    }
    printf("finish\n");
    return 0;
}

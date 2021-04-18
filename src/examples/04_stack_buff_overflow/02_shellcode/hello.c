#include <stdio.h>
#include <string.h>

const int BUFF_SIZE = 80;

void greetings(const char* str) {
    char name[BUFF_SIZE];

    strcpy(name, str);
    printf("Hello, %s!\n", name);
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
        greetings(argv[1]);
    }
    return 0;
}

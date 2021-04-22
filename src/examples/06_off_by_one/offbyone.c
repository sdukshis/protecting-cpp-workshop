#include <stdio.h>


// void func(char *str) {
//     int i;
//     char buf[256];
    
//     for (i = 0; i <= sizeof(buf); ++i) {
//         buf[i] = str[i];
//     }
// }

// int main(int argc, char* argv[]) {
//     func(argv[1]);

//     return 0;
// }

void func(char *str) {
    char buff[1024];
    strcpy(buff, str);
}

int main(int argc, char *argv[]) {
    if (strlen(argv[1]) > 1024) {
        printf("Buffer overflow attempt detected!\n");
        return 1;
    }
    func(argv[1]);
    return 0;
}
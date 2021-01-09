/* Computes Greater Common Divisor (GCD) using Euclidean algorithm */

#include <stdio.h>
#include <stdlib.h>

int gcd(int a, int b);

int main(int argc, char* argv[]) {
    if (argc < 3) {
        printf("Usage: %s a b\n", argv[0]);
        return EXIT_FAILURE;
    }
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int g = gcd(a,b);
    printf("gcd(%d, %d) = %d\n", a, b, g);
    return EXIT_SUCCESS;
}

int gcd(int a, int b) {
    int r;
    while (b != 0) {
        r = a % b;
        a = b;
        b = r;
    }
    return a;
}
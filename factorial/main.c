// #include "serial_print.h"
#include "stdio.h"

extern int factorial(int x);

int main(void)
{
    int y = factorial(3);
    printf("test\n");
    printf("Factorial pf: %i\n", y);
    // printf("float test: %f\n", 23.4);

    while(1);
}
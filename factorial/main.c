#include "serial_print.h"

extern int factorial(int x);

void main(void)
{
    int y = factorial(3);
    printf("Factorial pf: %i", y);

    while(1);
}
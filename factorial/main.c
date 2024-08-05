#include "serial_print.h"

extern int factorial(int x);

void main(void)
{
    int y = factorial(3);
    char *start_msg = "Factorial: ";
    char out[10];
    // snprintf(out, 10, "%i", y);

    printf(start_msg);
    out[0] = y + 0x30;
    out[1] = 0;
    printf(out);
    printf("\n");

    while(1);
}
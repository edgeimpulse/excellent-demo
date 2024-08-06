#include "serial_print.h"
// #include "stdio.h"

// sys version
int	 putchar(int);

void _putchar(char character)
{
    putchar(character);
}

void main(void)
{
    printf("test\n");
    printf("float test: %f\n", 23.4);
}
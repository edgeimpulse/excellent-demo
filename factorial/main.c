extern void uart0_print(char* msg);

extern int factorial(int x);

void main(void)
{
    int y = factorial(3);
    char *start_msg = "Factorial: ";
    char out[10];
    // snprintf(out, 10, "%i", y);

    uart0_print(start_msg);
    out[0] = y + 0x30;
    out[1] = 0;
    uart0_print(out);
    uart0_print("\n");

    while(1);
}
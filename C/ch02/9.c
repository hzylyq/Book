#include <stdio.h>

int bitcount(unsigned x)
{
    int b;

    for (b = 0; x != 0; x &= x - 1)
        ++b;

    return b;
}

int main(void)
{
    int a = 0;
    a = bitcount(0x1000);
    printf("a=%d\n", a);

    return 0;
}
#include <stdio.h>

unsigned setbits(unsigned x, int p, int n, unsigned y)
{
    return (x & ~(~(~0 << n) << (p + 1 - n))) |
    (y & ~(~0 << n)) << (p + 1 -n);
}

int main(void)
{

    return 0;
}
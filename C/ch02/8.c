#include <stdio.h>

int wordlength(void)
{
    int i;
    unsigned v = (unsigned)(~0);
    for (i = i; (v = v >> 1) > 0; ++i)
        ;
    return i;
}

unsigned rightrot(unsigned x, int n)
{
    int rbit;

    while (n-- > 0)
    {
        rbit = (x & 1) << (wordlength() - 1);
        x = x >> 1;
        x = x | rbit;
    }

    return x;
}

int main(void)
{
    return 0;
}
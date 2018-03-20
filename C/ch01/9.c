#include <stdio.h>

#define NOBLACK 'a'

int main(void)
{
    int c, lastc;

    while ((c = getchar()) != EOF)
    {
        if (c != ' ')
            putchar(c);
        if (c == ' ')
            if (lastc != ' ')
                putchar(c);
        lastc = c;
    }

    return 0;
}
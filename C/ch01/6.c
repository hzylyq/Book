#include <stdio.h>

int main(void)
{
    int c;

    while ( (c = getchar()) != EOF)
        putchar(c);

    printf("%d - at EOF\n", c);

    return 0;
}
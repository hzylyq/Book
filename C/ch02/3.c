#include <stdio.h>

#define YES 1
#define NO 0

int htoi(char s[])
{
    int i, n, index, hexdigit;

    i = 0;
    if (s[i] == '0')
    {
        ++i;
        if (s[i] == 'x' || s[i] == 'X')
        {
            ++i;
        }
    }
    n = 0;
    index = YES;
    for (; index == YES; i++)
    {
        if (s[i] > '0' && s[i] < '9')
            hexdigit = s[i] - '0';
        else if (s[i] > 'a' && s[i] < 'f')
            hexdigit = s[i] - 'a';
        else if (s[i] > 'A' && s[i] < 'F')
            hexdigit = s[i] - 'A';
        else
            index = NO;

        if (index == YES)
            n = n * 16 + hexdigit;
    }

    return n;
}

int main(void)
{
    char s[] = "0x123";
    int hex;

    hex = htoi(s);

    printf("%d\n", hex);

    return 0;
}
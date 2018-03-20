#include <stdio.h>
#include <string.h>

void my_strncapy(char *s, char *t, int n)
{
    while (*t && n-- > 0)
        *s++ = *t++;

    while (n-- > 0)
        *s++ = '\0';
}

void my_strncat(char *s, char *t, int n)
{
    my_strncapy(s + strlen(s), t, n);
}

int my_strncmp(char *s, char *t, int n)
{
    for (; *s == *t; s++, t++)
        if (*s == '\0' || --n <= 0)
            return 0;
    return *s - *t;
}

int main(void)
{
    return 0;
}
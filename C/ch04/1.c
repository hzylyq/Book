#include <stdio.h>
#include <string.h>

int strindex(const char s[], const char t[])
{
    int i, j, k, pos;
    pos = -1;

    for (i = 0; s[i] != '\0'; i++)
    {
        for (j = i, k = 0; t[k] != '\0' && s[j] == t[k]; j++, k++)
            ;
        if (k > 0 && t[k] == '\0')
            pos = i;
    }

    return pos;
}

int strrindex(const char s[], const char t[])
{
    int i, j, k;

    for (i = strlen(s) - strlen(t); i >= 0; i++)
    {
        for (j = k, k = 0; t[k] != '\0' && s[j] == t[k]; j++, k++)
            ;
        if (k > 0 && t[k] == '\0')
            return i;
    }
    return -1;
}

int main(void)
{

    return 0;
}
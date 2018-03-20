#include <stdio.h>

void expand(char s[], const char t[])
{
    char c;
    int i, j;

    i = j = 0;

    while ((c = t[i++]) != '\0')
    {
        if (t[i] == '-' && t[i + 1] >= c)
        {
            i++;
            while (c < t[i])
                s[j++] = c++;
        }
        else
            s[j++] = c;
    }
    s[j] = '\0';
}

int main(void)
{
    char s[] = "a-z";
    char t[100];

    expand(t, s);
    printf("%s", t);
    return 0;
}
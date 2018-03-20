#include <stdio.h>
#define MAXLINE 1000

int my_getline(char line[], int maxline);
int my_remove(char s[]);

int main(void)
{
    char line[MAXLINE];

    while (my_getline(line, MAXLINE) > 0)
        if (my_remove(line) > 0)
            printf("%s", line);

    return 0;
}

int my_getline(char line[], int maxline)
{
    int c, i, j;

    j = 0;
    for (i = 0; (c = getchar()) != EOF && c != '\n'; ++i)
        if (i < maxline - 2)
        {
            line[j] = c;
            ++j;
        }

    if (c == '\n')
    {
        line[i] = c;
        ++j;
        ++i;
    }
    line[j] = '\0';
    return i;
}

int my_remove(char s[])
{
    int i;
    while (s[i] != '\n')
        ++i;
    --i;
    while (i >= 0 && (s[i] == ' ' || s[i] == '\t'))
        --i;
    if (i >= 0)
    {
        ++i;
        s[i] = '\n';
        ++i;
        s[i] = '\0';
    }

    return i;
}
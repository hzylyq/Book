#include <stdio.h>

#define MAXLINE 1000
#define LONGLINE 80

int my_getline(char line[], int maxline);

int main(void)
{
    int len;
    char line[MAXLINE];

    while ((len = my_getline(line, MAXLINE)) > 0)
        if (len > LONGLINE)
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
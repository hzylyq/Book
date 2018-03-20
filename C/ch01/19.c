#include <stdio.h>

#define MAXLINE 1000

int my_getline(char line[], int maxline);

void my_reverse(char line[]);

int main(void)
{
    char line[MAXLINE];

    while (my_getline(line, MAXLINE) > 0)
    {
        my_reverse(line);
        printf("%s", line);
    }

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

void my_reverse(char s[])
{
    int i, j;
    char temp;

    i = 0;
    while (s[i] != '\0')
        ++i;
    --i;
    if (s[i] == '\n')
        --i;
    j = 0;
    while (j < i)
    {
        temp = s[i];
        s[i] = s[j];
        s[j] = temp;
        --i;
        ++j;
    }
}

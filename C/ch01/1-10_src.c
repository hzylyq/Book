#include <stdio.h>

#define MAXLINE 1000

int max;
char line[MAXLINE];
char longest[MAXLINE];

int my_getline(void);
void my_copy(void);

int main(void)
{
    int len;
    extern int max;
    extern char longest[];

    max = 0;
    while ((len = my_getline()) > 0)
        if (len > max)
        {
            max = len;
            my_copy();
        }
    if (max > 0)
        printf("%s", longest);

    return 0;
}

int my_getline(void)
{
    int c, i;
    extern char line[];

    for (i = 0; i < MAXLINE - 1 && (c = getchar()) != EOF && c != '\n'; ++i)
        line[i] = c;

    if (c == '\n')
    {
        line[i] = c;
        ++i;
    }
    line[i] = '\0';

    return i;
}

void my_copy(void)
{
    int i;
    extern char line[], longest[];

    i = 0;
    while ((longest[i] = line[i]) != '\0')
        ++i;
}

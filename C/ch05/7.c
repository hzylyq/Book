#include <stdio.h>
#include <string.h>

#define MAXLEN 1000
#define MAXSTOR 5000

int my_getline(char *s, int lim)
{
    int c;
    char *t = s;

    while (--lim > 0 && (c = getchar()) != EOF && c != '\n')
        *s++ = c;

    if (c == '\n')
        *s++ = c;

    *s = '\0';

    return s - t;
}

int my_readlines(char *lineptr[], char *linestor, int maxlines)
{
    int len, nlines;
    char line[MAXLEN];
    char *p = linestor;
    char *linestop = linestor + maxlines;

    nlines = 0;

    while ((len = my_getline(line, MAXLEN)) > 0)
    {
        if (nlines >= maxlines || p + len > linestop)
            return -1;
        else
        {
            line[len - 1] = '\0';
            strcpy(p, line);
            lineptr[nlines++] = p;
            p += len;
        }
    }

    return nlines;
}

int main(void)
{
    return 0;
}
#include <stdio.h>
#include <string.h>

#define NUMBERIC 1
#define DECR 2
#define LINES 100

int numcmp(char *, char *);
int readlines(char *lineptr[], int maxlines);
void qsort(char *v[], int left, int right, int *(comp)(void *, void *));
void writelines(char *lineptr[], int nlines, int decr);

static char option = 0;

int main(int argc, char *argv[])
{
    char *lineptr[LINES];
    int nlines;
    int c, rc = 0;

    while ((--argc > 0) && ((*++argv)[0] == '-'))
    {
        while (c = *++argv[0])
            switch (c)
            {
            case 'n':
                option |= NUMBERIC;
                break;
            case 'r':
                option |= DECR;
                break;
            default:
                printf("sort:illegal option %c\n", c);
                argc = 1;
                rc = -1;
                break;
            }
    }

    if (argc)
        printf("Usage:sort -nr\n");
    else 
        if ((nlines = readlines(lineptr, LINES)) > 0)
        {
            if (option & NUMBERIC)
                qsort((void **)lineptr, 0, nlines - 1, (int (*)(void *, void *))numcmp);
            else
                qsort((void **)lineptr, 0, nlines - 1, (int (*)(void *, void *))strcmp);
            writelines(lineptr, nlines, option & DECR);
        }
        else
        {
            printf("input too big to sort\n");
            rc = -1;
        }
        
    return rc;
}

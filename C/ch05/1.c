#include <stdio.h>
#include <ctype.h>

#define BUFFSIZE 100
int bufp = 0;
char buf[BUFFSIZE];

int getch(void)
{
    return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c)
{
    if (bufp > BUFFSIZE)
        printf("ungetch:too mant character\n");
    else
        buf[bufp++] = c;
}

//getint:将输入中的下一个整形数赋值给*pn
int getint(int *pn)
{
    int c, sign;

    while (isspace(c = getch()))
        ;

    //输入不是一个数字
    if (!isdigit(c) && (c != EOF) && (c != '+') && (c != '-'))
    {
        ungetch(c);
        return 0;
    }

    sign = (c == '-') ? -1 : 1;

    if (c == '+' || c == '-')
    {
        if (!isdigit(c = getch()))
        {
            if (c != EOF)
                ungetch(c);
        }
    }        

    for (*pn = 0; isdigit(c); c = getch())
        *pn = 10 * (*pn) + (c - '0');

    *pn *= sign;

    if (c != EOF)
        ungetch(c);
    return c;
}

int main(void)
{
    int pn = 10;
    int c = getint(&pn);
    printf("%d\n", pn);

    return 0;
}
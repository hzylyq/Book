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

//getfloat:将输入中的下一个整形数赋值给*pn
int getfloat(float *pn)
{
    int c, sign;
    float power;

    while (isspace(c = getch()))
        ;

    //输入不是一个数字
    if (!isdigit(c) && (c != EOF) && (c != '+') && (c != '-') && (c != '.'))
    {
        ungetch(c);
        return 0;
    }

    sign = (c == '-') ? -1 : 1;

    if (c == '+' || c == '-')
        c = getch();

    for (*pn = 0.0; isdigit(c); c = getch())
        *pn = 10.0 * (*pn) + (c - '0');

    if (c == '.')
        c = getch();

    for (power = 1.0; isdigit(c); c = getch())
    {
        *pn = 10.0 * (*pn) + (c - '0');
        power *= 10.0;
    }

    *pn *= sign / power;

    if (c != EOF)
        ungetch(c);
    return c;
}

int main(void)
{
    float pn = 10.0;
    int c = getfloat(&pn);
    printf("%f\n", pn);

    return 0;
}
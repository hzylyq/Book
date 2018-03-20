#include <stdio.h>

int main(void)
{
    int c;
    int nb = 0; //   空格
    int ni = 0; //   制表
    int nl = 0; //   换行

    while ((c = getchar()) != EOF)
    {
        if (c == ' ')
            nb++;
        if (c == '\t')
            ni++;
        if (c == '\n')
            nl++;
    }

    printf("%d\t%d\t%d\n", nb, ni, nl);

    return 0;
}
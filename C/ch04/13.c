#include <stdio.h>
#include <string.h>

void reverser(char s[], int i, int len);

void reverse(char s[])
{
    reverser(s, 0 ,strlen(s));
}

void reverser(char s[], int i, int len)
{
    int c, j;
    j = len - (i+1);
    if (i < j)
    {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
        reverser(s, ++i, len);
    }
}

int main(void)
{
    char s[10] = "abcdefghi";
    reverse(s);
    printf("%s", s);

    return 0;
}
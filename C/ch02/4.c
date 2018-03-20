#include <stdio.h>

void squeeze(char s1[], char s2[])
{
    int i, j, k;
    
    for (i = k = 0; s1[i] != '\0'; ++i)
    {
        for (k = 0; s2[k] != '\0' && s1[i] != s2[k]; ++k)
        ;
        if (s2[k] == '\0')
            s1[j++] = s1[i];
    }

    s1[j] = '\0';
}

int main(void)
{
    char s1[] = "abcdefgh";
    char s2[] = "abcd";

    squeeze(s1, s2);

    printf("%s\n", s1);

    return 0;
}
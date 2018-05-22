#include <stdio.h>

int is_little_endian()
{
    int x = 1;

    return *(char *)&x;
}

int main(int argc, char const *argv[])
{
    printf("%d\n", is_little_endian());

    return 0;
}
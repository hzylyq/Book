#include <stdio.h>
#include <string.h>

typedef unsigned char *byte_pointer;

void show_byte(byte_pointer start, size_t len)
{
    size_t i;

    for (i = 0; i < len; i++)
        printf("%.2x", start[i]);
    printf("\n");
}

void show_short(short x)
{
    show_byte((byte_pointer)&x, sizeof(x));
}

void show_long(long x)
{
    show_byte((byte_pointer)&x, sizeof(x));
}

void show_double(double x)
{
    show_byte((byte_pointer)&x, sizeof(x));
}

int main(int argc, char const *argv[])
{
    short x = 0x3222;
    show_short(x);
    show_long((long)x);
    show_double((double)x);

    return 0;
}

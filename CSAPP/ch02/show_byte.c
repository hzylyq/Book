#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_byte(byte_pointer start, size_t len)
{
    size_t i;

    for (i = 0; i < len; i++)
        printf("%.2x", start[i]);
    printf("\n");
}

void show_int(int x)
{
    show_byte((byte_pointer)&x, sizeof(x));
}

void show_float(float x)
{
    show_byte((byte_pointer)&x, sizeof(x));
}

void show_pointer(void *x)
{
    show_byte((byte_pointer)&x, sizeof(void *));
}

void test_show_val(int val)
{
    int ival = val;
    float fval = (float)ival;
    int *pval = &ival;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}

int main(void)
{
    //int x = 0x12345678;
    //test_show_val(x);

    int val = 0x87654321;
    byte_pointer valp = (byte_pointer)&val;
    show_byte(valp, 1);
    show_byte(valp, 2);
    show_byte(valp, 3);


    return 0;
}
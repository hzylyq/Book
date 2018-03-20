#include <stdio.h>
#include <limits.h>

int main(void)
{
    //signed types
    printf("Signed char max = %d\n", SCHAR_MAX);
    printf("Signed char min = %d\n", SCHAR_MIN);
    printf("Signed short min = %d\n", SHRT_MIN);
    printf("Signed short max = %d\n", SHRT_MAX);
    printf("Signed int min = %d\n", INT_MIN);
    printf("Signed int max = %d\n", INT_MAX);
    printf("Signed long max = %ld\n", LONG_MAX);
    printf("Signed long min = %ld\n", LONG_MIN);

    //unsigned types
    printf("unsigned char max = %u\n", UCHAR_MAX);
    printf("unsigned short max = %u\n", USHRT_MAX);
    printf("unsigned int max = %u\n", UINT_MAX);
    printf("unsigned long max = %lu\n", ULONG_MAX);

    return 0;
}
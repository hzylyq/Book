#include <stdio.h>

int main(void)
{
    int fahr;
    int step = 20;

    for (fahr = 300; fahr >= 0; fahr -= step)
    {
        printf("%3d\t%6.1f\n", fahr, (5.0 / 9.0) * (fahr - 32));
    }

    return 0;
}
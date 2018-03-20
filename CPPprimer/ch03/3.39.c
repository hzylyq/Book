#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char const *argv[]) {
    char s1[80], s2[80];

    printf("Please input s1, s2\n");

    scanf("%s", s1);
    scanf("%s", s2);
    printf("\n");

    int i = strcmp(s1, s2);

    switch (i) {
        case 0:
            printf("s1 = s2\n");
            break;
        case 1:
            printf("s1 > s2\n");
            break;
        case -1:
            printf("s1 < s2\n");
            break;
        default:
            printf("unexcept result\n");
            break;
    }

    return 0;
}

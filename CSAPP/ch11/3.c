#include "header.h"

int main(int argc, char const *argv[])
{
    struct in_addr addr;

    int result;

    if (argc != 2)
    {
        fprintf(stderr, "usage：%s <dotted-decimal>""\n", argv[0]);
        exit(0);
    }

    result = inet_pton(AF_INET, argv[1], &addr);

    if (result == 0)
    {
        app_error("inet_pton error : invaild dotted-decimal address");
    }
    else if (result < 0)
    {
        unix_error("inet_pton error");
    }

    printf("%x\n", ntohl(addr.s_addr));

    return 0;
}

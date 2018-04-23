#include <iostream>

using namespace std;

int find_max_square(int length, int width)
{
    if (length % width == 0)
        return width;
    else
        find_max_square(width, length % width);
}

int main(void)
{
    cout << find_max_square(1680, 640) << endl;

    return 0;
}
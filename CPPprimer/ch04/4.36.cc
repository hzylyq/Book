#include <iostream>

using namespace std;

int main(void)
{
    double i = 10.0;
    double d = 1.2356;

    i *= d;
    cout << i <<endl;

    i *= static_cast<int>(d);
    cout << i << endl;

    return 0;
}

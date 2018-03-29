#include <iostream>

using namespace std;

int main(void)
{
    int a, b;
    cin >> a >> b;

    auto sum = [a](int b){ return a + b; };

    cout << sum(b) << endl;

    return 0;
}
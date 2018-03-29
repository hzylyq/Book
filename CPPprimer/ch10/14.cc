#include <iostream>

int main(void)
{
    int a, b;
    std::cin >> a >> b;

    auto sum = [](int a, int b) { return a + b; };

    std::cout << sum(a, b) << std::endl;

    return 0;
}
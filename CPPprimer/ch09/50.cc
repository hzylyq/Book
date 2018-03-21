#include <iostream>
#include <vector>
#include <string>

int main(void)
{
    std::vector<std::string> s = {"123", "+456", "-123"};

    int sum = 0;

    for (auto it : s)
        sum += stoi(it);

    std::cout << sum << std::endl;

    std::vector<std::string> s2 = {"12.3", "-4.56", "+7.9e-2"};
    float sum2 = 0;

    for (auto it : s2)
        sum2 += stof(it);

    std::cout << sum2 << std::endl;

    return 0;
}
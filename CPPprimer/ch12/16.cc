#include <iostream>
#include <memory>

int main(void)
{
    std::unique_ptr<int> p1(new int(42));
    std::unique_ptr<int> p2;
    p2 = p1;

    return 0;
}
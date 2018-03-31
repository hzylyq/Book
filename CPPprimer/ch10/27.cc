#include <iostream>
#include <vector>
#include <list>
#include <algorithm>

int main(void)
{
    std::vector<int> vi = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    std::list<int> li1, li2, li3;

    std::unique_copy(vi.begin(), vi.end(), std::inserter(li1, li1.begin()));
    for (auto v : li1)
        std::cout << v << " ";
    std::cout << std::endl;

    std::unique_copy(vi.begin(), vi.end(), std::back_inserter(li2));
    for (auto v : li2)
        std::cout << v << " ";
    std::cout << std::endl;

    std::unique_copy(vi.begin(), vi.end(), std::front_inserter(li3));
    for (auto v : li3)
        std::cout << v << " ";
    std::cout << std::endl;

    return 0;
}
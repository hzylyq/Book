#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>
#include <iterator>
#include "Sales_item.h"

int main(void)
{
    std::vector<Sales_item> vsd;
    std::istream_iterator<Sales_item> in_iter(std::cin);
    std::istream_iterator<Sales_item> eof;

    while (in_iter != eof)
        vsd.push_back(*in_iter++);

    if (vsd.empty())
    {
        std::cerr << "No data" << std::endl;
        exit(1);
    }

    std::sort(vsd.begin(), vsd.end(), compareIsbn);

    auto l = vsd.begin();
    while (l != vsd.end())
    {
        auto item = *l;
        auto r = std::find_if(l + 1, vsd.end(),
                              [item](const Sales_item &item1) {
                                  return item1.isbn() != item.isbn();
                              });
        std::cout << std::accumulate(l, r, item) << std::endl;
        l = r;
    }

    return 0;
}
#include <iostream>
#include <fstream>
#include <vector>
#include <iterator>
#include <algorithm>

int main(void)
{
    std::istream_iterator<int> in_iter(std::cin);
    std::istream_iterator<int> eof;
    std::vector<int> vi;
    while (in_iter != eof)
        vi.push_back(*in_iter++);

    std::sort(vi.begin(), vi.end());
    std::ostream_iterator<int> out_iter(std::cout, " ");
    std::copy(vi.begin(), vi.end(), out_iter);

    return 0;    
}
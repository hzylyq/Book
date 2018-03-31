#include <iostream>
#include <fstream>
#include <iterator>
#include <algorithm>

int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        std::cout << "./a.out  in_file file1 file2" << std::endl;
        exit(1);
    }

    std::ifstream in(argv[1]);
    if (!in)
    {
        std::cout << "open file failed" << std::endl;
        exit(1);
    }

    std::ofstream out1(argv[2]);
    if (!out1)
    {
        std::cout << "open file failed" << std::endl;
        exit(1);
    }

    std::ofstream out2(argv[2]);
    if (!out2)
    {
        std::cout << "open file failed" << std::endl;
        exit(1);
    }

    std::istream_iterator<int> in_iter(in);
    std::istream_iterator<int> eof;
    std::ostream_iterator<int> out_iter1(out1, " ");
    std::ostream_iterator<int> out_iter2(out2, "\n");

    while (in_iter != eof)
    {
        if (*in_iter & 1)
            *out_iter1++ = *in_iter;
        else
            *out_iter2++ = *in_iter;
        in_iter++;
    }

    return 0;
}
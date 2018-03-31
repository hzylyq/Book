#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <iterator>
#include <algorithm>

int main(int argc, char *argv[])
{
    std::ifstream in(argv[1]);
    if (!in)
    {
        std::cout << "open file failed" << std::endl;
        exit(1);
    }

    std::istream_iterator<std::string> in_iter(in);
    std::istream_iterator<std::string> eof;
    std::vector<std::string> words;

    while (in_iter != eof)
        words.push_back(*in_iter++);

    for (const auto word : words)
        std::cout << word << std::endl;

    return 0;
}
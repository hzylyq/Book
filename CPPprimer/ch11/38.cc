#include <iostream>
#include <fstream>
#include <string>
#include <unordered_map>
#include <algorithm>

using namespace std;

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    unordered_map<string, size_t> word_count;
    string word;
    while (in >> word)
        ++word_count[word];

    for (const auto &w : word_count)
        cout << w.first << "出现了" << w.second << "次" << endl;

    return 0;
}
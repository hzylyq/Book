#include <iostream>
#include <fstream>
#include <string>
#include <map>
#include <algorithm>

using namespace std;

string &tran(string &s)
{
    for (auto p = 0; p < s.size(); p++)
    {
        if (s[p] >= 'A' && s[p] <= 'Z')
            s[p] -= ('A' - 'a');
        else if (s[p] == '.' || s[p] == ',')
            s.erase(p, 1);
    }

    return s;
}

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    map<string, size_t> word_count;
    string word;
    while (in >> word)
        ++word_count[tran(word)];

    for (const auto &w : word_count)
        cout << w.first << "出现了" << w.second << "次" << endl;
        
    return 0;
}
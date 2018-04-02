#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

inline void output_words(vector<string> &words)
{
    for (auto it : words)
        cout << it << " ";
    cout << endl;
}

string make_plural(size_t ctr, const string &word,
                   const string &ending)
{
    return (ctr > 1) ? word + ending : word;
}

bool check_size(const string &s, string::size_type sz)
{
    return s.size() >= sz;
}

void biggies(vector<string> &words,
             vector<string>::size_type sz)
{
    output_words(words);

    auto bc = count_if(words.begin(), words.end(), bind(check_size, _1, sz));
    cout << bc << " " << make_plural(bc, "word", "s")
         << " of length " << sz << " or longer " << endl;
}

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    vector<string> words;
    string word;
    while (in >> word)
        words.push_back(word);

    biggies(words, 6);

    return 0;
}
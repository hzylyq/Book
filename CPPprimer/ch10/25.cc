#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>
#include <functional>

using namespace std;
using namespace std::placeholders;

inline void output_words(vector<string> &words)
{
    for (auto it : words)
        cout << it << " ";
    cout << endl;
}

void elimDups(vector<string> &words)
{
    sort(words.begin(), words.end());
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
    elimDups(words);

    for_each(words.begin(), words.end(), [](const string &s) {
        cout << s << " ";
    });

    cout << endl;

    auto wc = partition(words.begin(), words.end(), bind(check_size, _1, sz));
    auto count = wc - words.begin();
    cout << count << " " << make_plural(count, "words", "s") << " of length" << sz << " or longer" << endl;
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
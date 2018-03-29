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

void elimDups(vector<string> &words)
{
    sort(words.begin(), words.end());

    auto end_unique = unique(words.begin(), words.end());

    words.erase(end_unique, words.end());
}

void biggies(vector<string> &words,
             vector<string>::size_type sz)
{
    elimDups(words);

    stable_sort(words.begin(), words.end(),
    [](const string &a, const string &b)
    {
        return a.size() < b.size();
    });

    auto wc = find_if(words.begin(), words.end(),
    [sz](const string &a)
    {
        return a.size() > sz;
    });

    auto count = words.end() - wc;
    cout << count << " " << make_plural(count, "word", "s")
         << " of length " << sz << " or longer" << endl;

    for_each(wc, words.end(),
    [](const string &s)
    {
        cout << s << " ";
    });

    cout << endl;
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
    
    biggies(words, 4);

    return 0;
}

int main(void)
{}


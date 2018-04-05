#include <iostream>
#include <fstream>
#include <list>
#include <string>
#include <algorithm>

using namespace std;

inline void output_words(const list<string> &words)
{
    for (auto word : words)
        cout << word << " ";
    cout << endl;
}

void elimDups(list<string> &words)
{
    output_words(words);

    words.sort();
    output_words(words);

    words.unique();
    output_words(words);
}

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    list<string> words;
    string word;
    while (in >> word)
        words.push_back(word);

    elimDups(words);
    return 0;
}
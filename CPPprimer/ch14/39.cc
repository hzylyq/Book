#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

class StrLenBetween
{
  public:
    StrLenBetween(int minLen, int maxLen) : minLen(minLen), maxLen(maxLen) {}
    bool operator()(const string &str) { return str.length() >= minLen && str.length() <= maxLen; }

  private:
    int minLen;
    int maxLen;
};

class StrNotShortThan
{
  public:
    StrNotShortThan(int len) : minLen(len) {}
    bool operator()(const string &str) { return str.length() >= minLen; }

  private:
    int minLen;
};

void readStr(istream &is, vector<string> vec)
{
    string word;

    while (is >> word)
    {
        vec.push_back(word);
    }
}

int main(void)
{
    vector<string> vec;
    readStr(cin, vec);

    StrLenBetween slenBetween(1, 9);
    StrNotShortThan sNotShortThan(10);

    cout << "len 1-9:" << count_if(vec.begin(), vec.end(), slenBetween) << endl;
    cout << "len >= 10:" << count_if(vec.begin(), vec.end(), sNotShortThan) << endl;

    return 0;
}
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

string make_plural(size_t ctr, const string &word,
                   const string &ending)
{
    return (ctr > 1) ? word + ending : word;
}

bool check_size(const string &s, string::size_type sz)
{
    return s.size() >= sz;
}

void biggies(vector<int> &vc, const string &s)
{
    auto p = find_if(vc.begin(), vc.end(), bind(check_size, s, _1));

    cout << "第" << p-vc.begin()+1 << "个数" << *p << "大于等于" << s << "的长度" << endl;
}

int main(int argc, char *argv[])
{
   vector<int> vc = {1, 2, 3, 4, 5, 6, 7, 8, 9};

   biggies(vc, "Hello");
   biggies(vc, "everyone");
   biggies(vc, "!");

   return 0;
}
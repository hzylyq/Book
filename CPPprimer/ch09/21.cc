#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
    vector<string> svec;

    string word;
    auto iter = svec.begin();
    while (cin >> word)
    {
        iter = svec.insert(iter, word);
    }
    cout << endl;

    for (auto it : svec)
        cout << it << endl;

    return 0;
}
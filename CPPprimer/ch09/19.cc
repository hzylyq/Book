#include <iostream>
#include <string>
#include <list>

using namespace std;

int main(void)
{
    list<string> s1;
    string word;

    while (cin >> word)
    {
        s1.push_back(word);
    }

    for (auto si = s1.cbegin(); si != s1.cend(); si++)
        cout << *si << endl;

    return 0;
}
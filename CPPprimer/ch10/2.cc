#include <iostream>
#include <fstream>
#include <string>
#include <list>
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

    list<string> ls;
    string word;

    while (in >> word)
        ls.push_back(word);

    cout << "Please input the string you want to search" << endl;
    cin >> word;

    cout << count(ls.cbegin(), ls.cend(), word) << endl;

    return 0;
}
#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

int main()
{
    ifstream in("1.cc");

    if (!in) {
        cerr << "Can't open file" << endl;

        return -1;
    }

    string line;
    vector<string> words;

    while (in >> line) {
        words.push_back(line);
    }

    for (auto it : words) {
        cout << it << endl;
    }

    return 0;
}

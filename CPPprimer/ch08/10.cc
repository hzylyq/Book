#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>

using namespace std;

int main()
{
    ifstream in("10.cc");       //open file
    if (!in) {
        cerr << "can't open file" << endl;
        return -1;
    }

    string line;
    vector<string> words;

    while (getline(in, line)) {
        words.push_back(line);
    }

    in.close();

    vector<string>::const_iterator it = words.begin();
    while (it != words.end()) {
        istringstream line_str(*it);
        string word;
        while (line_str >> word) {
            cout << word << "?";
        }
        cout << endl;
        ++it;
    }

    return 0;
}

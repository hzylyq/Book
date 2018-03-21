#include <iostream>
#include <fstream>
#include <string>

using namespace std;

void find_longest_word(ifstream &in)
{
    string s, longest_word;
    int max_length = 0;

    while (in >> s)
    {
        if (s.find_first_of("dbfghjklpqty") != string::npos)
            continue;
        
        cout << s << " ";
        
        if (max_length < s.size())
        {
            max_length = s.size();
            longest_word = s;
        }
    }

    cout << endl << "max string:"
         << longest_word << endl;
}

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);

    if (!in)
    {
        cerr << "can't open file" << argv[1] << endl;
        return -1;
    }

    find_longest_word(in);

    return 0;
}
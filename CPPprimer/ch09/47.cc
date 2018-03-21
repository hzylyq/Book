#include <iostream>
#include <vector>
#include <string>

using namespace std;

void find_char(string &s, const string &chars)
{
    cout << "in " << s << " find " << chars << endl;

    string::size_type pos = 0;
    while ((pos = s.find_first_of(chars, pos)) != 
            string::npos)
    {
        cout << "pos:" << pos << ",char:" << s[pos]
        << endl;
        pos++;
    }
}

void find_not_char(string &s, const string &chars)
{
    cout << "in " << s << " find not in " << chars << endl;

    string::size_type pos = 0;
    while ((pos = s.find_first_not_of(chars, pos)) !=
           string::npos)
    {
        cout << "pos:" << pos << ",char:" << s[pos]
             << endl;
        pos++;
    }
}

int main(void)
{
    string s = "ab2c3d7R4E6";
    cout << "find all numbers" << endl;
    find_char(s, "0123456789");
    cout << "find all characters" << endl;
    find_char(s, "abcdefghijklmnopqrstuvwxyz"\
                    "ABCDEFGHIJKLMNOPQRSTUVWXYZ");

    string s2 = "ab2c3d7R4E6";
    cout << "find all numbers" << endl;
    find_not_char(s, "0123456789");
    cout << "find all characters" << endl;
    find_not_char(s, "abcdefghijklmnopqrstuvwxyz"
                     "ABCDEFGHIJKLMNOPQRSTUVWXYZ");

    return 0;
}
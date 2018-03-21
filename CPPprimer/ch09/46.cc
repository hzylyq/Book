#include <iostream>
#include <vector>
#include <string>

using namespace std;

void name_string(std::string &name,
                const std::string &prefix,
                const std::string &suffix)
{
    name.insert(0, " ");
    name.insert(0, prefix);
    name.insert(name.size(), " ");
    name.insert(name.size(), suffix);
}

int main(void)
{
    string s = "James Bond";
    name_string(s, "Mr", "TT");
    cout << s<< endl;

    s = "M";
    name_string(s, "Mrs", "TTT");
    cout << s << endl;

    return 0;
}
#include <iostream>
#include <vector>
#include <utility>
#include <map>
#include <string>
#include <algorithm>

using namespace std;

void add_family(map<string, vector<pair<string, string>>> &families, const string &family)
{
    families[family];
}

void add_child(map<string, vector<pair<string, string>>> &families,
               const string &family,
               const string &child,
               const string &birthday)
{
    families[family].push_back({child, birthday});
}

int main(void)
{
    map<string, vector<pair<string, string>>> families;

    add_family(families, "zhang");
    add_child(families, "zhang", "qiang", "1990-11-22");
    add_child(families, "zhang", "gang", "1998-11-23");
    add_child(families, "wang", "wu", "1990-11-34");
    add_family(families, "wang");

    for (auto f : families)
    {
        cout << f.first << "家的孩子: ";

        for (auto c : f.second)
            cout << c.first << "生日" << c.second << endl;
        cout << endl;
    }

    return 0;
}
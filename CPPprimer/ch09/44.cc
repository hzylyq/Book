#include <iostream>
#include <vector>
#include <string>

using namespace std;

void my_func(string &s, const string &oldval, const string &newval)
{
    int p = 0;

    while ((p = s.find(oldval, p)) != string::npos)
    {
        s.replace(p, oldval.size(), newval);
        p += newval.size();
    }
}
int main(void)
{
    string s = "tho thu tho";
    my_func(s, "thru", "through");
    cout << s << endl;

    my_func(s, "tho", "though");
    cout << s << endl;

    my_func(s, "through", "");
    cout << s << endl;

    return 0;
}
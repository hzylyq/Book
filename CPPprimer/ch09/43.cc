#include <iostream>
#include <string>

using namespace std;

void my_func(string &s, const string &oldval, const string &newval)
{
    auto l = s.size();
    if (l == 0)
        return;
    auto iter = s.begin();
    while (iter < s.end() - 1)
    {
        auto iter1 = iter;
        auto iter2 = oldval.begin();
        while (iter2 != oldval.end() && *iter1 == *iter2)
        {
            iter1++;
            iter2++;
        }
        if (iter2 == oldval.end() - 1)
        {
            iter = s.erase(iter, iter1);
            if (newval.size())
            {
                iter2 = newval.end();
                do
                {
                    iter2--;
                    iter = s.insert(iter, *iter2);
                } while (iter2 > newval.begin());
            }
            iter += newval.size();
        }
        else
            iter++;
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
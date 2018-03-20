#include <iostream>
#include <list>

#define LENGTH 10

using namespace std;

int main(void)
{
    list<int> li;

    for (auto i = 0; i <= LENGTH; i++)
    {
        li.emplace_back(i);
    }

    auto curr = li.begin();
    while (curr != li.end())
    {
        if (*curr % 2)
        {
            curr = li.insert(curr, *curr);
            curr++;
            curr++;
        }
        else
             curr = li.erase(curr);
    }

    for (auto it : li)
        cout << it << " ";
    cout << endl;

    return 0;
}
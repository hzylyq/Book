#include <iostream>
#include <forward_list>

using namespace std;

int main(void)
{
    forward_list<int> iflst = {0, 1, 2, 3, 4, 5, 6, 7};

    auto prev = iflst.before_begin();
    auto curr = iflst.begin();

    while (curr != iflst.end())
    {
        if (*curr % 2)
            curr = iflst.erase_after(prev);
        else
        {
            prev = curr;
            ++curr;
        }
    }

    for (auto it : iflst)
        cout << it << " ";
    cout << endl;

    return 0;
}
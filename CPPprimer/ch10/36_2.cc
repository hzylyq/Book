#include <iostream>
#include <list>
#include <algorithm>

using namespace std;

int main(void)
{
    list<int> li = {0, 1, 2, 0, 3, 4, 5, 0, 6};
    auto prev = find(li.begin(), li.end(), 0);

    if (prev == li.end())
    {
        cout << "not find 0" << endl;
    }
    else
    {
        auto curr = prev;
        while (curr != li.end())
        {
            prev = curr;
            curr++;
            curr = find(curr, li.end(), 0);
        }

        int p = 1;
        for (auto iter = li.begin(); iter != prev; iter++, p++);

        cout << "最后一个0在" << p << "位置" << endl;
    }

    return 0;
}
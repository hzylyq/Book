#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
    vector<int> vi;

    for (auto i = 0; i < 10; i++)
        vi.push_back(i);

    auto iter = vi.begin();
    while (iter != vi.end())
    {
        if (*iter % 2)
            iter = vi.insert(iter, *iter);
        ++iter;
        ++iter;
        for (auto it : vi)
            cout << it << " ";
        cout << endl;
    }

    return 0;
}
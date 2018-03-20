#include <iostream>
#include <forward_list>

#define LENGTH 10

using namespace std;

int main(void)
{
    forward_list<int> fli;

    for (auto i = 0; i <= LENGTH; i++)
    {
        fli.push_front(LENGTH - i);
    }

    auto prev = fli.before_begin();
    auto curr = fli.begin();

    while (curr != fli.end())
    {
        if (*curr % 2)
        {
            curr = fli.insert_after(curr, *curr);
            prev = curr;
            curr++;
        }
        else
            curr = fli.erase_after(prev);
    }

    for (auto it : fli)
        cout << it << " ";
    cout << endl;

    return 0;
}
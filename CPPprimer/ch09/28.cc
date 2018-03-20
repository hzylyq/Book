#include <iostream>
#include <string>
#include <forward_list>

using namespace std;

void test_and_insert(forward_list<string> &sflst, const string &s1, const string &s2)
{
    auto prev = sflst.before_begin();
    auto curr = sflst.begin();
    bool inserted = false;

    while (curr != sflst.end())
    {
        if (*curr == s1)
        {
            curr = sflst.insert_after(curr, s2);
            inserted = true;
        }
        prev = curr;
        curr++;
    }

    if (!inserted)
        sflst.insert_after(prev, s2);
}

int main(void)
{
    forward_list<string> sflst = {"Hello", ",", "World", "!"};

    test_and_insert(sflst, "Hello", "你好");
    for (auto iter = sflst.cbegin(); iter != sflst.cend(); iter++)
        cout << *iter << " ";
    cout << endl;

    test_and_insert(sflst, "BYE", "再见");
    for (auto iter = sflst.cbegin(); iter != sflst.cend(); iter++)
        cout << *iter << " ";
    cout << endl;

    return 0;
}
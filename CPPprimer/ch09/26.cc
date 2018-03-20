#include <iostream>
#include <vector>
#include <list>

using namespace std;

int main(void)
{
    int ia[] = {0, 1, 1, 2, 3, 5, 8, 13, 21, 55, 89};
    vector<int> iv;
    list<int> il;

    int size = sizeof(ia) / sizeof(int);

    iv.assign(ia, ia + size);
    il.assign(ia, ia + size);

    vector<int>::iterator iiv = iv.begin();
    while (iiv != iv.end())
        if (*iiv % 2 == 0)
            iiv = iv.erase(iiv);
        else
            ++iiv;
    list<int>::iterator iil = il.begin();
    while (iil != il.end())
        if (*iil % 2)
            iil = il.erase(iil);
        else
            ++iil;

    for (auto it : iv)
        cout << it << " ";
    cout << endl;

    for (auto it : il)
        cout << it  << " ";
    cout << endl;

    return 0;
}
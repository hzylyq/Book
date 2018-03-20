#include <iostream>
#include <list>
#include <deque>
#include <ctime>
#include <cstdlib>

using namespace std;

int main(void)
{
    list<int> isrc;
    deque<int> odd_d, even_d;
    srand(time(NULL));

    for (auto i = 0; i < 10; i++)
    {
        isrc.push_back(rand() % 100);
    }

    for (auto i : isrc)
        cout << i << " ";
    cout << endl;

    for (auto iter = isrc.cbegin(); iter != isrc.cend(); iter++)
    {
        if (*iter & 1)
            odd_d.push_back(*iter);
        else
            even_d.push_back(*iter);
    }

    cout << "奇数为";
    for (auto i : odd_d)
        cout << i << " ";
    cout << endl;

    cout << "偶数为";
    for (auto i : even_d)
        cout << i << " ";

    return 0;
}
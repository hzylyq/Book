#include <iostream>
#include <list>
#include <algorithm>

using namespace std;

int main(int argc, char *argv[])
{
    list<int> li = { 0, 1, 2, 0, 3, 4, 5, 0, 6};

    auto last_z = find(li.rbegin(), li.rend(), 0);
    last_z++;
    int p = 1;

    for (auto iter = li.begin(); iter != last_z.base(); iter++, p++);

    if (p >= li.size())
        cout << "容器中没有0" << endl;
    else
        cout << "最后一个0在" << p << "位置" << endl;

    return 0;
}
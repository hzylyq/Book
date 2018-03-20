#include <iostream>
#include <vector>
#include <ctime>
#include <cstdlib>

using namespace std;

int main(void)
{
    vector<int> ivec = {1, 1, 2, 1};
    vector<int>::iterator iter = ivec.begin();
    int org_size = ivec.size();
    int new_ele = 0;
    int some_value = 1;

    while (iter != (ivec.begin() + org_size / 2 + new_ele))
    {
        if (*iter == some_value)
        {
            iter = ivec.insert(iter, 2 * some_value);
            new_ele++;
            iter++;
            iter++;
        }
        else
        {
            iter++;
        }
    }

    for (auto i : ivec)
        cout << i << endl;

    return 0;
}
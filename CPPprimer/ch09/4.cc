#include <iostream>
#include <vector>

using namespace std;

bool serach_vec(vector<int>::iterator beg, vector<int>::iterator end, int val)
{
    for(; beg != end; beg++)
        if (*beg == val)
            return true;
    return false;
}

int main(void)
{
    vector<int> ilist = {1, 2, 3, 4, 5, 6, 7};

    cout << serach_vec(ilist.begin(), ilist.end(), 4) << endl;
    cout << serach_vec(ilist.begin(), ilist.end(), 8) << endl;

	return 0;
}

#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
    vector<int> vi;

    //cout << vi.at(0) << endl;
    //cout << vi[0] << endl;
    //cout << vi.front() << endl;
    cout << (*vi.begin()) << endl;

    return 0;
}
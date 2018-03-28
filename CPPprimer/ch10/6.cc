#include <iostream>
#include <fstream>
#include <algorithm>
#include <vector>
#include <iterator>

using namespace std;

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "opne file failed" << endl;
        exit(1);
    }

    vector<int> vi;
    int val;
    while (in >> val)
        vi.push_back(val);

    fill_n(vi.begin(), vi.size(), 0);

    for (auto it : vi)
        cout << it << " ";
    cout << endl;

    return 0;
}
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>

using namespace std;

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);

    if (!in)
    {
        cout << "open file " << argv[1] << "failed" << endl;
        exit(1);
    }

    vector<int> vi;
    int val;
    while (in >> val)
        vi.push_back(val);

    cout << "Please input the number you want to search" << endl;
    cin >> val;

    int c = 0;
    for (auto it : vi)
        if (it == val)
            c++;

    cout << c << endl;

    return 0;
}
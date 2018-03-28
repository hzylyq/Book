#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <numeric>

using namespace std;

int main(int argc, char **argv)
{
    ifstream in(argv[1]);
    
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    vector<double> vi;
    double val, sum;
    while (in >> val)
        vi.push_back(val);

    sum = accumulate(vi.cbegin(), vi.cend(), 0.0);
    cout << sum << endl;

    return 0;
}
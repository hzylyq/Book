#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>

#include "Sales_data.h"

using namespace std;

inline bool compareIsbn(const Sales_data &lhs, const Sales_data &rhs)
{
    return lhs.isbn() < rhs.isbn();
}

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);
    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    vector<Sales_data> sds;
    Sales_data sd;
    while (read(in, sd))
        sds.push_back(sd);
    
    sort(sds.begin(), sds.end(), compareIsbn);

    for (const auto &s : sds)
    {
        print(cout, s);
        cout << endl;
    }

    return 0;
}
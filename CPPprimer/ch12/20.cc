#include <iostream>
#include <fstream>

#include "StrBlob.h"
#include "StrBlobPtr.h"

using namespace std;

int main(int argc, char *argv[])
{
    ifstream in(argv[1]);

    if (!in)
    {
        cout << "open file failed" << endl;
        exit(1);
    }

    StrBlob b;
    string s;
    while(getline(in, s))
        b.push_back(s);

    for (auto it = b.begin(); neq(it, b.end()); it.incr())
        cout << it.deref() << endl;

    return 0;
}
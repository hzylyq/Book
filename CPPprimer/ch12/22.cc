#include <iostream>

#include "StrBlob.h"
#include "StrBlobPtr.h"

using namespace std;

int main(void)
{
    const StrBlob b = {"Hello", "World", "!"};

    for (auto it = b.begin(); neq(it, b.end()); it.incr())
        cout << it.deref() << endl;

    return 0;
}
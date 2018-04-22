#include <iostream>

#include "myStrBlob.h"

int main(void)
{
    StrBlob b1;
    {
        StrBlob b2 = {"a,", "an", "the"};
        b1 = b2;
        b2.push_back("about");
        cout << "sizeof b2:" << b2.size() << endl;
        cout << "b2 front(), back():" << b2.front() << " " << b2.back() << endl;
    }
    cout << "sizeof b1" << b1.size() << endl;
    cout << "b1 front(), back():" << b1.front() << " " << b1.back() << endl;

    StrBlob b3 = b1;
    b3.push_back("next");
    cout << "sizeof b3:" << b3.size() << endl;
    cout << "b3 front(), back():" << b3.front() << " " << b3.back() << endl;

    cout << "all of b1:" << endl;
    for (auto it = b1.begin(); neq(it, b1.end()); it.incr())
        cout << it.deref() << endl;

    return 0;
}
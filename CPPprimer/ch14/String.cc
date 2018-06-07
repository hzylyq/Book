#include "String.h"

std::allocator<char> String::a;

String &String::operator=(const String &rhs)
{
    char *newp = a.allocate(rhs.sz);
    std::uninitialized_copy(rhs.p, rhs.p + rhs.sz, newp);

    if (p)
        a.deallocate(p, sz);
    p = newp;
    sz = rhs.sz;
    cout << "Copy operate=" << endl;

    return *this;
}

String &String::operator=(const char *cp)
{
    if (p)
        a.deallocate(p, sz);

    p = a.allocate(sz = strlen(cp));
    std::uninitialized_copy(cp, cp + sz, p);

    return *this;
}

std::ostream &print(std::ostream &os, const String &s)
{
    const char *p = s.begin();
    while (p != s.end())
        os << *p++;
    return os;
}

String add(const String &lhs, const String &rhs)
{
    String ret;
    ret.sz = lhs.size() + rhs.size();
    ret.p = String::a.allocate(ret.sz);
    std::uninitialized_copy(lhs.begin(), lhs.end(), ret.p);
    std::uninitialized_copy(rhs.begin(), rhs.end(), ret.p + lhs.size());

    return ret;
}

String make_plural(size_t ctr, const String &word, const String &ending)
{
    return (ctr != 1) ? add(word, ending) : word;
}

std::ostream &operator<<(std::ostream &os, const String &s)
{
    return print(os, s);
}

String operator+(const String &lhs, const String &rhs)
{
    return add(lhs, rhs);
}

bool operator==(const String &lhs, const String &rhs)
{
    return strcmp(lhs.p, rhs.p);
}

bool operator!=(const String &lhs, const String &rhs)
{
    return !(lhs == rhs);
}
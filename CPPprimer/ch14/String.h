#ifndef STRING_H
#define STRING_H

#include <cstring>
#include <iostream>
#include <memory>

using std::cout;
using std::endl;

class String
{
    friend String operator+(const String &, const String &);
    friend String add(const String &, const String &);
    friend std::ostream &operator<<(std::ostream &, const String &);
    friend std::ostream &print(std::ostream &, const String &);

    friend bool operator==(const String &lhs, const String &rhs);
    friend bool operator!=(const String &lhs, const String &rhs);

  public:
    String() : sz(0), p(nullptr) {}

    String(const char *cp) : sz(std::strlen(cp)), p(a.allocate(sz))
    {
        std::uninitialized_copy(cp, cp + sz, p);
    }

    String(const String &s) : sz(s.sz), p(a.allocate(s.sz))
    {
        std::uninitialized_copy(s.p, s.p + sz, p);

        cout << "Copy construction " << s << endl;
    }

    String(String &&s) noexcept : sz(s.sz), p(s.p)
    {
        cout << "Move construction " << s << endl;
        s.sz = 0;
        s.p = nullptr;
    }

    String &operator=(String &&rhs) noexcept
    {
        if (this != &rhs)
        {
            a.deallocate(p, sz);
            p = rhs.p;
            sz = rhs.sz;
            rhs.p = nullptr;
            rhs.sz = 0;
        }

        return *this;
    }

    String(size_t n, char c) : sz(n), p(a.allocate(n))
    {
        std::uninitialized_fill_n(p, sz, c);
    }

    String &operator=(const String &);

    ~String()
    {
        if (p)
            a.deallocate(p, sz);
    }

  public:
    String &operator=(const char *);

    String &operator=(char);

    const char *begin() { return p; }
    const char *begin() const { return p; }
    const char *end() { return p + sz; }
    const char *end() const { return p + sz; }

    size_t size() const { return sz; }

    void swap(String &s)
    {
        char *tmp = p;
        p = s.p;
        s.p = tmp;

        std::size_t cnt = sz;
        sz = s.sz;
        s.sz = cnt;
    }

  private:
    std::size_t sz;
    char *p;
    static std::allocator<char> a;
};

String make_plural(size_t ctr, const String &, const String &);

inline void swap(String &s1, String &s2)
{
    s1.swap(s2);
}

#endif
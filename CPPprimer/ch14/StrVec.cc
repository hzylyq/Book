#include "StrVec.h"

std::allocator<std::string> StrVec::alloc;

StrVec::StrVec(const StrVec &s)
{
    auto newdata = alloc_n_copy(s.begin(), s.end());
    elements = newdata.first;
    first_free = cap = newdata.second;
}

inline StrVec::StrVec(std::initializer_list<std::string> il)
{
    auto newdata = alloc_n_copy(il.begin(), il.end());
    elements = newdata.first;
    first_free = cap = newdata.second;
}

StrVec &StrVec::operator=(const StrVec &rhs)
{
    auto newdata = alloc_n_copy(rhs.begin(), rhs.end());
    free();
    elements = newdata.first;
    first_free = cap = newdata.second;

    return *this;
}

StrVec::StrVec(StrVec &&s) noexcept
    : elements(s.elements), first_free(s.first_free), cap(s.cap)
{
    s.elements = s.first_free = s.cap = nullptr;
}

StrVec &StrVec::operator=(StrVec &&rhs) noexcept
{
    if (this != &rhs)
    {
        free();
        elements = rhs.elements;
        first_free = rhs.first_free;
        cap = rhs.cap;
        rhs.elements = rhs.first_free = rhs.cap = nullptr;
    }

    return *this;
}

StrVec::~StrVec()
{
    for_each(elements, first_free, [](std::string &s) {
        alloc.destroy(&s);
    });
}

StrVec &StrVec::operator=(std::initializer_list<std::string> il)
{
    auto data = alloc_n_copy(il.begin(), il.end());
    free();
    elements = data.first;
    first_free = cap = data.second;
    return *this;
}

void StrVec::push_back(const std::string &s)
{
    chk_n_alloc();

    alloc.construct(first_free++, s);
}

void StrVec::reallocate()
{
    auto newcapacity = size() ? 2 * size() : 1;
    auto first = alloc.allocate(newcapacity);

    auto last = std::uninitialized_copy(std::make_move_iterator(begin()), std::make_move_iterator(end()), first);

    free();

    elements = first;
    first_free = last;
    cap = elements + newcapacity;
}

void StrVec::reallocate(size_t newcapacity)
{
    auto newdata = alloc.allocate(newcapacity);
    auto dest = newdata;
    auto elem = elements;

    for (size_t i = 0; i != size(); ++i)
        alloc.construct(dest++, std::move(*elem++));
    free();

    elements = newdata;
    first_free = dest;
    cap = elements + newcapacity;
}

void StrVec::free()
{
    if (elements)
    {
        for (auto p = first_free; p != elements;)
            alloc.destroy(--p);
        alloc.deallocate(elements, cap - elements);
    }
}

std::pair<std::string *, std::string *>
StrVec::alloc_n_copy(const std::string *b, const std::string *e)
{
    auto data = alloc.allocate(e - b);

    return {data, std::uninitialized_copy(b, e, data)};
}

bool operator==(const StrVec &lhs, const StrVec &rhs)
{
    if (lhs.size() != rhs.size())
        return false;

    for (auto itr1 = lhs.begin(), itr2 = rhs.begin();
         itr1 != lhs.end() && itr2 != rhs.end();
         itr1++, itr2++)
    {
        if (*itr1 != *itr2)
            return false;
    }

    return true;
}

bool operator!=(const StrVec &lhs, const StrVec &rhs)
{
    return !(lhs == rhs);
}

bool operator<(const StrVec &lhs, const StrVec &rhs)
{
    auto l = lhs.begin(), r = rhs.begin();
    for (l = lhs.begin(), r = rhs.begin();
         l != lhs.end() && r != rhs.end();
         l++, r++)
    {
        if (*l < *r)
            return true;
        else if (*l > *r)
            return false;
    }

    if (l == lhs.end() && r != rhs.end())
        return true;
    return false;
}

bool operator<=(const StrVec &lhs, const StrVec &rhs)
{
    auto l = lhs.begin(), r = rhs.begin();
    for (l = lhs.begin(), r = rhs.begin();
         l != lhs.end() && r != rhs.end();
         l++, r++)
    {
        if (*l < *r)
            return true;
        else if (*l > *r)
            return false;
    }

    if (l == lhs.end())
        return true;
    return false;
}

bool operator>(const StrVec &lhs, const StrVec &rhs)
{
    auto l = lhs.begin(), r = rhs.begin();
    for (l = lhs.begin(), r = rhs.begin();
         l != lhs.end() && r != rhs.end();
         l++, r++)
    {
        if (*l < *r)
            return false;
        else if (*l > *r)
            return true;
    }

    if (l != lhs.end() && r == rhs.end())
        return true;
    return false;
}

bool operator>(const StrVec &lhs, const StrVec &rhs)
{
    auto l = lhs.begin(), r = rhs.begin();
    for (l = lhs.begin(), r = rhs.begin();
         l != lhs.end() && r != rhs.end();
         l++, r++)
    {
        if (*l < *r)
            return false;
        else if (*l > *r)
            return true;
    }

    if (r == rhs.end())
        return true;
    return false;
}

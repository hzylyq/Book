#ifndef STRVEC_H
#define STRVEC_H

#include <utility>
#include <string>
#include <new>
#include <memory>
#include <initializer_list>
#include <algorithm>

class StrVec
{
    friend bool operator==(const StrVec &lhs, const StrVec &rhs);
    friend bool operator!=(const StrVec &lhs, const StrVec &rhs);

    friend bool operator<(const StrVec &lhs, const StrVec &rhs);
    friend bool operator<=(const StrVec &lhs, const StrVec &rhs);
    friend bool operator>(const StrVec &lhs, const StrVec &rhs);
    friend bool operator>=(const StrVec &lhs, const StrVec &rhs);

  public:
    StrVec() : elements(nullptr), first_free(nullptr), cap(nullptr) {}
    StrVec(const StrVec &);
    StrVec(std::initializer_list<std::string> il);
    StrVec &operator=(const StrVec &);
    StrVec(StrVec &&) noexcept;
    StrVec &operator=(StrVec &&) noexcept;
    ~StrVec();

    StrVec &operator=(std::initializer_list<std::string> il);

    std::string &operator[](std::size_t n) { return elements[n]; }
    const std::string &operator[](std::size_t n) const { return elements[n]; }

    void push_back(const std::string &);

    void reverse(size_t n)
    {
        if (n > capacity())
            reallocate(n);
    }

    size_t size() const { return first_free - elements; }
    size_t capacity() const { return cap - elements; }
    std::string *begin() const { return elements; }
    std::string *end() const { return first_free; }

  private:
    static std::allocator<std::string> alloc;
    std::string *elements;
    std::string *first_free;
    std::string *cap;

    void reallocate();
    void reallocate(size_t newcapacity);
    void free();

    void chk_n_alloc()
    {
        if (size() == capacity())
            reallocate();
    }

    std::pair<std::string *, std::string *> alloc_n_copy(const std::string *, const std::string *);
};

#endif
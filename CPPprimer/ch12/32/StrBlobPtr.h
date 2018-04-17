#ifndef STRBLOBPTR_H
#define STRBLOBPTR_H

#include <vector>
#include <string>
#include <memory>

#include "StrBlob.h"

class StrBlobPtr
{
    friend bool eq(const StrBlobPtr &, const StrBlobPtr &);
    friend bool neq(const StrBlobPtr &, const StrBlobPtr &);

  public:
    StrBlobPtr() : curr(0) {}
    StrBlobPtr(StrBlob &a, size_t sz = 0) : wptr(a.data), curr(sz) {}
    StrBlobPtr(const StrBlob &a, size_t sz = 0) : wptr(a.data), curr(sz) {}

    std::string &deref() const;
    std::string &deref(int off) const;

    StrBlobPtr &incr();
    StrBlobPtr &decr();

  private:
    std::shared_ptr<std::vector<std::string>>
    check(std::size_t, const std::string &) const;
    
    std::weak_ptr<std::vector<std::string>> wptr;
    std::size_t curr;
};

#endif
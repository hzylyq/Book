#include <stdexcept>

#include "StrBlobPtr.h"

std::shared_ptr<std::vector<std::string>>
StrBlobPtr::check(std::size_t i, const std::string &msg) const
{
    auto ret = wptr.lock();
    if (!ret)
        throw std::runtime_error("unbound StrBlobPrt");
    if (i >= ret->size())
        throw std::out_of_range(msg);
    return ret;
}

std::string &StrBlobPtr::deref() const
{
    auto p = check(curr, "dereference past end");
    return (*p)[curr];
}

StrBlobPtr& StrBlobPtr::incr()
{
    check(curr, "increment end of StrBlobPtr");
    ++curr;
    return *this;
}

StrBlobPtr StrBlob::begin()
{
    return StrBlobPtr(*this);
}

StrBlobPtr StrBlob::end()
{
    auto ret = StrBlobPtr(*this, data->size());
    return ret;
}

StrBlobPtr StrBlob::begin() const
{
    return StrBlobPtr(*this);
}

StrBlobPtr StrBlob::end() const
{
    auto ret = StrBlobPtr(*this, data->size());
    return ret;
}

bool eq(const StrBlobPtr& lhs, const StrBlobPtr& rhs)
{
    auto l = lhs.wptr.lock();
    auto r = rhs.wptr.lock();

    if (l == r)
        return (!r || lhs.curr == rhs.curr);
    else
        return false;
}

bool neq(const StrBlobPtr& lhs, const StrBlobPtr& rhs)
{
    return !eq(lhs, rhs);
}
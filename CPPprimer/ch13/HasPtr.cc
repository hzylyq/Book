#include <iostream>
#include <string>

class HasPtr
{
    friend void swap(HasPtr &, HasPtr &);

  public:
    HasPtr(const std::string &s = std::string()) : ps(new std::string(s)), i(0), use(new std::size_t(1)) {}

    HasPtr(const HasPtr &hp) : ps(new std::string(*hp.ps)), i(hp.i), use(hp.use)
    {
        ++*use;
    }

    HasPtr &operator=(const HasPtr &rhs)
    {
        ++*rhs.use;
        if (--*use == 0)
        {
            delete ps;
            delete use;
        }

        ps = rhs.ps;
        i = rhs.i;
        use = rhs.use;

        return *this;
    }

    HasPtr &operator=(const std::string &rhs)
    {
        *ps = rhs;
        return *this;
    }

    HasPtr(HasPtr &&p) noexcept : ps(p.ps), i(p.i), use(p.use)
    {
        p.ps = nullptr;
        p.use = nullptr;
        p.i = 0;
    }

    HasPtr& operator=(HasPtr &&rhs) noexcept
    {
        std::cout << "Move Assignment" << std::endl;
        if (this != &rhs)
        {
            delete ps;
            ps = rhs.ps;
            use = rhs.use;
            rhs.ps = nullptr;
            rhs.use = nullptr;
            rhs.i = 0;
        }

        return *this;
    }

    std::string &operator*()
    {
        return *ps;
    }

    bool operator<(const HasPtr &rhs) const
    {
        return *ps < *rhs.ps;
    }

    ~HasPtr()
    {
        if (--*use == 0)
        {
            delete ps;
            delete use;
        }
    }

  private:
    std::string *ps;
    int i;
    std::size_t *use;
};

inline void swap(HasPtr &lhs, HasPtr &rhs)
{
    using std::swap;
    std::cout << "交换" << *lhs.ps << "和" << *rhs.ps << std::endl;
    swap(lhs.ps, rhs.ps);
    swap(lhs.i, rhs.i);
}

int main(void)
{
    HasPtr h("Hai, mom");
    HasPtr h2(h);
    HasPtr h3 = h;

    h2 = "Hai, dad";
    h3 = "Hai, sun";
    swap(h2, h3);

    std::cout << *h << std::endl;
    std::cout << *h2 << std::endl;
    std::cout << *h3 << std::endl;
    std::cout << (h2 < h3) << std::endl;

    return 0;
}
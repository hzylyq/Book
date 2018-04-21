#include <iostream>
#include <string>

class HasPtr
{
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

    std::string &operator*()
    {
        return *ps;
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

int main(void)
{
    HasPtr h("Hai, mom");
    HasPtr h2(h);
    HasPtr h3 = h;

    h2 = "Hai, dad";
    h3 = "Hai, sun";

    std::cout << *h << std::endl;
    std::cout << *h2 << std::endl;
    std::cout << *h3 << std::endl;

    return 0;
}
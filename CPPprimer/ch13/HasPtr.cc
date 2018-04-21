#include <iostream>
#include <string>

class HasPtr
{
  public:
    HasPtr(const std::string &s = std::string()) : ps(new std::string(s)), i(0) {}

    HasPtr(const HasPtr &hp) : ps(new std::string(*hp.ps)), i(hp.i) {}

    HasPtr &operator=(const HasPtr &rhs)
    {
        auto newps = new std::string(*rhs.ps);
        delete ps;
        ps = newps;
        i = rhs.i;

        return *this;
    }

    HasPtr &operator=(const std::string &rhs)
    {
        *ps = rhs;
        return *this;
    }

    std::string& operator*()
    {
        return *ps;
    }

    ~HasPtr()
    {
        delete ps;
    }

  private:
    std::string *ps;
    int i;
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
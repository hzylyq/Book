#include <iostream>
#include <string>

using namespace std;

class Employee
{
  public:
    Employee() { mysn = sn++; }
    Employee(const std::string &na) : name(na) { mysn = sn++; }
    Employee(const Employee &e)
    {
        name = e.name;
        mysn = sn++;
    }
    Employee& operator=(const Employee &rhs)
    {
        name = rhs.name;
        return *this;
    }

    const string &get_name() { return name; }
    int get_mysn() { return mysn; }

  private:
    std::string name;
    int mysn;
    static int sn;
};

void f(Employee &res)
{
    cout << res.get_name() << ":" << res.get_mysn() << endl;
}

int Employee::sn = 0;

int main(void)
{
    Employee a("赵"), b = a, c;
    c = b;
    f(a);
    f(b);
    f(c);

    return 0;
}
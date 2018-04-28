#include <iostream>

using std::istream;
using std::ostream;

class Date
{
  public:
    Date();
    Date(int y, int m, int d) : year(y), month(m), day(d) {}
    int getYear() const { return year; }
    int getMonth() const { return month; }
    int getDay() const { return day; }

  private:
    int year, month, day;
};

ostream &operator<<(ostream &os, const Date &dt)
{
    const char esp = '\t';
    os << "year:" << dt.getYear() << esp << "month:" << dt.getMonth() << esp << "day:" << dt.getDay() << std::endl;

    return os;
}

int main(void)
{
    Date date(2018, 4, 29);

    std::cout << date;

    return 0;
}
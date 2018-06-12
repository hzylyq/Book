#include <iostream>

using std::istream;
using std::ostream;

class Date
{
    friend bool operator<(const Date &lhs, const Date &rhs);
    friend bool operator<=(const Date &lhs, const Date &rhs);
    friend bool operator>(const Date &lhs, const Date &rhs);
    friend bool operator>=(const Date &lhs, const Date &rhs);
    friend bool operator==(const Date &lhs, const Date &rhs);
    friend bool operator!=(const Date &lhs, const Date &rhs);

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

bool operator==(const Date &lhs, const Date &rhs)
{
    return (lhs.year == rhs.year) &&
           (lhs.month == rhs.month) &&
           (lhs.day == rhs.day);
}

bool operator!=(const Date &lhs, const Date &rhs)
{
    return !(lhs == rhs);
}

bool operator<(const Date &lhs, const Date &rhs)
{
    return (lhs.year < rhs.year) ||
           (lhs.year == rhs.year && lhs.month < rhs.month) ||
           (lhs.year == rhs.year && lhs.month == rhs.month && lhs.day < rhs.day);
}

bool operator<=(const Date &lhs, const Date &rhs)
{
    return (lhs < rhs) || (lhs == rhs);
}

bool operator>(const Date &lhs, const Date &rhs)
{
    return !(lhs <= rhs);
}

bool operator>=(const Date &lhs, const Date &rhs)
{
    return (lhs > rhs) || (lhs == rhs);
}

int main(void)
{
    Date date(2018, 4, 29);

    std::cout << date;

    return 0;
}
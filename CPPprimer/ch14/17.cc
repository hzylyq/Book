#include <iostream>

using namespace std;

class Date
{
  friend bool operator==(const Date &lhs, const Date &rhs);
  friend bool operator==(const Date &lhs, const Date &rhs);

public:
  Date();
  Date(int y, int m, int d) : year(y), month(m), day(d) {}

private:
  int year, month, day;
};

bool operator==(const Date &lhs, const Date &rhs)
{
  return lhs.day == rhs.day && lhs.month == rhs.month && lhs.year == rhs.year;
}

bool operator!=(const Date &lhs, const Date &rhs)
{
  return !(lhs == rhs);
}
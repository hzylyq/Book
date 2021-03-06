#include <iostream>

using namespace std;

class Sales_data
{
    friend Sales_data operator-(const Sales_data &lhs, const Sales_data &rhs);

  public:
    Sales_data &operator-=(const Sales_data &rhs);

  private:
    int bookNo;
    double units_sold;
    double revenue;
};

Sales_data operator-(const Sales_data &lhs, const Sales_data &rhs)
{
    Sales_data sub = lhs;
    sub -= rhs;

    return sub;
}

Sales_data& Sales_data::operator-=(const Sales_data &rhs)
{
    units_sold -= rhs.units_sold;
    revenue -= rhs.revenue;

    return *this;
}
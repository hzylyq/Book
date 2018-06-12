#include <iostream>

using namespace std;

class Sales_data
{
    friend Sales_data operator+(const Sales_data &lhs, const Sales_data &rhs);
    friend istream &operator>>(istream &is, Sales_data &item);

  public:
    Sales_data &operator+=(const Sales_data &rhs);

  private:
    int bookNo;
    double units_sold;
    double revenue;
};

istream &operator>>(istream &is, Sales_data &item)
{
    double price;

    is >> item.bookNo >> item.units_sold >> price;

    if (is)
    {
        item.revenue = item.units_sold * price;
    }
    else
    {
        item = Sales_data();
    }

    return is;
}

Sales_data operator+(const Sales_data &lhs, const Sales_data &rhs)
{
    Sales_data sum = lhs;
    sum.units_sold += rhs.units_sold;
    sum.revenue += rhs.revenue;

    return sum;
}

Sales_data& Sales_data::operator+=(const Sales_data &rhs)
{
    *this = (*this) + rhs;

    return *this;
}
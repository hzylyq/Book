#include <iostream>
#include <string>
using namespace std;

class Sales_data
{
friend std::istream &read(std::istream &is, Sales_data &item);
friend std::ostream &print(std::ostream &os, const Sales_data &item);
public:
    Sales_data(const string &book, unsigned num, double sellp, double salep)
    :bookNo(book), units_sold(num), sellingprice(sellp), saleprice(salep)
    {
        if (sellingprice)
            discount = saleprice / sellingprice;
        cout << "four" << endl;
    }

    Sales_data() : Sales_data("", 0, 0, 0)
    {
        cout << "none" << endl;
    }

    Sales_data(const string &book) : Sales_data(book, 0, 0, 0)
    {
        cout << "book" << endl;
    }

    Sales_data(std::istream &is) : Sales_data()
    {
        read(is, *this);
        cout << "read" << endl;
    }
private:
    std::string bookNo;
    unsigned units_sold = 0;
    double sellingprice = 0.0;
    double saleprice = 0.0;
    double discount = 0.0;
};

std::istream &read(std::istream &is, Sales_data &item)
{
    is >> item.bookNo >> item.units_sold >> item.sellingprice >> item.saleprice;

    return is;
}

std::ostream &print(std::ostream &os, const Sales_data &item)
{
    os << item.bookNo << "," << item.units_sold << "," << item.sellingprice << "," << item.saleprice << "," << item.discount;
    return os;
}

int main()
{
    Sales_data first("234", 85, 128, 109);
    Sales_data second;
    Sales_data third("43243243");
    Sales_data last(cin);

    return 0;
}

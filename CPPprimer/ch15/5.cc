#include <iostream>
#include <string>

using namespace std;

class Quote
{
  public:
    Quote() = default;
    Quote(const string &book, double sales_price) : bookNo(book), price(sales_price) {}

    string isbn() const { return bookNo; }

    virtual double net_price(size_t cnt) const
    {
        return cnt * price;
    }

    virtual ~Quote() = default;

  private:
    string bookNo;

  protected:
    double price = 0.0;
};

class Bulk_quote : public Quote
{
  public:
    Bulk_quote(const string &book, double p, size_t qty, double disc) : Quote(book, p), min_qty(qty), discount(disc) {}

    double net_price(size_t cnt) const override
    {
        if (cnt >= min_qty)
            return cnt * (1 - discount) * price;
        else
            return cnt * price;
    }

  private:
    size_t min_qty;
    double discount = 0.0;
};

double print_total(ostream &os, const Quote &item, size_t n)
{
    double ret = item.net_price(n);

    os << "isbn:" << item.isbn() << " # sold:" << n << " total due: " << ret << endl;

    return ret;
}

int main(void)
{
    Quote A("1234", 12);
    Bulk_quote B("1234", 12, 10, 0.1);

    print_total(cout, A, 20);
    print_total(cout, B, 20);

    return 0;
}
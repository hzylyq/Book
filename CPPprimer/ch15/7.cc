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

class Limited_quote : public Quote
{
  public:
    double net_price(size_t cnt) const override
    {
        if (cnt <= min_pty)
            return cnt * (1 - discount) * price;
        else
            return min_pty * (1 - discount) * price + (cnt - min_pty) * price;
    }

  private:
    size_t min_pty;
    double discount = 0.0;
};

int main(void)
{
    return 0;
}
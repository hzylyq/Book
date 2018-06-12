#include <string>

using std::string;

class Sales_data
{
  public:
    Sales_data &operator=(const string &isbn)
    {
        bookNo = isbn;
        return *this;
    }

  private:
    string bookNo;
};
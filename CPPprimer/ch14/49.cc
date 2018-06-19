#include <vector>
using namespace std;

class Date
{
  public:
    Date();
    Date(int y, int m, int d) : year(y), month(m), day(d) {}

    explicit operator bool()
    {
        vector<vector<int>> day_per_month = {{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
                                             {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}};

        return month >= 1 && month <= 12 && day >= 1 && day <= day_per_month[isLeapYear() ? 1 : 0][month - 1];
    }

    bool isLeapYear()
    {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

  private:
    int year, month, day;
};
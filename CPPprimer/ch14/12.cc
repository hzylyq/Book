#include <iostream>

using namespace std;

class Date
{
    
  public:
    Date();
    Date(int y, int m, int d) : year(y), month(m), day(d) {}

  private:
    int year, month, day;
};
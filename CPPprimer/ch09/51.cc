#include "date.h"

int main(void)
{
    string dates[] = {"Jan 1,2014", "February 1 2014", "3/1/2014"};

    try
    {
        for (auto ds : dates)
        {
            date dl(ds);
            cout << dl;
        }
    }
    catch (invalid_argument e)
    {
        cout << e.what() << endl;
    }

    return 0;
}
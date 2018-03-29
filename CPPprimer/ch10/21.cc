#include <iostream>

using namespace std;

void mutable_lambda(void)
{
   int i = 5;

    auto f = [i]() mutable -> bool {
        if (i > 0)
        {
            i--;
            return false;
        }
        else
            return true;
    };

    for (int j = 0; j < 6; j++)
        cout << f() << " ";
    cout << endl;
}

int main(void)
{
    mutable_lambda();

    return 0;
}
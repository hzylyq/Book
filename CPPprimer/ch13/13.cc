#include <vector>
#include <iostream>

using namespace std;

struct X
{
    X() { cout << "constructor X()" << endl; }
    X(const X &) { cout << "copy constructor X(const X&)" << endl; }
    X &operator=(const X &rhs)
    {
        cout << "=(const X&)" << endl;
        return *this;
    }
    ~X() { cout << "~X()" << endl; }
};

void f1(X x)
{

}

void f2(X &x)
{

}

int main(void)
{
    X x;
    cout << endl;

    f1(x);
    cout << endl;

    f2(x);
    cout << endl;

    X *px = new X;
    cout << endl;

    vector<X> vx;
    vx.push_back(x);
    cout << endl;

    delete px;
    cout << endl;

    X y = x;
    y = x;
    cout << endl;

    return 0;
}
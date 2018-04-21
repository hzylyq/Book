#include <iostream>

using namespace std;

class numbered
{
  private:
    static int seq;

  public:
    numbered() { mysn = seq++; }

    numbered(const numbered &n) { mysn = seq++; }

    int mysn;
};

int numbered::seq = 0;

void f(numbered s)
{
    cout << s.mysn << endl;
}

void f2(const numbered &s)
{
    cout << s.mysn << endl;
}

int main(void)
{
//     numbered a, b = a, c = b;
//     f(a);
//     f(b);
    // f(c);

    numbered d, e = d, f = e;
    f2(d);
    f2(e);
    f2(f);

    return 0;
}
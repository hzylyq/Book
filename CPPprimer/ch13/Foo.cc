#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

class Foo
{
  public:
    Foo sorted() &&;      //用于可改变的右值
    Foo sorted() const &; //可用于任何类型的Foo
  private:
    vector<int> data;
};

Foo Foo::sorted() &&
{
    cout << "right reference" << endl;
    sort(data.begin(), data.end());
}

Foo Foo::sorted() const &
{
    cout << "left reference" << endl;
    //Foo ret(*this);
    //return ret.sorted();
    return Foo(*this).sorted();
}

int main(void)
{
    Foo f;
    f.sorted();

    return 0;
}
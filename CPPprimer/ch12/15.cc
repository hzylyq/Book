#include <iostream>
#include <memory>

using namespace std;

struct destination
{
};

struct connection
{
};

connection connect(destination *pd)
{
    cout << "打开连接" << endl;
    return connection();
}

void disconnect(connection c)
{
    cout << "关闭连接" << endl;
}

void f(destination &d)
{
    cout << "直接管理connect" << endl;
    connection c = connect(&d);
    //忘记调用disconnect
    cout << endl;
}

void f1(destination &d)
{
    connection c = connect(&d);
    shared_ptr<connection> p(&c, [](connection *p) {
        disconnect(*p);
    });
    cout << endl;
}

int main(void)
{
    destination d;

    f(d);
    f1(d);

    return 0;
}
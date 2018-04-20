#include <iostream>
#include <string>

using namespace std;

void greet2(const string &s)
{
    cout << "How are you, " << s << "?" << endl;
}

void bye()
{
    cout << "Ok bye!" << endl;
}

void greet(const string &name)
{
    cout << "hello, " << name << "!" << endl;
    greet2(name);
    cout << "getting ready to say bye..." << endl;
    bye();
}

int main(void)
{
    greet("adit");

    return 0;
}
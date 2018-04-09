#include <iostream>
#include <vector>

using namespace std;

vector<int> *new_vector(void)
{
    return new (nothrow) vector<int>;
}

void read_int(vector<int> *pv)
{
    int v;

    while (cin>>v)
        pv->push_back(v);
}

void print_int(vector<int> *pv)
{
    for (const auto &v : *pv)
        cout << v  << " ";
    cout << endl;
}

int main(int argc, char *argv[])
{
    vector<int> *pv = new_vector();
    if (!pv)
    {
        cout << "内存不足" << endl;
        return -1;
    }

    read_int(pv);
    print_int(pv);

    delete pv;
    pv = nullptr;

    return 0;
}
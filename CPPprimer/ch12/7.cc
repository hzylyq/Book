#include <iostream>
#include <vector>
#include <memory>

using namespace std;

shared_ptr<vector<int>> new_vector(void)
{
    return make_shared<vector<int>>();
}

void read_int(shared_ptr<vector<int>> spv)
{
    int v;

    while (cin>>v)
        spv->push_back(v);
}

void print_int(shared_ptr<vector<int>> spv)
{
    for (const auto &v : *spv)
        cout << v  << " ";
    cout << endl;
}

int main(int argc, char *argv[])
{
    auto spv = new_vector();

    read_int(spv);
    print_int(spv);

    return 0;
}
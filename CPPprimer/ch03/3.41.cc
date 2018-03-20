#include <iostream>
#include <vector>
#include <ctime>

using namespace std;

int main(int argc, char const *argv[]) {
    constexpr int sz = 10;
    int a[sz];
    srand((unsigned)time(NULL));

    for (auto &val : a){
        val = rand() % 100;
        cout << val << " ";
    }

    cout << endl;

    vector<int> vInt(begin(a), end(a));

    for (auto val : vInt){
        cout << val << " ";
    }

    return 0;
}

#include <iostream>
#include <vector>
#include <ctime>

using namespace std;

int main(int argc, char const *argv[]) {
    constexpr int sz = 10;
    vector<int> vInt;
    srand((unsigned)time(NULL));

    for (size_t i = 0; i < sz; i++) {
        vInt.push_back(rand() % 10);
        cout << vInt[i] << " ";
    }
    cout << endl;

    auto it = vInt.cbegin();
    int a[vInt.size()];
    cout << "Array :" << endl;

    for (auto &val : a) {
        val = *it;
        cout << val << " ";
        it++;
    }
    cout << endl;

    return 0;
}

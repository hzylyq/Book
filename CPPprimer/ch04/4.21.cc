#include <iostream>
#include <vector>
#include <ctime>

using namespace std;

int main(int argc, char const *argv[]) {
    vector<int> vInt;
    srand((unsigned)time(NULL));

    for (size_t i = 0; i < 10; i++) {
        vInt.push_back(rand() % 10);
        cout << vInt[i] << " ";
    }


    for (auto &i : vInt) {
        i = ((i % 2 != 0) ? i * 2 : i);
    }
    cout << endl;

    for (auto i : vInt)
        cout << i << " ";

    return 0;
}

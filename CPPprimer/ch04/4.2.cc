#include <iostream>
#include <vector>
#include <ctime>
#include <cstdlib>

using namespace std;

int main(int argc, char const *argv[]) {
    vector<int> vec;
    srand((unsigned)time(NULL));

    cout << "System gerenate data" << endl;
    for (size_t i = 0; i < 10; i++) {
        vec.push_back(rand() % 10);
    }
    for (auto i : vec)
        cout << i << " ";
    cout << endl;
    cout << "验证添加的括号是否正确" << endl;
    cout << "*vec.begin() = " << *vec.begin() << endl;
    cout << "*(vec.begin()) = " << *(vec.begin()) << endl;
    cout << "*vec.begin() + 1 = " << *vec.begin() + 1 << endl;
    cout << "(*(vec.begin())) + 1 = " << (*(vec.begin())) + 1 << endl;

    return 0;
}

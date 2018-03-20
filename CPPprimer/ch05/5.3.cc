#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
    int val = 0;
    int sum = 0;

    while (val <= 10) {
        sum += val, ++val;      //可读性降低了
    }

    return 0;
}

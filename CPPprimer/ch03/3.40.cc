#include <iostream>
#include <vector>
#include <cstring>

using namespace std;

int main(int argc, char const *argv[]) {
    char str1[] = "Welcome to C++ ";
    char str2[] = "family!";
    char result[strlen(str1) + strlen(str2) - 1];

    strcpy(result, str1);
    strcat(result, str2);

    cout << result << endl;

    return 0;
}

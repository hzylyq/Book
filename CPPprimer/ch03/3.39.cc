#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const *argv[]) {
    string s1, s2;

    cout << "Please input two strings" << endl;
    cin >> s1 >> s2;

    if (s1 > s2)
        cout << "s1 > s2" << endl;
    else if (s1 < s2)
        cout << "s1 < s2" << endl;
    else
        cout << "s1 == s2" << endl;
    
    return 0;
}

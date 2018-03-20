#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const *argv[]) {
    int grade;

    cout << "Please input your scores!" << endl;
    cin >> grade;

    string finalgrade = (grade > 90) ? "high pass"
                                     : (grade > 75 && grade <= 90) ? "pass"
                                     : (grade >= 60 && grade <= 75) ? "low pass"
                                     : "fail";

    string finalgrade_new;

    if (grade > 90)
        finalgrade_new = "high pass";
    else if (grade > 75 && grade <= 90)
        finalgrade_new = "pass";
    else if (grade >= 60 && grade <= 75)
        finalgrade_new = "low pass";
    else
        finalgrade_new = "fail";

    cout << finalgrade << endl;
    cout << finalgrade_new << endl;

    return 0;
}

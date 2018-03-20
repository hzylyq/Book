#include <iostream>
#include <string>

using namespace std;

int main(void)
{
    int grade = 0;

    cout << "Please input your grade" << endl;
    cin >> grade;

    if (grade > 100 || grade <0) {
        cout <<"Input error" << endl;
        return -1;
    }

    if (100 == grade) {
        cout << "成绩是" << "A++" << endl;
        return -1;
    }

    if (grade < 60) {
        cout << "成绩是" << "F" << endl;
        return -1;
    }

    int iH = grade / 10;
    int iL = grade % 10;
    string sH, sL, result;

    sH = (iH == 9) ? "A"
                : (iH == 8) ? "B"
                        : (iH == 7) ? "C" : "D";

    sL = (iL < 3) ? "-"
                : (iL > 7) ? "+" : "";

    result = sH + sL;

    cout << "学生成绩:" << result << endl;

    return 0;
}

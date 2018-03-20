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

    if (iH == 9)
        sH = "A";
    else if (iH == 8)
        sH = "B";
    else if (iH == 7)
        sH = "C";
    else
        sH = "D";

    if (iL < 3)
        sL = "-";
    if (iL > 7)
        sL = "+";

    result = sH + sL;

    cout << "学生成绩:" << result << endl;

    return 0;
}

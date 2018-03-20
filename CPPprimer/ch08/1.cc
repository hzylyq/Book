#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

istream& f(istream& in)
{
    int v;
    while (in >> v, !in.eof()) {
        //遇到文件结束符才停止读取
        if(in.bad())
           throw runtime_error("IO流错误") ;

        if (in.fail()) {
            cerr << "数据错误，请重试" << endl;
            in.clear();
            in.ignore(100, '\n');
            continue;
        }

        cout << v << endl;
    }

    in.clear();
    return in;
}

int main(void)
{
    cout << "请输入一些数，按Ctrl+Z结束" << endl;
    f(cin);

    return 0;
}

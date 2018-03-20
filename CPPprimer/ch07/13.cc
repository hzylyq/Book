#include <iostream>
#include "Sales_data.h"

using namespace std;

int main()
{
    cout << "请输入交易记录（ISBN、销售量、原件、实际售价）" << endl;
    Sales_data total(cin);
    //读入第一条数据，并确保有数据进行处理
    if (cin) {
        Sales_data trans(cin);   //保存和的变量
        //读入并处理剩余交易记录
       do {
            //如果在处理相同的书籍
            if (total.isbn() == trans.isbn())
                total.combine(trans);
            else {
                //打印前一本书的结果
                print(cout, total) << endl;
                total = trans;      //total现在表示前一本书的结果
            }
        } while (read(cin, total))
        print(cout, total) << endl;      //打印最后一本书的结果
    }
    else {
        //没有输入！警告读者
        cerr << "No data?!" << endl;
        return -1;
    }

    return 0;
}

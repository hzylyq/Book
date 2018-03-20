#include <iostream>
using namespace std;

//该函数同时使用到了形参，普通局部变量和静态局部变量的区别
double myADD(double val1, double val2)
{
	double result = val1 + val2;	//result是静态局部变量
	static unsigned iCnt = 0;
	++iCnt;
	cout << "该函数被执行了" << iCnt << "次" << endl;

	return result;
}

int main(void)
{
	double num1, num2;
	cout << "请输入两个数：" << endl;
	while (cin >> num1 >> num2)
	{
		cout << num1 << "+" << num2 << "=" << myADD(num1, num2) << endl;
	}

	return 0;
}
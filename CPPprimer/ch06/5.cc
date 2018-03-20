/*编写一个输出绝对值的函数*/
#include <iostream>
#include <cmath>

using namespace std;

double myABS(double val)
{
	if (val < 0)
		return val * -1;
	else
		return val;
}

double myABS2(double val)
{
	return abs(val);
}

int main(int argc, char const *argv[])
{
	double num;
	cout << "Please input a number" << endl;
	cin >> num;
	cout << num << " ABS is：" << myABS(num) << endl;
	cout << num << " ABS is：" << myABS2(num) << endl;

	return 0;
}
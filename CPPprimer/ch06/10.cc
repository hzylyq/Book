#include <iostream>
using namespace std;

//在函数体内部通过解引用操作改变指针所指向的内容
void MySwap(int *p, int *q)
{
	int temp = *p;
	*p = *q;
	*q = temp;
}

int main(int argc, char const *argv[])
{
	int a = 5, b = 10;
	int *r = &a;
	int *s = &b;
	cout << "交换前: a = " << a << ", b = " << b << endl;
	
	MySwap(r, s);

	cout << "交换前: a = " << a << ", b = " << b << endl;

	return 0;
}
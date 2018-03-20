#include <iostream>
using namespace std;

//	该函数既不交换指针，也不交换指针所值得内容
void SwapPoint1(int *p, int *q)
{
	int* temp = p;
	p = q;
	q = temp;
}

//	该函数交换指针所指的内容
void SwapPoint2(int *p, int *q)
{
	int temp = *p;
	*p = *q;
	*q = temp;
}

//	该函数交换指针本身的值，即交换指针所指的内存地址，由于传的是引用，对象也会改变
void swap(int *&p, int *&q)
{
	int* temp = p;
	p = q;
	q = temp;
}

int main(int argc, char const *argv[])
{
	int a = 10, b = 5;
	int *p = &a, *q = &b;
	cout << "交换前:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;
	SwapPoint1(p, q);
	cout << "交换后:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;

	a = 5, b = 10;
	p = &a, q = &b;
	cout << "交换前:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;
	SwapPoint1(p, q);
	cout << "交换后:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;

	a = 5, b = 10;
	p = &a, q = &b;
	cout << "交换前:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;
	SwapPoint1(p, q);
	cout << "交换后:" << endl;
	cout << "p的值是:" << p << ",q的值是:" << q << endl;
	cout << "p所指的值是: " << *p << ",q所指的值是: " << *q << endl;
	swap(p, q);

	return 0;
}
#include <iostream>
using namespace std;

void MySwap(int &i, int &j)
{
	int temp = i;
	i = j;
	j = temp;
}

int main(void)
{
	int a = 5, b = 10;
	cout << "交换前: a = " << a << ", b = " << b << endl;
	
	MySwap(a, b);

	cout << "交换前: a = " << a << ", b = " << b << endl;

	return 0;
}
/*编写一个阶乘函数*/
#include <iostream>

using namespace std;

int fact(int n)
{
	if (n < 0)
		return -1;
	
	int sum = 1;
	while (n > 0)
	{
		sum *= n;
		n--;
	}

	return sum;
}

int main(int argc, char const *argv[])
{
	unsigned int n = 0;
	cout << "Please input a number" << endl;
	cin >> n;

	cout << "n != " << fact(n) << endl;
	
	return 0;
}
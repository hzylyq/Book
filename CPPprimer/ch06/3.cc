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
	for (int i = 1; i < 5; ++i)
	{
		cout << fact(i) << endl;
	}
	
	return 0;
}
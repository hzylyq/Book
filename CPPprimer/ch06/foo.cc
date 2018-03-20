#include <iostream>
#include <string>
using namespace std;

int factorial(int val)
{
	if (val != 0)
		return factorial(val--) * val;
	return 1;
}

int main(int argc, char const *argv[])
{
	long long a = factorial(5);

	cout << a << endl;
	return 0;
}
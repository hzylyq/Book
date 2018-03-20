#include <iostream>

using namespace std;

int main(int argc, char const *argv[])
{
	cout << "Please input two numbers" << endl;
	int ival1, ival2;
	cin >> ival1 >> ival2;

	if (ival2 == 0)
	{
		cout << "除数不能为0" << endl;
		return -1;
	}

	cout << "the result is:" << ival1 / ival2 << endl;
	return 0;
}
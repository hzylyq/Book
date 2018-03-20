#include <iostream>
#include <stdexcept>

using namespace std;

int main(int argc, char const *argv[])
{
	cout << "Please input two numbers" << endl;
	int ival1, ival2;
	cin >> ival1 >> ival2;

	if (ival2 == 0)
	{
		throw runtime_error("除数不能为0");
	}

	cout << "the result is:" << ival1 / ival2 << endl;
	return 0;
}
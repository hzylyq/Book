#include <iostream>
#include <stdexcept>

using namespace std;

int main(int argc, char const *argv[])
{
	cout << "Please input two numbers" << endl;
	int ival1, ival2;
	while (cin >> ival1 >> ival2)
	{
		try
		{
			if (ival2 == 0)
			{
				throw runtime_error("除数不能为0");

			}
			cout << "the result is:" << ival1 / ival2 << endl;
		}catch(runtime_error err)
		{
			cout << err.what() << endl;
			cout << "continue?(y or n)?" << endl;
			char ch;
			cin >> ch;
			if (ch != 'Y' && ch != 'y')
				break;
		}
	}
	
	return 0;
}
#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s, result;
	char cnt = 'Y';

	while (cin >> s)
	{
		if (!result.size())
		{
			result += s;
		}
		else
		{
			result = result + ' ' + s;
		}

		cout << "continue" << endl;
		cin >> cnt;
		if (cnt == 'y' || cnt == 'Y')
			cout << "enter new string" << endl;
		else
			break;
	}	
	cout << "result string is" << result << endl;
	
	return 0;
}

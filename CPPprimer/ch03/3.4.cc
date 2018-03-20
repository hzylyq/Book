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

	cout << "Please input string" << endl;
	while (cin>>s)
	{
		result += s;	
		cout << "continue" << endl;
		cin >> cnt;
		if (cnt == 'Y' || cnt == 'y')
			cout << "Next string" << endl;
		else
			break;
	}
	cout << "string is "<< result << endl;

	return 0;
}

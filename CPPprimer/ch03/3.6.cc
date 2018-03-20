#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s;
	cout << "Enter a string" << endl;
	cin >> s;

	for (auto &c : s)
		c = 'X';

	cout << s << endl;

	return 0;
}

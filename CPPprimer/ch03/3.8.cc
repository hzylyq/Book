#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s, s2;
	cout << "Please input a string" << endl;
	cin >> s;

	for (decltype(s.size()) i=0; i<s.size(); i++)
		s[i] = 'X';

	cout << "Please input another string" << endl;
	cin >> s2;
	
	decltype(s2.size()) i = 0;

	while (i < s2.size())
	{
		s2[i] = 'X';
		i++;
	}
	cout << s << endl;
	cout << s2 << endl;

	return 0;
}

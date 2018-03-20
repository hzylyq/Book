#include <iostream>
#include <string>
#include <cctype>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s, result;
	cout << "Enter a string" << endl;
	getline(cin, s);
	
	for (auto c : s)
		if (!ispunct(c))
				cout << c;

	for (decltype(s.size()) i = 0;
			i < s.size(); i++)
		if (!ispunct(s[i]))
			result += s[i];

	cout << endl;
	cout << result << endl;

	return 0;
}

#include <iostream>
#include <string>
#include <vector>
#include <cctype>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main(void)
{
	vector<string> vString;
	string s;
	string result;
	char cnt = 'y';

	cout << "Please input a string" <<endl;
	while (cin >> s)
	{
		vString.push_back(s);
		
		cout << "continue?" << endl;
		cin >> cnt;

		if (cnt != 'y' && cnt != 'Y')
			break;
	}

	for (auto &s : vString)
	{
		for (auto &c : s)
			c = toupper(c);
		cout << s << endl;
	}

	return 0;
}

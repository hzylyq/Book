#include <iostream>
#include <vector>
#include <string>
#include <cctype>
#include <cstdlib>
#include <ctime>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main(void)
{
	vector<string> text;
	string s;

	while (getline(cin, s))
		text.push_back(s);

	for (auto it = text.begin(); it != text.end() && !it->empty(); it++)
	{
		for (auto it2 = it->begin(); it2 != it->end(); it2++)
			*it2 = toupper(*it2);
		cout << *it << endl;
	}

	return 0;
}

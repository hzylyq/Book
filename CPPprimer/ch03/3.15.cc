/*此题解法与3-14相同只不过是将int换成了string*/
#include <iostream>
#include <vector>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main(void)
{
	vector<string> vString;
	string s;
	char cnt = 'Y';		//还是初始化比较好

	cout << "Please input string" << endl;
	while (cin >> s)
	{
		vString.push_back(s);

		cout << "continue?" << endl;

		cin >> cnt;

		if (cnt != 'Y' && cnt != 'y')
			break;
	}

	for (auto s : vString)
		cout << s << " ";

	return 0;
}

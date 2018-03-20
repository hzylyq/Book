#include <iostream>
#include <vector>
#include <string>

using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s{"abcdefghijklmn"};
	char sort = 'z';

	auto beg = s.begin(), end = s.end();
	auto mid = s.begin + (end - beg) / 2;

	cout << "输入你想要查找的字母" << endl;
	cin >> sort;

	while (mid < end && *mid != sort)
	{
		if (*mid > sort)
			end = mid;
		else
			beg = mid + 1;

		mid = beg + (end - beg) / 2;
	}

	return 0;
}

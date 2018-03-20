#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
	unsigned int cnt = 0;
	char ch;

	while (cin >> ch)
	{
		if (ch == 'a')
			++cnt;
		if (ch == 'e')
			++cnt;
		if (ch == 'i')
			++cnt;
		if (ch == 'o')
			++cnt;
		if (ch == 'u')
			++cnt;
	}
	cout << "你输入的文本中共有" << cnt << "个元音字母" << endl;
	return 0;
}
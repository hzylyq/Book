#include <iostream>

using namespace std;

int myCnt(void)
{
	static int cnt = -1;
	cnt++;

	return cnt;
}

int main(void)
{
	cout << "请输入任意字符后回车" << endl;
	char ch;

	while (cin >> ch)
	{
		cout << "The count of myCnt is : " << myCnt() << endl;
	}

	return 0;
}
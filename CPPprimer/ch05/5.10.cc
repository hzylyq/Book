#include <iostream>

using namespace std;

int main(void)
{
	unsigned int aCnt = 0, eCnt = 0, iCnt = 0, oCnt = 0, uCnt = 0;
	char ch;
	cout << "Please input a sizeof text" << endl;

	while (cin >> ch)
	{
		switch(ch)
		{
			case 'a':
			case 'A':
				aCnt++;
				break;
			case 'e':
			case 'E':
				eCnt++;
				break;
			case 'i':
			case 'I':
				iCnt++;
				break;
			case 'o':
			case 'O':
				oCnt++;
				break;
			case 'u':
			case 'U':
				uCnt++;
				break;
		}
	}
	cout << "aCnt:" << aCnt << endl;
	cout << "eCnt:" << eCnt << endl;
	cout << "iCnt:" << iCnt << endl;
	cout << "oCnt:" << oCnt << endl;
	cout << "uCnt:" << uCnt << endl;

	return 0;
}
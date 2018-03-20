#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const *argv[])
{
	string curStr, preStr;
	bool result = false;				//记录结果

	while (cin >> curStr)
	{
		if(curStr == preStr)
		{
			result = true;
			cout << "连续出现的单词是：" << curStr;
			break; 
		}

		preStr = curStr;
	}

	if (!result)
		cout << "没有连续出现的字符串" << endl;
	

	return 0;
}
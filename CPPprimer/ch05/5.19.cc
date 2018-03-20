#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(int argc, char const *argv[])
{
	do{
		cout << "请输入两个字符串" << endl;
		string str1, str2;
		cin >> str1 >> str2;

		if (str1.size() > str2.size())
		{
			cout << "长度较短的字符串是" << str2 << endl;
		}
		else if (str1.size() < str2.size())
		{
			cout << "长度较短的字符串是" << str1 << endl;
		}
		else
		{
			cout << "两个字符串等长" << endl;
		}
		
	}while(cin);

	return 0;
}
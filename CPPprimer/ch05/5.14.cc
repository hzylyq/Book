/*
 *编写一段程序，从标准输入中读取若干string对象并查找连续出现的单词
 */
#include <iostream>
#include <string>

int main(int argc, char const *argv[])
{
	//定义三个字符串变量，分别表示当前字符串，前一个字符串，当前出现次数最多的字符串
	std::string curStr, preStr, maxStr;
	//定义两个变量，分别表示当前连续出现的字符串的次数，当前出现次数最多的字符串数量
	int curCnt = 1, maxCnt = 0;
	while(std::cin >> curStr)
	{
		//如果当前字符串和上一个字符串相同
		if (curStr == preStr)
		{
			++curCnt;
			if (curCnt > maxCnt)
			{
				maxCnt = curCnt;
				maxStr = curStr;
			}
		}
		//如果当前字符串和上一个字符串不同，则更新状态
		else
		{
			curCnt = 1;
		}
		preStr = curStr;
	}

	if (maxCnt > 1)
	{
		std::cout << "the max string is:" << maxStr << std::endl;
		std::cout << "the max string count is:" << curCnt << std::endl;
	}
	else
	{
		std::cout << "there is no maxStr" << std::endl;	
	}

	return 0;
}
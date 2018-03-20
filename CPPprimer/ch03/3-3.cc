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
	vector<int> v2;		//空对象

	for (int i=0; i != 100; i++)
		v2.push_back(i);

	for (auto i : v2)
		cout << v2[i] << endl;

	string word;
	vector<string> text;

	while (cin >> word)
		text.push_back(word);
	
	for (auto s : text)
		cout << s << endl;

	vector<int> v{1, 2, 3, 4, 5, 6, 7, 8, 9};	//列表初始化
	for (auto &i : v)	//i是一个引用
		i *= i;			//返回i的平方			
	
	for (auto i : v )
		cout << i << endl;
	
	vector<unsigned> scores(11, 0);	//11个分段，全部初始化为0
	unsigned grade;

	while (cin >> grade)
		if (grade <= 100)
			++scores[grade/10];

	return 0;
}

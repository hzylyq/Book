/*习题3.20考虑用另外一个容器来存放它们的和*/
#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main(void)
{
	vector<int> vInt;
	vector<int> vSum;
	int n;
	char cnt = 'y';

	cout << "Please input numbers" << endl;

	while (cin >> n)
	{
		vInt.push_back(n);

		cout << "continue?" << endl;
		cin >> cnt;

		if (cnt != 'y' && cnt != 'Y')
			break;
	}

	for (decltype(vInt.size()) i = 0; i < vInt.size(); i+=2)
		vSum.push_back(vInt[i] + vInt[i+1]);

	for (auto i : vSum)
		cout << i << " ";

	cout << endl;
	//使用遍历的方法将vInt[i]和vInt[vInt.size()-i-1]的值给予vSum[i]
	for (decltype(vInt.size()) i = 0; i < vInt.size() / 2; i++)
		vSum.push_back(vInt[i] + vInt[vInt.size() - i -1]);

	for (auto i : vSum)
		cout << i << " ";

	if (vInt.size() % 2 != 0)
		cout << vInt[vInt.size() / 2];


	return 0;
}

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
	int n;
	
	cout << "Please input numbers" << endl;

	while (cin >> n)
		vInt.push_back(n);

	if (vInt.cbegin() == vInt.cend())
		cout << "No data in vInt" << endl;

	for (auto it = vInt.begin(); it != vInt.end() - 1; it++)
	{
		cout << (*it + *(it + 1)) << " ";
		
		if ((it - vInt.cbegin() + 1) % 10 == 0)
			cout << endl;
	}

	if (vInt.size() % 2 != 0)
		cout << *(vInt.cend() - 1) << endl;

	return 0;
}

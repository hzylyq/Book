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

	auto beg = vInt.begin();
	auto end = vInt.end();

	for (auto it = beg; it != beg + (end - beg) / 2; it++)
	{
		cout << (*it + *(beg + (end - beg) - 1)) << " ";
		
		if ((it - vInt.cbegin() + 1) % 10 == 0)
			cout << endl;
	}

	if (vInt.size() % 2 != 0)
		cout << *(beg + (end - beg) / 2) << endl;

	return 0;
}

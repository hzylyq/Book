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
	vector<int> vInt;
	int n;
	char cnt;

	cout << "Please input  numbers" << endl;
	while (cin >> n)
	{
		vInt.push_back(n);

		cout << "continue?" << endl;

		cin >> cnt;

		if (cnt == 'Y' || cnt == 'y')
			cout << "Please input another numbers" << endl;
		else
			break;
	}

	for (auto i : vInt)
		cout << i << " ";

	return 0;
}

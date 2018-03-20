#include <iostream>
#include <vector>
#include <string>
#include <cctype>
#include <ctime>
#include <cstdlib>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::vector;

int main(void)
{
	vector<int> vInt;
	srand((unsigned)time(NULL));
	for (auto i = 0; i < 10; i++)
		vInt.push_back(rand() % 1000);

	for (auto it = vInt.begin(); it != vInt.end(); ++it)
		cout << *it <<" ";
	cout << endl;

	for (auto it = vInt.begin(); it != vInt.end(); ++it)
	{
		*it *= *it;
		cout << *it << " ";
	}
	cout << endl;

	return 0;
}

#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
	vector<int> aInt;
	vector<int> bInt;

	for (auto i = 0; i < 10; i++)
		aInt.push_back(i);

	for (auto j = 0; j < 10; j++)
		bInt.push_back(aInt[j]);

	for (auto i : aInt)
		cout << i << " ";
	cout << endl;

	for (auto i : bInt)
		cout << i << " ";
	cout << endl;

	return 0;
}

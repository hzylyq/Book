#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

using namespace std;

int main(int argc, char const *argv[])
{
	vector<int> aInt, bInt;
	srand(unsigned(time(NULL)));
	size_t n1 = rand() % 10;
	size_t n2 = rand() % 10;

	for (int i = 0; i < n1; ++i)
	{
		aInt.push_back(3);
	}

	for (int i = 0; i < n2; ++i)
	{
		bInt.push_back(3);
	}

	cout << "aInt" << endl;

	for (auto i : aInt)
	{
		cout << i << endl;
	}

	cout << "bInt" << endl;

	for (auto i : bInt)
	{
		cout << i << endl;
	}

	auto it1 = aInt.cbegin();
	auto it2 = bInt.cbegin();

	while (it1 != aInt.cend() && it2 != bInt.cend())
	{
		if (*it1 != *it2)
		{
			cout << "a与b不存在前缀关系" << endl;
			break;
		}
		++it1;
		++it2;
	}

	if (it1 == aInt.cend())
	{
		cout << "a是b的前缀" << endl;
	}
	if (it2 == bInt.cend())
	{
		cout << "b是a的前缀" << endl;
	}

	return 0;
}
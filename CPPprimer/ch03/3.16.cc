#include <iostream>
#include <vector>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::string;

int main(void)
{
	vector<int> v1;
	vector<int> v2(10);
	vector<int> v3(10, 42);
	vector<int> v4(10);
	vector<int> v5{10, 42};
	vector<string> v6{10};
	vector<string> v7{10, "hi"};

	cout << "v1的元素个数是:" << v1.size() << endl;
	if (v1.size() > 0)
	{
		for (auto i : v1)
			cout << i << " ";
		cout << endl;
	}

	cout << "v2的元素个数是:" << v2.size() << endl;
	if (v2.size() > 0)
	{
		for (auto i : v2)
			cout << i << " ";
		cout << endl;
	}

	cout << "v3的元素个数是:" << v3.size() << endl;
	if (v3.size() > 0)
	{
		for (auto i : v3)
			cout << i << " ";
		cout << endl;
	}


	cout << "v4的元素个数是:" << v4.size() << endl;
	if (v4.size() > 0)
	{
		for (auto i : v4)
			cout << i << " ";
		cout << endl;
	}

	cout << "v5的元素个数是:" << v5.size() << endl;
	if (v5.size() > 0)
	{
		for (auto i : v5)
			cout << i << " ";
		cout << endl;
	}

	cout << "v6的元素个数是:" << v6.size() << endl;
	if (v2.size() > 0)
	{
		for (auto i : v6)
			cout << i << " ";
		cout << endl;
	}

	cout << "v7的元素个数是:" << v7.size() << endl;
	if (v2.size() > 0)
	{
		for (auto i : v7)
			cout << i << " ";
		cout << endl;
	}

	return 0;
}

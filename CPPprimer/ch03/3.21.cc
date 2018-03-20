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
		for (auto it = v1.begin(); it != v1.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	cout << "v2的元素个数是:" << v2.size() << endl;
	if (v2.size() > 0)
	{
		for (auto it = v2.begin(); it != v2.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	cout << "v3的元素个数是:" << v3.size() << endl;
	if (v3.size() > 0)
	{
		for (auto it = v3.begin(); it != v3.end(); it++)
			cout << *it << " ";
		cout << endl;
	}


	cout << "v4的元素个数是:" << v4.size() << endl;
	if (v4.size() > 0)
	{
		for (auto it = v4.begin(); it != v4.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	cout << "v5的元素个数是:" << v5.size() << endl;
	if (v5.size() > 0)
	{
		for (auto it = v5.begin(); it != v5.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	cout << "v6的元素个数是:" << v6.size() << endl;
	if (v2.size() > 0)
	{
		for (auto it = v6.begin(); it != v6.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	cout << "v7的元素个数是:" << v7.size() << endl;
	if (v2.size() > 0)
	{
		for (auto it = v7.begin(); it != v7.end(); it++)
			cout << *it << " ";
		cout << endl;
	}

	return 0;
}

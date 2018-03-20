#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::string;

constexpr int get_size(void)
{
	return 10;
}

int main(void)
{
	unsigned cnt = 42;
	constexpr unsigned sz = 42;
	int arr[10];
	int *parr[sz];
	string bad[cnt];
	string strs[get_size()];

	return 0;
}

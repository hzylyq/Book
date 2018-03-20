#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main(void)
{
	vector<int> ivec;

	ivec.push_back(42);

	for (auto i : ivec)
		cout << i << endl;

	return 0;
}

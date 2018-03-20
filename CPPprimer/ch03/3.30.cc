#include <iostream>

using namespace std;

int main(void)
{
	constexpr size_t array_size = 10;
	int ia[array_size];

	for (size_t ix = 0; ix < array_size; ix++)
		ia[ix] = ix;
	
	for (auto i : ia)
		cout << i << " ";
	cout << endl;

	return 0;
}

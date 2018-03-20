#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
	const int N = 10;
	int ia[N];
	int ib[N];

	for (size_t i = 0; i < N; i++)
		ia[i] = i;
	
	for (size_t j = 0; j < N; j++)
		ib[j] = ia[j];
	
	for (auto i : ia)
		cout << i << " ";
	cout << endl;

	for (auto i : ib)
		cout << i << " ";
	cout << endl;

	return 0;
}

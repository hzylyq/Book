#include <iostream>

using namespace std;

int main(void)
{
	constexpr int sz = 10;
	int a[sz];

	for (auto i = 0; i != sz; i++)
		a[i] = i;

	int *pbeg = begin(a);
	int *pend = end(a);

	while (pbeg != pend){
		*pbeg = 0;
		pbeg++;
	}

	for (auto i : a)
		cout << i << " ";

	cout << endl;

	return 0;
}

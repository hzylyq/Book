#include <iostream>
#include <string>

using namespace std;

int main(void)
{
	string nums[] = {"one", "two", "three"};
	string *p = &nums[0];
	string *p2 = nums;

	int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	auto ia2(ia);
	
	decltype(ia) ia3 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	ia3[4] = 10;

	int arr[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	int *p3 = arr;
	++p3;

	int* e = &arr[10];

	for (auto *p = arr; p != e; p++)
		cout << *p << " ";

	int *beg = begin(ia);
	int *last = end(ia);

	int *pbeg = begin(arr);
	int *pend = end(arr);

	while (pbeg != pend && *pbeg >= 0)
		++pbeg;

	cout << *p3 << endl;

	constexpr size_t sz = 5;
	int test[sz] = {1, 2, 3, 4, 5};
	int *pt = test;
	int *pt1 = test + 4;
	int *pt2 = &test;
	int *pt3 = p2 + 1;

	cout << *pt << *pt1 << *pt2 << *pt3 << endl;



	return 0;
}

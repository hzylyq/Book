#include <iostream>

using namespace std;

int main(void)
{
	unsigned score[11] = {};
	unsigned grade;

	while (cin >> grade){
		if (grade <= 100)
			++score[grade/10];
	}

	for (auto i : score)
		cout << i << " ";
	cout << endl;
	return 0;
}

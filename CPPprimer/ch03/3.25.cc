#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main(void)
{
	vector<unsigned> vScores(11, 0);
	unsigned grade;
	auto it = vScores.begin();

	cout << "Enter grade" << endl;

	while (cin >> grade)
	{
		if (grade < 101)
			++*(it + grade / 10);
	}

	for (it = vScores.begin(); it != vScores.end(); it++)
		cout << *it <<" ";

	cout << endl;

	return 0;
}

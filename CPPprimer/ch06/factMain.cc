#include <iostream>
#include "Chapter6.h"
using namespace std;

int main(int argc, char const *argv[])
{
	unsigned int n = 0;
	cout << "Please input a number" << endl;
	cin >> n;

	cout << "n != " << fact(n) << endl;
	
	return 0;
}
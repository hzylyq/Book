#include <iostream>

using namespace std;

int main(void)
{
	int a, b, c, d;

	while (cin >> a >> b >> c >> d){
		if (a > b && b > c && c > d)
			break;
		else
			cout << "Don't meet the conditions, please re-enter" << endl;
	}

	cout << a << b << c << d << endl;

	return 0;
}

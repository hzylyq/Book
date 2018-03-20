#include <iostream>

using namespace std;

int main(void)
{
	int num = 0;
	while (cin >> num && num != 42);
	
	while (cin >> num){
		if (num == 42)
			break;
	}

	return 0;
}

#include "Chapter6.h"
using namespace std;

int fact(int n)
{
	if (n < 0)
		return -1;
	
	int sum = 1;
	while (n > 0)
	{
		sum *= n;
		n--;
	}

	return sum;
}
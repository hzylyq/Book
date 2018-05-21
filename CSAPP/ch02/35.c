#include <stdio.h>
#include <stdint.h>
#include <limits.h>

int tmult_ok(int x, int y)
{
	int64_t pll = (int64_t)x * y;//不能加括号，加了括号x*y会截断为int

	return pll == (int)pll;
}

int main(int argc, char const *argv[])
{
	printf("%d\n", tmult_ok(INT_MAX, INT_MAX));
	return 0;
}
#include <stdio.h>

int fun1(unsigned word)
{
	return (int)((word << 24) >> 24);
}

int fun2(unsigned word)
{
	return ((int) word << 24) >> 24;
}

int main(void)
{
	unsigned word;

	scanf("%x", &word);

	printf("%x\n", fun1(word));
	printf("%x\n", fun2(word));

	return 0;
}
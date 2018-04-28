#include <stdio.h>
#include <stdlib.h>

void inplace_swap(int *x, int *y)
{
	*y = *x ^ *y;
	*x = *x ^ *y;
	*y = *x ^ *y;
}

void reverse_array(int a[], int cnt)
{
	int first, last;

	for (first = 0, last = cnt - 1; first <= last; first++, last--)
	{
		inplace_swap(&a[first], &a[last]);
	}
}

int main(void)
{
	// int a = 10;
	// int b = 12;

	// inplace_swap(&a, &b);

	// printf("%d, %d\n", a, b);

	int a[4] = {1, 2, 3, 4};
	reverse_array(a, sizeof(a) / sizeof(a[0]));

	return 0;
}
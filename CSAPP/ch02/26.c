#include <string.h>
#include <stdio.h>

int strlonger(char *s, char *t)
{
	return strlen(s) > strlen(t);
}

int main(int argc, char const *argv[])
{
	char *s = "ab";
	char *t = "abcd";

	printf("%d\n", strlonger(s, t));
	return 0;
}
#include <iostream>
using namespace std;

int main(int argc, char const **argv)
{
	string str;
	for (int i = 0; i != argc; i++)
	{
		cout << "argc[" << i << "]" << argv[i] << endl;
	}
	
	return 0;
}
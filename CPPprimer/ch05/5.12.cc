#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
	unsigned int ffcnt = 0, flcnt = 0, ficnt = 0;
	char ch, prech = '\0';
	cout << "Please input a sizeof text" << endl;

	while (cin >>ch)
	{
		bool bl = true;
		if (prech == 'f')
		{
			switch(ch)
			{
				case 'f':
					++ffcnt;
					bl = false;
					break;
				case 'l':
					++flcnt;
					break;
				case 'i':
					++ficnt;
					break;
			}
			if (!bl)
				prech = '\0';
			else
				prech = ch;
		}
	}

	cout << "ff count:" << ffcnt << endl;
	cout << "fl count:" << flcnt << endl;
	cout << "fi count:" << ficnt << endl;
	
	return 0;
}
#include <iostream>
#include <string>
#include <cctype>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(void)
{
	string s("some thing");
	string s1("Hello world!!");
		
	decltype(s1.size()) punct_cnt = 0;

	for (auto c : s)
		cout << c << endl;

	for (auto c : s1)
		if (ispunct(c))
			++punct_cnt;

	cout << punct_cnt
		 << " punctuation characters in " << s1 << endl;
	
	string s2("hello world!!");

	for (auto &c : s2)
		c = toupper(c);

	cout << s2 << endl;
	
	if (!s.empty())
		cout << s[0] << endl;
	
	s = "some thing";
	if (!s.empty())
		s[0] = toupper(s[0]);
	
	cout << s << endl;

	for (decltype(s.size()) index = 0;
			index != s.size() && !isspace(s[index]); index++)
				s[index] = toupper(s[index]);

	cout << s << endl;

	const string hexdigits = "0123456789ABCDEF";
	cout << "Enter a series of numbers between 0 and 15" << endl;

	string result;
	string::size_type n;

	while(cin >> n)
		if (n < hexdigits.size())
			result += hexdigits[n];

	cout << "The result is" << result << endl;

	return 0;
}

#include <iostream>
#include <vector>
#include <string>
#include <cctype>

using std::cin;
using std::cout;
using std::endl;
using std::vector;
using std::string;

int main(void)
{
	string s("some thing");

	if (s.begin() != s.end()){
		auto it = s.begin();
		*it = toupper(*it);
	}

	for (auto it = s.begin(); it != s.end() && !isspace(*it); ++it)
		*it = toupper(*it);

	vector<int>::iterator it;
	string::iterator it2;

	vector<int>::const_iterator it3;
	string::const_iterator it4;
	
	vector<int> v;
	const vector<int> cv;

	auto it5 = v.begin();	//it1的类型是const<int>::itemator
	auto it6 = cv.begin();	//it2的类型是const<int>::const_itemator
	auto it7 = v.cbegin();	//it3的类型是const<int>::const_itemator

	vector<string> s1{"some thing"};
	auto it8 = s1.begin();
	(*it8).empty();
	it8->empty();

	vector<string> text;
	for (auto it = text.cbegin(); it != text.cend() && !it->empty(); ++it)
		cout << *it << endl;

	return 0;
}

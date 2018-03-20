#include <iostream>
#include <vector>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::vector;

int main(void)
{
	//第一种方法，构建空的vector对象，使用push_back向里面添加元素
	vector<int> v1;
	for (int i = 0; i < 10; i++)
		v1.push_back(42);

	//第二种方法，与上面类似，只不过是使用引用
	vector<int> v2(10);
	for (auto &i : v2)
		v1[i] = 42;

	//第三种
	vector<int> v3{42, 42, 42, 42, 42, 42, 42, 42, 42, 42};

	//第四种
	vector<int> v4 = {42, 42, 42, 42, 42, 42, 42, 42, 42, 42};

	//第五种
	vector<int> v5(10, 42);

	return 0;
}

#include <iostream>
#include <string>
#include <list>
#include <vector>

using namespace std;

int main(void)
{
    list<char *> slist = {"hello", "world", "!"};
    vector<string> svec;

    //容器类型不同，无法直接赋值
    //svec = slist;
    //元素类型相同，可以使用范围赋值
    svec.assign(slist.begin(), slist.end());

    cout << svec.capacity() << " " << svec.size() << " " << svec[0] << " " << svec[svec.size()-1] << endl;

    return 0;
}
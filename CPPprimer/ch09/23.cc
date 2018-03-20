#include <iostream>
#include <vector>

using namespace std;

int main(void)
{
    vector<int> vc = {6};

    cout << vc.size() << endl;

    if (!vc.empty())
    {
        auto val1 = *vc.begin();
        auto val2 = vc.front();
        auto last = vc.end();
        auto val3 = *(last--);
        auto val4 = vc.back();

        cout << val1 << endl;
        cout << val2 << endl;
        cout << *last << endl;
        cout << val3 << endl;
        cout << val4 << endl;
    }

    return 0;
}
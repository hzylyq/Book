#include <vector>
#include <algorithm>

using std::vector;

class IntCompare
{
  public:
    IntCompare(int v) : val(v) {}
    bool operator()(int v) { return val == v; }

  private:
    int val;
};

int main(void)
{
    vector<int> vec = {1, 2, 3, 4, 5};
    const int oldValue = 2;
    const int newValue = 200;
    IntCompare icmp(oldValue);
    std::replace_if(vec.begin(), vec.end(), icmp, newValue);

    return 0;
}
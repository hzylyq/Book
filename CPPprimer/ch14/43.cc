#include <vector>
#include <algorithm>
#include <functional>

using std::modulus;

bool dividedByAll(std::vector<int> &ivec, int dividend)
{
    return count_if(ivec.begin(), ivec.end(), bind1st(std::modulus<int>(), dividend)) == 0;
}

int main(void)
{
    return 0;
}
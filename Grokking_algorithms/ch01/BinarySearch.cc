#include <vector>
#include <iostream>

using namespace std;

class Solution
{
  public:
    int binary_search(vector<int> &list, int target)
    {
        if (list.empty())
            return -1;

        int low = 0;
        int high = list.size();

        while (low <= high)
        {
            int mid = (low + high) / 2;

            if (list[mid] == target)
            {
                return mid;
            }
            else if (list[mid] > target)
            {
                high = mid - 1;
            }
            else
            {
                low = mid + 1;
            }
        }

        return -1;
    }
};

int main(void)
{
    Solution a;
    vector<int> b = {1, 2, 3, 4, 5, 6, 7, 8};

    cout << a.binary_search(b, 7) << endl;

    return 0;
}

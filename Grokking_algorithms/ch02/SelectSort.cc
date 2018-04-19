#include <iostream>
#include <vector>

using namespace std;

class Solution
{
  public:
    int findSmallest(vector<int> &nums)
    {
        int smallest = nums[0];
        int smallest_index = 0;

        for (int i = 1; i < nums.size(); i++)
        {
            if (nums[i] < smallest)
            {
                smallest = nums[i];
                smallest_index = i;
            }
        }

        return smallest_index;
    }

    vector<int> selectSort(vector<int> &nums)
    {
        vector<int> ret;
        int smallest;
        int size = nums.size();

        for (int i = 0; i < size; i++)
        {
            smallest = findSmallest(nums);
            ret.push_back(nums[smallest]);
            nums.erase(nums.begin() + smallest);
        }

        return ret;
    }
};

int main(void)
{
    vector<int> a = {1, 3, 5, 0, 9, 10, 2};
    Solution b;

    vector<int> result;

    result = b.selectSort(a);

    for (auto it : result)
        cout << it << " ";

    cout << endl;

    return 0;
}
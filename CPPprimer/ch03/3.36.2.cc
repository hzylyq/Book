#include <iostream>
#include <vector>
#include <ctime>

using namespace std;

int main(int argc, char const *argv[]) {
  constexpr int sz = 5;
  vector<int> a, b;
  int val = 0;

  srand((unsigned)time(NULL));

  for (size_t i = 0; i < sz; i++) {
    a.push_back(rand() % 10);
  }

  cout << "Please input your numbers" << endl;
  for (size_t i = 0; i < sz; i++) {
    if (cin >> val)
      b.push_back(val);
  }

  cout << "System numbers " << endl;
  for (auto i : a)
    cout << i << " ";
  cout << endl;

  cout << "input numbers " << endl;
  for (auto i : b)
    cout << i << " ";
  cout << endl;

  auto it1 = a.cbegin(), it2 = b.cbegin();

  while (it1 != a.cend() && it2 != b.cend()) {
    if (*it1 != *it2) {
      cout << "guess error" << endl;
      return -1;
    }
    it1++;
    it2++;
  }
  cout << "Congratulations, you all guessed it" << endl;

  return 0;
}

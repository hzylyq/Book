#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int main(int argc, char const *argv[]) {
  constexpr int sz = 5;
  int a[sz], b[sz];
  srand((unsigned)time(NULL));

  for (size_t i = 0; i < sz; i++)
    a[i] = rand() % 10;

  cout << "Please input number, it can be repeated" << '\n';
  int val;    //用于存放用户输入的数据
  for (size_t i = 0; i < sz; i++) {
    if (cin >> val)
      b[i] = val;
  }
  cout << endl;
  cout << "System number is" << endl;
  for (auto i : a)
    cout << i << " ";
  cout << endl;

  cout << "Your input number is" << endl;
  for (auto i : b)
    cout << i << " ";
  cout << endl;

  int *pa = begin(a);
  int *pb = begin(b);

  while (pa != end(a) && pb != end(b)) {
    if (*pa != *pb) {
      cout << "guess error" << endl;
      return -1;
    }
    pa++;
    pb++;
  }
  cout << "Congratulations, you all guessed it" << endl;

  return 0;
}

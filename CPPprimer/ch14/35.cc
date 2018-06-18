#include <iostream>
#include <vector>
#include <string>

using std::cin;
using std::istream;
using std::string;
using std::vector;

class ReadString
{
  public:
    ReadString(istream &is = cin) : is(is) {}

    std::string operator()()
    {
        std::string line;
        if (!getline(is, line))
        {
            line = " ";
        }

        return line;
    }

  private:
    istream &is;
};

int main(void)
{
    ReadString rs;
    vector<string> vec;

    while (true)
    {
        string line = rs();
        if (!line.empty())
            vec.push_back(line);
        else
            break;
    }

    return 0;
}
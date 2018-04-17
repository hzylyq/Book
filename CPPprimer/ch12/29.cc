#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <map>
#include <set>

#include <cstdlib>

using namespace std;

using line_no = vector<string>::size_type;
vector<string> file;
map<string, set<line_no>> wm;

string cleanup_str(const string &word)
{
    string ret;
    for (auto it = word.begin(); it != word.end(); ++it)
    {
        if (!ispunct(*it))
            ret += tolower(*it);
    }

    return ret;
}

void input_text(ifstream &is)
{
    string text;

    while (getline(is, text))
    {
        file.push_back(text);
        int n = file.size() - 1;
        istringstream line(text);
        string word;
        while (line >> word)
            wm[cleanup_str(word)].insert(n);
    }
}

ostream &query_and_print(const string &sought, ostream &os)
{
    auto loc = wm.find(sought);
    if (loc == wm.end())
    {
        os << sought << "出现了0次" << endl;
    }
    else
    {
        auto lines = loc->second;
        os << sought << "disappear" << lines.size() << endl;
        for (auto num : lines)
            os << "\t(第" << num + 1 << "行)" << *(file.begin() + num) << endl;
    }

    return os;
}

void runQueries(ifstream &infile)
{
    input_text(infile);

    do
    {
        cout << "enter word to look for, or q to quit: ";
        string s;

        if (!(cin >> s) || s == "q")
            break;
        query_and_print(s, cout) << endl;
    } while (true);
}

int main(int argc, char *argv[])
{
    ifstream infile;
    if (argc < 2 || !(infile.open(argv[1]), infile))
    {
        cerr << "No input file" << endl;
        return EXIT_FAILURE;
    }

    runQueries(infile);

    return 0;
}
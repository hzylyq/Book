#include "TextQuery.h"
#include "QueryResult.h"

#include <cstddef>
#include <memory>
#include <sstream>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <iostream>
#include <fstream>
#include <cctype>
#include <cstring>
#include <utility>

using std::cerr;
using std::cin;
using std::cout;
using std::endl;
using std::getline;
using std::ifstream;
using std::ispunct;
using std::istringstream;
using std::map;
using std::ostream;
using std::pair;
using std::set;
using std::size_t;
using std::string;
using std::strlen;
using std::tolower;
using std::shared_ptr;
using std::vector;

typedef map<string, shared_ptr<set<TextQuery::line_no>>> wmType;

typedef wmType::const_iterator wmIter;

typedef shared_ptr<set<TextQuery::line_no>> lineType;

typedef set<TextQuery::line_no>::const_iterator lineIter;

string make_plural(size_t ctr, const string &word, const string &end)
{
    return (ctr > 1) ? word + end : word;
}

TextQuery::TextQuery(ifstream &is) : file(new vector<string>)
{
    string text;
    while (getline(is, text))
    {                             
        file.push_back(text);
        int n = file.size() - 1; // the current line number
        istringstream line(text); // separate the line into words
        string word;
        while (line >> word)
        { // for each word in that line
            word = cleanup_str(word);
            // if word isn't already in wm, subscripting adds a new entry
            auto &lines = wm[word];        // lines is a shared_ptr
            if (!lines)                        // that pointer is null the first time we see word
                lines.reset(new set<line_no>); // allocate a new set
            lines->insert(n);                  // insert this line number
        }
    }
}

string TextQuery::cleanup_str(const string &word)
{
    string ret;
    for (string::const_iterator it = word.begin();
         it != word.end(); ++it)
    {
        if (!ispunct(*it))
            ret += tolower(*it);
    }
    return ret;
}

QueryResult
TextQuery::query(const string &sought) const
{
    static shared_ptr<set<TextQuery::line_no>> nodata(new set<line_no>);

    auto loc = wm.find(cleanup_str(sought));

    if (loc == wm.end())
        return QueryResult(sought, nodata, file); // not found
    else
        return QueryResult(sought, loc->second, file);
}

// debugging routine, not covered in the book
void TextQuery::display_map()
{
    auto iter = wm.begin(), iter_end = wm.end();

    // for each word in the map
    for (; iter != iter_end; ++iter)
    {
        cout << "word: " << iter->first << " {";

        // fetch location vector as a const reference to avoid copying it
        auto text_locs = iter->second;
        auto loc_iter = text_locs->begin(),
            loc_iter_end = text_locs->end();

        // print all line numbers for this word
        while (loc_iter != loc_iter_end)
        {
            cout << *loc_iter;

            if (++loc_iter != loc_iter_end)
                cout << ", ";
        }

        cout << "}\n"; // end list of output this word
    }
    cout << endl; // finished printing entire map
}

ostream &print(ostream &os, const QueryResult &qr)
{
    // if the word was found, print the count and all occurrences
    os << qr.sought << " occurs " << qr.lines->size() << " "
       << make_plural(qr.lines->size(), "time", "s") << endl;

    // print each line in which the word appeared
    // for every element in the set
    for (auto num : *qr.lines)
        // don't confound the user with text lines starting at 0
        os << "\t(line " << num + 1 << ") "
           << qr.file.begin().deref(num) << endl;

    return os;
}
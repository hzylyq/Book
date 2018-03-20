#ifndef SCREEN_H_
#define SCREEN_H_

#include <iostream>

using namespace std;

class Screen
{
private:
    unsigned height = 0, width = 0;
    unsigned cursor = 0;
    std::string contents;

public:
    Screen() = default;
    Screen(unsigned ht, unsigned wd) : height(ht), width(wd),
        contents(ht * wd, ' ') { }
    Screen(unsigned ht, unsigned wd, char c) : height(ht), width(wd),
        contents(ht * wd, 'c') { }

    Screen& move(unsigned r, unsigned c);

    Screen& set(char ch);

    Screen& set(unsigned r, unsigned c, char ch);

    Screen& display(std::ostream&);
};
#endif

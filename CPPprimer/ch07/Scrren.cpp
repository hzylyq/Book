#include "Screen.h"

Screen&
Screen::move(unsigned r, unsigned c)
{
    cursor = r * width + c;
    return *this;
}

Screen&
Screen::set(char ch)
{
    contents[cursor] = ch;
    return *this;
}

Screen&
Screen::set(unsigned r, unsigned c, char ch)
{
    contents[r * width + c] = ch;
    return *this;
}

Screen&
Screen::display(std::ostream&)
{
    cout << contents;
    return *this;
}

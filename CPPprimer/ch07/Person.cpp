#include "Person.h"

std::istream& read(std::istream in, Person& per) {
    in >> per.strName >> per.strAddress;

    return in;
}

std::ostream& print(std::ostream out, const Person& per) {
    out << per.getName() << " " << per.getAddress();

    return out;
}

Person::Person(const std::string &name, const std::string &address) {
    strName = name;
    strAddress = address;
}

Person::Person(std::istream &is) {
    is >> *this;
}

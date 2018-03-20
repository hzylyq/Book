#ifndef PERSON_H
#define PERSON_H

#include <iostream>
#include <string>

class Person {
friend std::istream& read(std::istream, Person&);
private:
    std::string strName;        //姓名
    std::string strAddress;     //地址
public:
    Person() = default;
    Person(const std::string &name, const std::string &address);
    Person(std::istream &is);
    std::string getName const { return strName; }       //返回姓名
    std::string getAddress const { return strAddress; } //返回地址
};

#endif

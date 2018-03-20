#ifndef SALES_DATA_H
#define SALES_DATA_H

#include <iostream>
#include <string>

class Sales_data {
//友元函数 >>操作符重载
friend std::istream& operator >> (std::istream&, Sales_data&);
//友元函数 <<操作符重载
friend std::ostream& operator << (std::ostream&, Sales_data&);
//友元函数 ==操作符重载
friend bool operator == (const Sales_data&, const Sales_data&);
//友元函数
friend std::istream& read(std::istream& in, Sales_data& s);
//友元函数
friend std::ostream& print(std::ostream& os, const Sales_data& item);
public:
    //构造函数
    Sales_data();
    //拷贝构造函数
    Sales_data(const std::string&);
    //构造函数
    Sales_data(const std::string&, const unsigned, const double, const double);
    //拷贝构造函数
    Sales_data(std::istream &);
    //+=操作符重载
    Sales_data& operator += (const Sales_data&);

    std::string isbn() const;

    bool compareIsbn(const Sales_data&, const Sales_data&);

    Sales_data& combine(const Sales_data&);

private:
    std::string bookNo;         //书籍编号，隐式初始化为空串
    unsigned unit_sold = 0;     //销售量，显示初始化为0
    double sellprice = 0.0;     //原始价格，显示初始化为0
    double saleprice = 0.0;     //实售价格，显示才初始化为0
    double discount = 0.0;      //折扣，显示初始化为0
};

Sales_data add(const Sales_data& lhs, const Sales_data& rhs);

#endif

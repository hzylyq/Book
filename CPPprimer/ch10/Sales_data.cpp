#include "Sales_data.h"

//默认构造函数
Sales_data::Sales_data() = default;
//拷贝构造函数
Sales_data::Sales_data(const std::string& book) : bookNo(book), unit_sold(0), sellprice(0), saleprice(0), discount(0){ }
//构造函数
Sales_data::Sales_data(const std::string& book, const unsigned num, const double sellp, const double salep) {
    bookNo = book;
    unit_sold = num;
    sellprice = sellp;
    saleprice = saleprice;
}

//拷贝构造函数
Sales_data::Sales_data(std::istream &is) {
    is >> *this;
}
//友元函数 >>操作符重载
std::istream& operator >> (std::istream& in, Sales_data& s) {
    in >> s.bookNo >> s.unit_sold >> s.sellprice >> s.saleprice;

    if (in && s.sellprice != 0)
        s.discount = s.saleprice / s.sellprice;
    else
        s = Sales_data();       //输入错误，重置输入的数据
    return in;
};
//友元函数 <<操作符重载
std::ostream& operator << (std::ostream& out, Sales_data& s) {
    out << s.bookNo << " " << s.unit_sold << " " << s.sellprice <<" " << s.saleprice << " " << s.discount;

    return out;
}
//友元函数 ==操作符重载
bool operator == (const Sales_data& lhs, const Sales_data& rhs) {
    return lhs.unit_sold == rhs.unit_sold &&
            lhs.saleprice == rhs.saleprice &&
            lhs.sellprice == rhs.sellprice &&
            lhs.isbn() == rhs.isbn();
}
//!=操作符重载
bool operator != (const Sales_data& lhs, const Sales_data& rhs) {
    return !(lhs == rhs);        //基于运算符==给出！=的定义
}
//+=操作符重载
Sales_data& Sales_data:: operator += (const Sales_data& rhs) {
    unit_sold += rhs.unit_sold;
    saleprice = (rhs.saleprice * rhs.unit_sold + saleprice * unit_sold) / (unit_sold + rhs.unit_sold);

    if (saleprice != 0)
        discount = saleprice / sellprice;

    return *this;
}
//+操作符重载
Sales_data operator + (const Sales_data& lhs, const Sales_data& rhs) {
    Sales_data ret(lhs);    //把lhs的内容拷贝到临时变量ret中，这种做法便于运算
    ret += rhs;             //把rhs的内容加入到其中

    return ret;
}

std::string Sales_data::isbn() const {
    return bookNo;
}

bool compareIsbn(const Sales_data& lhs, const Sales_data& rhs) {
    return lhs.isbn() == rhs.isbn();
}

Sales_data& Sales_data::combine(const Sales_data& rhs) {
    unit_sold += rhs.unit_sold;
    saleprice = (rhs.saleprice * rhs.unit_sold + saleprice * unit_sold) / (unit_sold + rhs.unit_sold);

    if (sellprice != 0)
        discount = saleprice / sellprice;

    return *this;
}

Sales_data add(const Sales_data& lhs, const Sales_data& rhs) {
    Sales_data sum = lhs;
    sum.combine(lhs);

    return sum;
}

std::istream& read(std::istream& in, Sales_data& s) {
    in >> s.bookNo >> s.unit_sold >> s.sellprice >> s.saleprice;

    return in;
};

std::ostream& print(std::ostream& os, const Sales_data& item) {
    os << item.bookNo << " " << item.unit_sold << " " << item.sellprice << " " << item.saleprice << " " << item.discount;

    return os;
}

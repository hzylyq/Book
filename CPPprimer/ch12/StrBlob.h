#ifndef STRBLOB_H
#define STRBLOB_H

#include <vector>
#include <string>
#include <memory>
#include <stdexcept>
#include <initializer_list>

class StrBlobPtr;

class StrBlob
{
  friend class StrBlobPtr;

public:
  typedef std::vector<std::string>::size_type size_type;
  StrBlob();
  StrBlob(std::initializer_list<std::string> il);
  size_type size() const { return data->size(); }
  bool empty() const { return data->empty(); }
  void push_back(const std::string &t) { data->push_back(t); }
  void pop_back();

  std::string &front();
  const std::string &front() const;
  std::string &back();
  const std::string &back() const;

  //提供给StrBlobPtr的接口
  StrBlobPtr begin();
  StrBlobPtr end();

  StrBlobPtr begin() const;
  StrBlobPtr end() const;

private:
  std::shared_ptr<std::vector<std::string>> data;

  void check(size_type i, const std::string &msg) const;
};

#endif
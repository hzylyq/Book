#ifndef TEXTQUERY_H
#define TEXTQUERY_H

#include <memory>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <fstream>

#include "QueryResult.h"
#include "StrVec.h"

class QueryResult;
class StrVec;

class TextQuery
{
public:
  typedef std::vector<std::string>::size_type line_no;

  TextQuery(std::ifstream &);

  QueryResult query(const std::string &) const;

  void display_map();

private:
  std::shared_ptr<StrVec> file;

  std::map<std::string, std::shared_ptr<std::set<line_no>>> wm;

  static std::string cleanup_str(const std::string &);
};

#endif

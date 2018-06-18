#include <string>

#include "myStrBlob.h"

class MyClass
{
  public:
    std::string *operator->() const
    {
        return ptr->operator->();
    }

  private:
    StrBlobPtr *ptr;
};
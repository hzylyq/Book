#ifndef MESSAGE_H
#define MESSAGE_H

#include <string>
#include <set>

class Folder;

class Message
{
  friend class Folder;

  friend void swap(Message &, Message &);

public:
  explicit Message(const std::string &str = "") : contents(str) {}

  Message(const Message &);

  Message &operator=(const Message &);

  Message(Message &&);

  Message &operator=(Message &&rhs);

  ~Message();

  void save(Folder &);

  void remove(Folder &);

  void addFldr(Folder *f)
  {
    folders.insert(f);
  }

  void remFldr(Folder *f)
  {
    folders.erase(f);
  }

  void move_Folders(Message *m);

private:
  std::string contents;
  std::set<Folder *> folders;

  void add_to_Folders(const Message &);
  void remove_from_Folders();
};

#endif
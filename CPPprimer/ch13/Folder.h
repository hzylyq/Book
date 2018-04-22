#ifndef FOLDER_H
#define FOLDER_H

#include <set>

#include "Message.h"

class Folder
{
  public:
    Folder(const Folder &f) : msgs(f.msgs)
    {
        add_to_Messages(f);
    }

    Folder& operator=(const Folder &f)
    {
        remove_from_Msgs();
        msgs = f.msgs;
        add_to_Messages(f);

        return *this;
    }

    ~Folder()
    {
        remove_from_Msgs();
    }

    void addMsg(Message *m);

    void remMsg(Message *m);

    void add_to_Messages(const Folder& f);

    void remove_from_Msgs();

  private:
    std::set<Message*> msgs;
};

#endif
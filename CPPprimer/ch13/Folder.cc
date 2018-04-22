#include "Folder.h"

void Folder::addMsg(Message *m)
{
    msgs.insert(m);
}

void Folder::remMsg(Message *m)
{
    msgs.erase(m);
}

void Folder::add_to_Messages(const Folder &f)
{
    for (auto msg : f.msgs)
        msg->addFldr(this);
}

void Folder::remove_from_Msgs()
{
    while (!msgs.empty())
        (*msgs.begin())->remove(*this);
}
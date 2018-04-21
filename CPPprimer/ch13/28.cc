#include <string>

class TreeNode
{
  public:
    TreeNode() : value(""), count(1), left(nullptr), right(nullptr) {}
    TreeNode(const std::string &s = std::string(), TreeNode *lchild = nullptr, TreeNode *rchild = nullptr)
        : value(s), count(1), left(lchild), right(rchild) {}
    TreeNode(const TreeNode &tn) : value(tn.value), count(1), left(tn.left), right(tn.right)
    {
        if (left)
            left->CopyTree();
        if (right)
            right->CopyTree();
    }

    void CopyTree()
    {
        if (left)
            left->CopyTree();
        if (right)
            right->CopyTree();
        count++;
    }

    int ReleaseTree(void)
    {
        if (left)
            delete left;
        if (right)
            delete right;
        count--;
        return count;
    }

    ~TreeNode()
    {
        if (count)
            ReleaseTree();
    }

  private:
    std::string value;
    int count;
    TreeNode *left;
    TreeNode *right;
};

class BinStrTree
{
  public:
    BinStrTree() : root(nullptr) {}
    BinStrTree(TreeNode *t = nullptr) : root(t) {}
    BinStrTree(const BinStrTree &bst) : root(bst.root)
    {
        root->CopyTree();
    }
    ~BinStrTree()
    {
        if (!root->ReleaseTree())
            delete root;
    }

  private:
    TreeNode *root;
};

int main(void)
{
    return 0;
}
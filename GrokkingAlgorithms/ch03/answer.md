3.1 根据下面的调用栈，你可获得哪些信息？
调用函数greet, name被设置为"maggie"; 函数greet中调用greet2,同样name被
设置为"maggie"; 此时greet函数暂停处在未完成状态; 当前函数调用greet2,完成
后,greet2结束,从栈顶弹走; 接着执行greet函数。

3.2 假设你编写了一个递归函数，但不小心导致它没完没了地运行。正如你看到的，对于 每次函数调用，计算机都将为其在栈中分配内存。递归函数没完没了地运行时，将给
栈带来什么影响？
栈溢出(栈无休止扩大,栈空间有限,最终会因为栈溢出而终止)





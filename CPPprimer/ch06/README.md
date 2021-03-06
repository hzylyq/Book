函数是一个命了名的代码块，调用函数执行相应的代码
函数的调用完成了两项工作：一是实参初始化函数对应的实参，二是将控制权转移给被调用函数，此时，主调函数的执行暂时中断，被掉函数开始执行。

- 形参和实参的区别是什么
形参出现在函数定义的地方，形参列表可以是0个，1个或多个形参，多个形参之间以逗号分隔。形参规定了一个函数所接受数据的类型和数量
实参出现在函数调用的地方，实参的数量和形参是一样多的。实参的主要作用是初始化形参，并且这种初始化过程是一一对应的，即一个实参初始化第一个形参，第二个实参对应第二个形参，以此类推。实参的类型必须与对应的形参类型匹配。

名字的作用域是程序文本的一部分，名字在其中可见。
对象的生命周期是程序执行过程中该对象存在的一段时间。
在所有函数体之外定义的对象存在于程序的整个执行过程中。此类对象在程序启动时被创建，知道程序呢结束时才销毁。局部变量的生命周期依赖于定义的方式。

- 说明形参、局部变量以及局部静态变量的区别。
形参和定义在函数体内部的变量统称为局部变量，它们对函数而言是局部的，仅在函数的作用域内可见。函数体内部局部变量又分为普通局部变量和静态局部变量，对于形参和普通局部变量来说，当函数的控制路径经过变量定义语句时创建该对象，当到达定义所在的快末尾时销毁它。我们把存在于块执行期间的对象称为自动对象。这几个概念的区别是：
	- 形参是一种自动对象，函数开始时为形参申请内存空间，我们用调用函数时提供的实参初始化形参对应的自动对象。
	- 普通变量对应的自动对象也容易理解，我们在定义该变量的语句处创建自动对象，如果定义语句提供了初始值，则用该值初始化；否则，执行默认初始化。当该变量所在的块结束后，变量失效。
	- 局部静态变量比较特殊，它的生命周期贯穿函数调用及之后的时间。局部变量对应的对象称为局部静态对象，它的生命周期从定义语句处开始，直达程序结束才终止。

自动对象：对于普通局部变量对应的对象来说，当函数的控制路径经过变量定义语句是创建该对象，当到达定义所在的块的末尾时销毁它，块中创建的自动对象的值就变成未定义的了。

- 引用形参什么时候应该是常量引用？如果形参是常量引用，而我们将其设定为了普通引用，会发生什么情况？
	- 当函数对参数所做的操作不同时，应该选择适当的参数类型。如果需要修改参数的内容，则将其设置为普通引用类型；否则，如果不需要对参数内容做任何更改。最好设为常量引用类型，如果把一个本来应该是常量引用的形参设成了普通引用类型，有可能遇到几个问题
	- 容易给使用者一种误导，即程序允许修改实参的内容
	- 限制了该函数所能接受的实参类型，无法把const对象，字面值常量或者需要类型转换的对象传递给普通的引用形参.

这段代码有什么问题？

```
void print(const int ia[10])
{
    for (size_t i = 0; i != 10; i++)
        cout << ia[i] << endl;
}
```

上述print函数存在一个潜在风险，即虽然我们期望传入的数组维度是10，但实际上任意维度的数组都可以传入。如果传入的数组维度较大，print函数输出数组的前10个元素，，不至于引发错误；相反如果传入的数组维度不足10，则print函数将强行输出一些未定义的值。修改后的程序是：

```
void print(const int ia[], const int sz)
{
	for (size_t i = 0; i != sz; i++)
		cout << ia[i] << endl;
}
```

什么情况下的引用无效？什么情况下返回常量的引用无效？

- 如果应用所引的是函数开始之前就已经存在的对象，则返回该类型是有效的；如果引用返回的是函数的局部变量，则随着函数结束局部变量也失效了，此时返回的引用无效。
- 当不希望返回的对象被修改时，返回对常量的引用。



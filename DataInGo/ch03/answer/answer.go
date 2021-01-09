package answer

import (
	"fmt"

	"book/DataInGo/ch03/answer/linklist"
)

// 3.1 打印一个单链表的所有元素
func PrintList(l linklist.List) {
	if l == nil {
		return
	}

	for l.Next != nil {
		l = l.Next
		fmt.Printf("val is %d\n", l.Val)
	}
}

// 3.2 PrintLots
// 算法复杂度O(min(M,N))
func PrintLots(p, l linklist.List) {
	index := 1 // 从第一个元素打印
	for p.Next != nil && l.Next != nil {
		if l.Next.Val == index {
			fmt.Printf("%d val is %d\n", index, p.Next.Val)
		}

		index++
		p.Next = p.Next.Next
		l.Next = l.Next.Next
	}
}

// 3.3 单链表交换节点
func SwapNode(l linklist.List, p1, p2 *linklist.Node) {
	if p1.Next != p2 {
		fmt.Println("节点不相连")
		return
	}

	p0 := linklist.FindPrevious(p1.Val, l)

	p1.Next = p2.Next
	p2.Next = p1
	p0.Next = p2
}

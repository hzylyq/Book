package answer

import "fmt"

type Node struct {
	Val  int
	Next *Node // 后置节点
}

type List = *Node

func MakeEmpty() List {
	var l List
	l = new(Node)
	return l
}

// return true if l is empty
func IsEmpty(l List) bool {
	return l.Next == nil
}

// return true if P is the last position in list L
func IsLast(p *Node) bool {
	return p.Next == nil
}

// return the position of X in L
func Find(x int, l List) *Node {
	p := l.Next

	for p != nil && p.Val != x {
		p = p.Next
	}
	return p
}

func FindPrevious(x int, l List) *Node {
	if l == nil {
		return nil
	}

	p := new(Node)
	p.Val = l.Val
	p.Next = l.Next
	for p.Next != nil && p.Next.Val != x {
		p = p.Next
	}

	return p
}

// delete first occurrence of x from a list
func Delete(x int, l List) {
	p := FindPrevious(x, l)
	if p.Next != nil {
		temp := p.Next
		p.Next = temp.Next
	}
}

func insert(x int, l List) {
	temp := new(Node)

	temp.Val = x
	temp.Next = l.Next
	l.Next = temp
}

// 3.1 打印一个单链表的所有元素
func PrintList(l List) {
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
func PrintLots(p, l List) {
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

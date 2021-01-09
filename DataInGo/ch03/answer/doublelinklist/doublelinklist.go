package doublelinklist

import "book/DataInGo/ch03/answer/linklist"

type element struct {
	Val  int
	Next *element
	Prev *element
}

type DoubleList = *element

func New() DoubleList {
	var l DoubleList
	l = new(element)
	return l
}

// return true if l is empty
func IsEmpty(l linklist.List) bool {
	return l.Next == nil
}

// return true if P is the last position in list L
func IsLast(p *linklist.Node) bool {
	return p.Next == nil
}

// return the position of X in L
func Find(x int, l linklist.List) *linklist.Node {
	p := l.Next

	for p != nil && p.Val != x {
		p = p.Next
	}
	return p
}

func FindPrevious(x int, l linklist.List) *linklist.Node {
	if l == nil {
		return nil
	}

	p := new(linklist.Node)
	p.Val = l.Val
	p.Next = l.Next
	for p.Next != nil && p.Next.Val != x {
		p = p.Next
	}

	return p
}

// delete first occurrence of x from a list
func Delete(x int, l linklist.List) {
	p := FindPrevious(x, l)
	if p.Next != nil {
		temp := p.Next
		p.Next = temp.Next
	}
}

func insert(x int, l linklist.List) {
	temp := new(linklist.Node)

	temp.Val = x
	temp.Next = l.Next
	l.Next = temp
}

package linklist

import "testing"

func TestMakeEmpty(t *testing.T) {
	l := MakeEmpty()

	var p Position
	p = new(Node)
	p.Val = 10

	l.Next = p

	insert(10, l, p)

	Delete(10, l)
}

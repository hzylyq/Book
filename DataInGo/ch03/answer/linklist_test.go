package answer

import (
	"testing"
)

func TestPrintList(t *testing.T) {
	l := MakeEmpty()

	p := new(Node)
	p.Val = 10

	l.Next = p

	insert(10, l)

	PrintList(l)
}

func TestPrintLots(t *testing.T) {
	p := MakeEmpty()
	l := MakeEmpty()

	insert(7, l)
	insert(5, l)
	insert(3, l)
	insert(1, l)

	insert(3, p)
	insert(2, p)
	insert(1, p)
	PrintLots(l, p)
}

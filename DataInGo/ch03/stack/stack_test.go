package stack

import "testing"

func TestCreateStack(t *testing.T) {
	s := CreateStack()

	Push(10, s)
	Push(11, s)

	Pop(s)

	t.Log(s)
}

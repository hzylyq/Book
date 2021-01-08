package stack

type Node struct {
	Val  int
	Next *Node
}

type Stack = *Node

func IsEmpty(s Stack) bool {
	return s.Next == nil
}

func CreateStack() Stack {
	var s Stack
	s = new(Node)

	MakeEmpty(s)
	return s
}

func MakeEmpty(s Stack) {
	if s == nil {
		panic("must create stack first")
	}

	for !IsEmpty(s) {
		Pop(s)
	}
}

func Pop(s Stack) {
	if IsEmpty(s) {
		return
	}

	s.Next = s.Next.Next
}

func Push(x int, S Stack) {
	temp := new(Node)
	temp.Val = x
	temp.Next = S.Next
	S.Next = temp
}

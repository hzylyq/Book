package ch01

import "testing"

func TestBinarySearch(t *testing.T) {
	list := []int{1, 3, 5, 7, 9, 10}
	t.Log(BinarySearch(list, 3))
	t.Log(BinarySearch(list, -1))
}

package ch05

import (
	"fmt"
	"testing"
)

func TestBook(t *testing.T) {
	Book()
	fmt.Println(book)
}

func TestCheckVoter(t *testing.T) {
	voted = make(map[string]bool)
	CheckVoter("tom")
	CheckVoter("mike")
	CheckVoter("mike")
}

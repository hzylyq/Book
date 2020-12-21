package ch02

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSelectSort(t *testing.T) {
	a := []int{2, 4, 5, 3, 1}

	b := SelectSort(a)

	assert.Equal(t, b, []int{1, 2, 3, 4, 5})
}

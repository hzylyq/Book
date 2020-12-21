package ch04

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestQuickSort(t *testing.T) {
	assert.Equal(t, QuickSort([]int{10, 1, 2, 3, 43, 4, 2, 9, 10}),
		[]int{1, 2, 2, 3, 4, 9, 10, 10, 43})
}

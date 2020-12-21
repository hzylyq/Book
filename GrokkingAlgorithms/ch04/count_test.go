package ch04

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestCount(t *testing.T) {
	assert.Equal(t, 5, Count([]int{0, 0, 0, 0, 0}))
}

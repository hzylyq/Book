package ch04

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestMax(t *testing.T) {
	assert.Equal(t, 10, Max([]int{10, 0, 10, 1, 2, 3, 5}))
}

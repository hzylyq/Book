package ch03

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestFact(t *testing.T) {
	assert.Equal(t, Fact(5), 120)
}

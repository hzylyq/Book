package ch03

import (
	"fmt"
)

func CountDown(n int) {
	fmt.Println(n)

	if n == 0 {
		return
	}

	CountDown(n - 1)
}

package ch03

func Fact(x int) int {
	if x == 0 {
		return 1
	}

	return x * Fact(x-1)
}
